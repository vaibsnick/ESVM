package in.cdac.DB;

import java.sql.*;
import in.cdac.utils.ConfigureDB;

public class SimpleJDBC {

    String serverIp = null;
    String dbName = null;
    String username = null;
    String password = null;
	String driver = null;
    ConfigureDB config;

    public SimpleJDBC() {      
        //config = new ConfigureDB();
        //config.loadConfigurations();
        //serverIp = config.getIPAddress();
        //dbName = config.getDatabase();
        //username = config.getUsername();
        //password = config.getPassword();

        serverIp = "localhost";
        dbName = "reservation";
        username = "root";
        password = "";		
    }

    public String validateUser(String email, String pwd1) {
        try {
            Connection con = getDBConnection();
            String query = "select pwd from userdetails where emailID='" + email + "'";
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(query);
            String password = null;
            while (rs.next()) {
                password = rs.getString("pwd");
            }
            if ((password!=null) && (password.equals(pwd1))) {
                return "valid";
            } 
            rs.close();
            st.close();
            con.close();
        } catch (SQLException se) {
            se.printStackTrace();
        } catch (Exception se) {
            se.printStackTrace();
        }
        return "Invalid";
    }

    public int insertData(String emailID, String uname, String pwd, String mob, int age, String addrs) {
        PreparedStatement pst;
        int rowsEffected = 0;
        try {
            Connection con = getDBConnection();
            String query = "insert into userdetails values(?,?,?,?,?,?)";
            pst = con.prepareStatement(query);

            pst.setString(1, emailID);
            pst.setString(2, uname);
            pst.setString(3, pwd);
            pst.setString(4, mob);
            pst.setInt(5, age);
            pst.setString(6, addrs);

            rowsEffected = pst.executeUpdate();
            System.out.println("Data inserted .. row status" + rowsEffected);

            pst.close();
            con.close();

        } catch (SQLException se) {
            se.printStackTrace();
        } catch (Exception se) {
            se.printStackTrace();
        }

        return rowsEffected;
    }

    public void updateData(String emailID, String mob) {
        PreparedStatement pst;
        Connection con = null;
        try {
            con = getDBConnection();
            con.setAutoCommit(false);
            String query = "update userdetails set mobile=? where emailID=?";
            pst = con.prepareStatement(query);

            pst.setString(1, mob);
            pst.setString(2, emailID);

            int rowsEffected = pst.executeUpdate();
            System.out.println("Data updated .. row status" + rowsEffected);

            con.commit();

            pst.close();    
            con.close();

        } catch (Exception se) {
            try {
                con.rollback();
            } catch (SQLException seq) {
            }
            se.printStackTrace();
        }
    }

    public ResultSet RetreiveData()throws Exception{		
			
		Connection con = getDBConnection();		
		String query = "select * from userdetails";
		Statement st = con.createStatement();
		
		ResultSet rs = st.executeQuery(query);
		/*while(rs.next()){
			System.out.print(rs.getString("emailID"));
			System.out.print(rs.getString("username"));
			System.out.print(rs.getString("password"));
			System.out.print(rs.getString("mobile"));
			System.out.print(rs.getInt("age"));
			System.out.print(rs.getString("address"));
			System.out.println();
		}
		*/
		
				
			return rs;
	}
    
    public void batchUpdate(String emailID, String uname, String pwd) {
        PreparedStatement pst;
        Connection con = null;
        try {
            con = getDBConnection();
            con.setAutoCommit(false);
            System.out.println("************* Batch 1 *************");
            String query2 = "insert into userdetails values(?,?,?)";
            pst = con.prepareStatement(query2);

            pst.setString(1, emailID);
            pst.setString(2, uname);
            pst.setString(3, pwd);
            pst.addBatch();

            System.out.println("************* Batch 2 *************");
            String query1 = "update userdetails set password=? where emailID=?";
            pst = con.prepareStatement(query1);
            pst.setString(1, pwd);
            pst.setString(2, emailID);
            pst.addBatch();

            System.out.println("************* Batch 3 *************");
            String query3 = "delete from userdetails where emailID=?";
            pst = con.prepareStatement(query3);
            pst.setString(1, emailID);
            pst.addBatch();

            int[] rowsEffected = pst.executeBatch();
            System.out.println("Data updated .. row status" + rowsEffected);

            con.commit();

            pst.close();
            con.close();

        } catch (Exception se) {
            try {
                con.rollback();
            } catch (SQLException seq) {
            }

            se.printStackTrace();
        }
    }

    public Connection getDBConnection() {
        String url = "jdbc:mysql://" + serverIp + "/" + dbName;
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, username, password);
        } catch (SQLException se) {
            se.printStackTrace();
        } catch (Exception se) {
            se.printStackTrace();
        }
        return con;
    }

//	public static void main(String a[]){			
//		SimpleJDBC simple = new SimpleJDBC();
//		simple.RetreiveData();
//		simple.insertData("kumar@cdacf.in","uday", "1234", "344654545",30,"hyd");
//		simple.RetreiveData();
//		simple.updateData("abc@cdac.in","111111111");
//		simple.batchUpdate("1eeeee@cdac.in","1eeeee","10000001");
//	}
}

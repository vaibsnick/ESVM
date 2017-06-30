package in.cdac.utils;
import java.util.Properties;
import java.io.*;

public class ConfigureDB{
	Properties prop;
	InputStream input;
	
	String serverIp = null;
	String dbName = null;
	String username = null;
	String password = null;
	
	public void loadConfigurations(){
		prop = new Properties();
		try{
		
			input = new FileInputStream("config.properties");
			prop.load(input);
			serverIp = prop.getProperty("ipaddress");
			dbName = prop.getProperty("database");
			username = prop.getProperty("user");
			password = prop.getProperty("password");			
		}catch(FileNotFoundException fno){
			fno.printStackTrace();
		}catch(IOException ioe){
			ioe.printStackTrace();
		}
	}
	
	public String getIPAddress(){
		return serverIp;
	}
	
	public String getDatabase(){
		return dbName;
	}
	public String getUsername(){
		return username;
	}
	public String getPassword(){
		return password;
	}
}
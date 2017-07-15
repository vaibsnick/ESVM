
 
import java.io.File;
import java.io.FileInputStream;
import org.hibernate.*;  
import org.hibernate.cfg.*;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Vaibs
 */
public class Insert {
    /*
    public static void main(String[] args) {
        File f=new File("E:\\F drive\\picc\\[000609]_1.jpg");
        byte[] bFile = new byte[(int) f.length()];
        Session session=new AnnotationConfiguration().configure().buildSessionFactory().openSession();
        Transaction t=session.beginTransaction();
         try {
                FileInputStream fileInputStream = new FileInputStream(f);
	     //convert file into array of bytes
                fileInputStream.read(bFile);
                fileInputStream.close();
        } catch (Exception e) {
	     e.printStackTrace();
        }
       
        Pojo p=new Pojo();
        p.setId(1);
       // p.setCer_name("hahaha");
       // p.setMark_name("hiihihi");
       // p.setCertificate(bFile);
        p.setMarks(bFile);
        session.save(p);
        t.commit();
    }
    */
}

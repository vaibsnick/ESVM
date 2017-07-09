package Ankem;

import java.util.Iterator;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

public class Control {
    

    public Session connect()
    {
        AnnotationConfiguration con = new AnnotationConfiguration().configure();
        SessionFactory sf = con.buildSessionFactory();
        Session s = sf.openSession();
        
        return s ;
        
    }
    
//SERVLET 1//
    public boolean insertData(String name,int roll,int age,long mobile,String email,String user,String pass)
    {
        Session s = connect();
        Transaction t = s.beginTransaction();
        
        ram r = new ram();
        
        r.setRoll(roll);
        r.setName(name);
        r.setAge(age);
        r.setMobile(mobile);
        r.setEmail(email);
        r.setUser(user);
        r.setPass(pass);
        
        s.save(r);
        System.out.println("Data Inserted !");
        
        t.commit();
        s.close();
        
        return true;
        
    }
    

//SERVLET 2//
    public boolean RetreiveLog(String user,String pass)
    {
        Session s = connect();
        Transaction t = s.beginTransaction();
        
        ram r = new ram();
        String uname = null;
        String upass = null ;
        
        Query q = s.createQuery("from ram");
        List l = q.list();
        for(Iterator i = l.iterator() ; i.hasNext();)
        {
            r = (ram)i.next();
                uname = r.getUser();
                upass = r.getPass();
        }

        t.commit();
        s.close();
        if (uname.equals(user) && upass.equals(pass))
            {
                return true;
            }
        else
               return false;
    }
    

//WELCOME.JSP//
    public ram RetreiveData(String user)
    {
        Session s = connect();
        Transaction t = s.beginTransaction();
        
        ram r = new ram();
        
        Query q = s.createQuery("from ram");
        List l = q.list();
        for(Iterator i = l.iterator() ; i.hasNext();)
        {
            r = (ram)i.next();
            
            r.setName(r.getName());
            r.setRoll(r.getRoll());
            r.setAge(r.getAge());
            r.setMobile(r.getMobile());
            r.setEmail(r.getEmail());
        }
        
        t.commit();
        s.close();
        
        return r;
    }
    

//SERVLET 3//
    public boolean RetreivePas(int roll,String mail,String pass)
    {
        Session s = connect();
        Transaction t = s.beginTransaction();
        
        ram r = new ram();
        String umai=null; int uroll= 0;
        
        Query q = s.createQuery("from ram as r where r.roll='"+roll+"' and r.email='"+mail+"'");
        List l = q.list();
        for(Iterator i = l.iterator() ; i.hasNext();)
        {
            r = (ram)i.next();
            uroll = r.getRoll();
            umai = r.getEmail();
        }
        if (uroll==roll && umai.equals(mail))
        {
           ram p = (ram)s.get(ram.class , roll );
           p.setPass(pass);
           s.update(p);
           s.save(p);
        
           System.out.println("Password updated");
        }
        
        t.commit();
        s.close();
        
        return true;
    }
    
    
//SERVLET 4//
    public boolean updateData(String name,int roll,int age,long mobile,String email)
    {
        Session s = connect();
        Transaction t = s.beginTransaction();
        
        ram r = (ram)s.get(ram.class , roll );
        
        r.setRoll(roll);
        r.setName(name);
        r.setAge(age);
        r.setMobile(mobile);
        r.setEmail(email);
        
        s.update(r);
        s.save(r);
        System.out.println("Data Updated !");
        
        t.commit();
        s.close();
        
        return true;
    }
    

//SERVLET 5//
    public boolean RetreiveDel(int roll,String pass)
    {
        Session s = connect();
        Transaction t = s.beginTransaction();
        
        ram r = new ram();
        String upass=null; int uroll= 0;
        
        Query q = s.createQuery("from ram as r where r.roll='"+roll+"' and r.pass='"+pass+"'");
        List l = q.list();
        for(Iterator i = l.iterator() ; i.hasNext();)
        {
            r = (ram)i.next();
                uroll = r.getRoll();
                upass = r.getPass();
        }
        if (uroll==roll && upass.equals(pass))
        {
           r.setRoll(roll);
           s.delete(r);
           t.commit();
           s.close();
           return true;
        }
        else    
            return false;
    }
    
}
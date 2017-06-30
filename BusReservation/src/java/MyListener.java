
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Web application lifecycle listener.
 *
 * @author cdac
 */
public class MyListener implements HttpSessionListener {
    ServletContext ctx = null;
    static int liveUsers = 0;
    @Override
    public void sessionCreated(HttpSessionEvent hse) {
        
        ctx = hse.getSession().getServletContext();
        if(ctx.getAttribute("liveUsers") == null){
            ctx.setAttribute("liveUsers", 1);
        }else{
            liveUsers = (int) ctx.getAttribute("liveUsers");
            liveUsers++;
            ctx.setAttribute("liveUsers", liveUsers);
        }
        System.out.println("Here is the live users Count "+ctx.getAttribute("liveUsers"));
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent hse) {
            ctx = hse.getSession().getServletContext();
            liveUsers--;
            ctx.setAttribute("liveUsers", liveUsers);
    }
}

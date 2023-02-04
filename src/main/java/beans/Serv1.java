package beans;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Serv1 extends HttpServlet{
	
	public void doPost(HttpServletRequest req, HttpServletResponse res){
		HttpSession session=req.getSession();
		SerVariable serVariable=new SerVariable();
		MakeConnection makeConnection = new MakeConnection();
		int flag=0,flag2=0,count=0;
		makeConnection.connectionMethod();
		serVariable.setId((req.getParameter("UserId")));
		serVariable.setLoginpassword((req.getParameter("lPassword")));

		ResultSet resultSet= makeConnection.resultData(serVariable.getId(),"select * from studentlogin where userId=?");
		try {
			if(resultSet.next())
			{
				String dbUserid=resultSet.getString("UserId");
				String dbPass=resultSet.getString("Password");
				
				if(serVariable.getId().equalsIgnoreCase(dbUserid))
					flag=1;
				if(serVariable.getLoginpassword().equals(dbPass))
					flag2=1;
				
				if(flag==1 && flag2==1) {
					String loginSession=serVariable.getId();
					session.setAttribute("loginSession", loginSession);
					
					res.sendRedirect("http://localhost:8080/Classidor/pages/login2.jsp");				
				}else {
					try {
					res.sendRedirect(req.getHeader("Referer"));
					} catch (IOException e) {
						e.printStackTrace();
					}
				}
			}else {
				 try {
						res.sendRedirect(req.getHeader("Referer"));
					} catch (IOException e) {
						e.printStackTrace();
					}
			}
			 

		}catch(Exception e) {
			e.printStackTrace();
			}
		}
}



package beans;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ServLeave extends HttpServlet{
	
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException{
		SerVariable serVariable=new SerVariable();
		MakeConnection makeConnection = new MakeConnection();
		HttpSession session=req.getSession();
		Connection connection=makeConnection.connectionMethod();
		PreparedStatement preparedStatement = null;
		int flag=0,flag2=0,i = 0,count=0;
		makeConnection.connectionMethod();
		serVariable.setFromdate((req.getParameter("fromdate")));
		serVariable.setTodate((req.getParameter("todate")));
		serVariable.setReason((req.getParameter("reason")));
		if(serVariable.getFromdate()==null) {
			ResultSet resultSet= makeConnection.resultData(serVariable.getId(),"SELECT COUNT(?) AS NumberOfProducts FROM studentleave");
			 try {
				while (resultSet.next())
				        count++;
			} catch (SQLException e) {
				e.printStackTrace();
			} 
			 session.setAttribute("leaveTaken", count);
			res.sendRedirect("http://localhost:8080/Classidor/pages/leave.jsp");
		}
		else {
			try {
				preparedStatement = connection.prepareStatement("insert into studentleave(roll,fromdate,todate,reason) values(?,?,?,?)");
				preparedStatement.setString(1, (String) session.getAttribute("loginSession"));
				preparedStatement.setString(2, serVariable.getFromdate());
				preparedStatement.setString(3, serVariable.getTodate());
				preparedStatement.setString(4, serVariable.getReason());
				 i=preparedStatement.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			if(i==1) {
				System.out.println("in i==1 servLeave");
				ResultSet resultSet= makeConnection.resultData(serVariable.getId(),"SELECT COUNT(?) AS NumberOfProducts FROM studentleave");
				 try {
					while (resultSet.next())
					        count++;
				} catch (SQLException e) {
					e.printStackTrace();
				} 
				 session.setAttribute("leaveTaken", count);
				session.setAttribute("leaveStatus", true);
				res.sendRedirect("http://localhost:8080/Classidor/pages/login2.jsp");
			}
			else
				session.setAttribute("leaveStatus", false);
		}
	}

}
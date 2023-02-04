package beans;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutServlet extends HttpServlet{

	public void doGet(HttpServletRequest req, HttpServletResponse res)
	{
		HttpSession session=req.getSession(); //hi
		session.invalidate();
		try {
			res.sendRedirect("http://localhost:8080/Classidor/pages/login.jsp");
		} catch (IOException e) {
			e.printStackTrace();
		}

	}
	
}

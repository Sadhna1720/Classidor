package beans;
import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServNotice extends HttpServlet{
	
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException
	{
		res.sendRedirect("http://localhost:8080/Classidor/pages/notice.jsp");
	}

}

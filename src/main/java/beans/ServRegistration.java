package beans;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ServRegistration extends HttpServlet {
	SerVariable serVariable = new SerVariable();
	HttpSession session;
	MakeConnection makeConnection = new MakeConnection();
	Connection connection = makeConnection.connectionMethod();
	PreparedStatement preparedStatement = null;

	protected void doPost(HttpServletRequest req, HttpServletResponse res) {
		session = req.getSession();

		serVariable.setSubject1(req.getParameter("sub1"));
		serVariable.setSubject2(req.getParameter("sub2"));
		serVariable.setSubject3(req.getParameter("sub3"));
		serVariable.setSubject4(req.getParameter("sub4"));
		serVariable.setSubject5(req.getParameter("sub5"));
		serVariable.setSubject6(req.getParameter("sub6"));
		serVariable.setPractical1(req.getParameter("pract1"));
		serVariable.setPractical2(req.getParameter("pract2"));
		serVariable.setPractical3(req.getParameter("pract3"));
		serVariable.setPractical4(req.getParameter("pract4"));
		serVariable.setPassword(req.getParameter("password"));
		serVariable.setrPassword(req.getParameter("cpassword"));

		if (serVariable.getPassword().equals(serVariable.getrPassword())) {
			try {
				preparedStatement = connection.prepareStatement(
						"insert into registration(roll,subject1,subject2,subject3,subject4,subject5,subject6,practical1,practical2,practical3,practical4) values(?,?,?,?,?,?,?,?,?,?,?)");
				preparedStatement.setString(1, (String) session.getAttribute("loginSession"));
				preparedStatement.setString(2, serVariable.getSubject1());
				preparedStatement.setString(3, serVariable.getSubject2());
				preparedStatement.setString(4, serVariable.getSubject3());
				preparedStatement.setString(5, serVariable.getSubject4());
				preparedStatement.setString(6, serVariable.getSubject5());
				preparedStatement.setString(7, serVariable.getSubject6());
				preparedStatement.setString(8, serVariable.getPractical1());
				preparedStatement.setString(9, serVariable.getPractical2());
				preparedStatement.setString(10, serVariable.getPractical3());
				preparedStatement.setString(11, serVariable.getPractical4());

				int i = preparedStatement.executeUpdate();
				if (i == 1) {

					try {
						res.sendRedirect("http://localhost:8080/Classidor/pages/login2.jsp");
					} catch (IOException e) {
						e.printStackTrace();
					}
				}
			} catch (Exception e) {
			}
		}
	}

	protected void doGet(HttpServletRequest req, HttpServletResponse res) {
		session = req.getSession();
		ResultSet resultSet = makeConnection.resultData((String) session.getAttribute("loginSession"),
				"select * from registration where roll=?");

		try {
			if (resultSet.next()) {
				session.setAttribute("msg", "You already registered!!");
				res.sendRedirect("http://localhost:8080/Classidor/pages/admitCard2.jsp");
			}else
				res.sendRedirect("http://localhost:8080/Classidor/pages/registration.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

package beans;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.Connection;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ServUserDetails extends HttpServlet{

	protected void doGet(HttpServletRequest req, HttpServletResponse res){
		MakeConnection makeConnection =new MakeConnection();
		HttpSession session=req.getSession();
		SerVariable serVariable=new SerVariable();
		makeConnection.connectionMethod();
		ResultSet resultSet=makeConnection.resultData((String)session.getAttribute("loginSession"),"select * from studentdetails where roll=?");
		try {
			try {
				if (resultSet.next()) {
					System.out.println("in while");
					String fname= resultSet.getString(2);
					String lname=resultSet.getString(3);
					String branch= resultSet.getString(6);
					String contact=resultSet.getString(14);
					String email= resultSet.getString(5);
					String fatherName= resultSet.getString(8);
					String motherName= resultSet.getString(9);
					String address= resultSet.getString(10);
					String dob= resultSet.getString(12);
					String year= resultSet.getString(13);
					String aadhar=resultSet.getString(17);
					
					serVariable.setFname(fname);
					serVariable.setLname(lname);
					serVariable.setBranch(branch);
					serVariable.setContact(contact);
					serVariable.setEmail(email);
					serVariable.setMotherName(motherName);
					serVariable.setFatherName(fatherName);
					serVariable.setAadhar(aadhar);
					serVariable.setYear(year);
					serVariable.setState(address);
					serVariable.setDob(dob);
					
					session.setAttribute("fname", fname);
					session.setAttribute("lname", lname);
					session.setAttribute("branch", branch);
					session.setAttribute("contact", contact);
					session.setAttribute("email", email);
					session.setAttribute("fatherName", fatherName);
					session.setAttribute("motherName", motherName);
					session.setAttribute("address", address);
					session.setAttribute("dob", dob);
					session.setAttribute("year", year);
					session.setAttribute("aadhar", aadhar);
				}

				}catch(Exception e) {
					e.printStackTrace();
				}
				res.sendRedirect("http://localhost:8080/Classidor/pages/userDetails.jsp");
			} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
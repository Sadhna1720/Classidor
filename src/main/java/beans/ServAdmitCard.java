package beans;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ServAdmitCard extends HttpServlet{
	
	SerVariable serVariable=new SerVariable();
	HttpSession session;
	MakeConnection makeConnection = new MakeConnection();
	Connection connection = makeConnection.connectionMethod();
	PreparedStatement preparedStatement = null;
		
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException
	{
		session=req.getSession();
		ResultSet resultSet = makeConnection.resultData((String) session.getAttribute("loginSession"),"select * from registration where roll=?");
		try {
			if (resultSet.next()) {
				res.sendRedirect("http://localhost:8080/Classidor/pages/admitCard.jsp");
			}else {
				session.setAttribute("msg", "You are not registered\n firstly resiter!!");
				res.sendRedirect("http://localhost:8080/Classidor/pages/admitCard2.jsp");
			}
		} catch (Exception e) {
			System.out.println("in admitcard/get/catch");
			e.printStackTrace();
		}
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException{
	
		session=req.getSession();
		String desloc = "C://Users//Dell//Desktop//";
		String fileName = "Admit_Card_";

		ResultSet resultSet=makeConnection.resultData((String)session.getAttribute("loginSession"),"select * from registration where roll=?");
		
		try {
			if (resultSet.next()) 
			{
				serVariable.setSubject1(resultSet.getString(3));
				serVariable.setSubject2(resultSet.getString(4));
				serVariable.setSubject3(resultSet.getString(5));
				serVariable.setSubject4(resultSet.getString(6));
				serVariable.setSubject5(resultSet.getString(7));
				serVariable.setSubject6(resultSet.getString(8));
				
				serVariable.setPractical1(resultSet.getString(9));
				serVariable.setPractical2(resultSet.getString(10));
				serVariable.setPractical3(resultSet.getString(11));
				serVariable.setPractical4(resultSet.getString(12));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		resultSet=makeConnection.resultData((String)session.getAttribute("loginSession"),"select * from studentdetails where roll=?");

		try {
			if(resultSet.next())
			{
				serVariable.setFname(resultSet.getString(1));
				serVariable.setLname(resultSet.getString(2));
				serVariable.setEmail(resultSet.getString(3));
				serVariable.setBranch(resultSet.getString(6));
				serVariable.setCourse(resultSet.getString(7));
				serVariable.setFatherName(resultSet.getString(8));
				serVariable.setMotherName(resultSet.getString(9));
				serVariable.setState(resultSet.getString(10));
				serVariable.setDob(resultSet.getString(12));
				serVariable.setYear(resultSet.getString(13));
				serVariable.setContact(resultSet.getString(14));
				serVariable.setGender(resultSet.getString(16));
				serVariable.setAadhar(resultSet.getString(17));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		File file=new File(desloc + fileName+(String) session.getAttribute("loginSession")+".pdf");
		
		if(file.exists()) {
			System.out.println("\n            _Admit Card Already In Your System");
		}else {
			
			FileWriter fileWriter=new FileWriter(file);

				fileWriter.write("______________________________________________________________\n|");
				fileWriter.write("\n|			_ADMIT_CARD_");
				fileWriter.write("\n|                   ------------------");
		
				fileWriter.write("\n|");
				fileWriter.write("\n|  _Persnal Details_");
				fileWriter.write("\n|  ------------------");
				fileWriter.write("\n|");
		
				fileWriter.write("\n|    - First Name 		  : "+serVariable.getFname());
				fileWriter.write("\n|    - Last Name  		  : "+serVariable.getLname());
				fileWriter.write("\n|    - Roll Number 		  : "+(String) session.getAttribute("loginSession"));
				fileWriter.write("\n|    - Year       		  : "+serVariable.getYear());
				fileWriter.write("\n|    - Branch                     : "+serVariable.getBranch());
			
				fileWriter.write("\n|");
				fileWriter.write("\n|   ---------------------------------------------");
		
				fileWriter.write("\n|");
				fileWriter.write("\n|  _Examination Details_");
				fileWriter.write("\n|  -----------------------");
				fileWriter.write("\n|");
		
				fileWriter.write("\n|    - Subject 1 		  : "+serVariable.getSubject1());		
				fileWriter.write("\n|    - Subject 2 		  : "+serVariable.getSubject2());		
				fileWriter.write("\n|    - Subject 3 		  : "+serVariable.getSubject3());		
				fileWriter.write("\n|    - Subject 4  		  : "+serVariable.getSubject4());		
				fileWriter.write("\n|    - Subject 5  		  : "+serVariable.getSubject5());		
				fileWriter.write("\n|    - Subject 6  		  : "+serVariable.getSubject6());		
				fileWriter.write("\n|");
				
				fileWriter.write("\n|    - Practical 1                : "+serVariable.getPractical1());		
				fileWriter.write("\n|    - Practical 2                : "+serVariable.getPractical2());
				fileWriter.write("\n|    - Practical 3                : "+serVariable.getPractical3());
				fileWriter.write("\n|    - Practical 4                : "+serVariable.getPractical4());
		   
				fileWriter.write("\n|______________________________________________________________");
				fileWriter.close();
		}
		
	}

}

package beans;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Serv2Create extends HttpServlet {

	
	protected void doGet(HttpServletRequest req, HttpServletResponse res) {
		HttpSession session=req.getSession();

		List<String> branch=new ArrayList<String>();
		branch.add("Computer Science & Engineering");
		branch.add("Chemical Engineering");
		branch.add("Mechanical Engineering");
		branch.add("Civil Engineering");
		branch.add("Electrical Engineering");
		branch.add("Electronics & Communication Engineering");
		branch.add("BioChemical Engineering");
		
		Collections.sort(branch);
		
		session.setAttribute("branch", branch);
		
		List<String> course=new ArrayList<String>();
		course.add("B.tech");
		course.add("M.tech");
		course.add("MCA");
		course.add("Phd");
	
		Collections.sort(course);
		
		session.setAttribute("course", course);
		

		List<String> year=new ArrayList<String>();
		year.add("1st");
		year.add("2nd");
		year.add("3rd");
		year.add("4th");
	
		Collections.sort(year);
		
		session.setAttribute("year", year);
		
		List<String> gender=new ArrayList<String>();
		gender.add("Male");
		gender.add("Female");
		gender.add("Other");
	
		Collections.sort(gender);
		
		session.setAttribute("gender", gender);
		
		try {
			res.sendRedirect("http://localhost:8080/Classidor/pages/createAccPage.jsp");
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) {
		
		SerVariable serVariable=new SerVariable();
		HttpSession session=req.getSession();
		MakeConnection makeConnection = new MakeConnection();
		Connection connection = makeConnection.connectionMethod();
		PreparedStatement preparedStatement = null;
		
		serVariable.setFname((req.getParameter("fname")));
		serVariable.setLname((req.getParameter("lname")));
		serVariable.setRoll((req.getParameter("roll")));
		serVariable.setEmail((req.getParameter("email")));
		serVariable.setBranch((req.getParameter("branch")));
		serVariable.setCourse((req.getParameter("course")));
		serVariable.setFatherName((req.getParameter("father")));
		serVariable.setMotherName((req.getParameter("mother")));
		serVariable.setState((req.getParameter("state")));
		serVariable.setDistrict((req.getParameter("district")));
		serVariable.setDob((req.getParameter("dob")));
		serVariable.setYear((req.getParameter("year")));
		serVariable.setContact((req.getParameter("contact")));
		serVariable.setParentContact((req.getParameter("pContact")));
		serVariable.setGender((req.getParameter("gender")));
		serVariable.setAadhar((req.getParameter("adhar")));
		serVariable.setPassword((req.getParameter("password")));
		serVariable.setrPassword((req.getParameter("cPassword")));
		
		if(serVariable.getPassword().equals(serVariable.getrPassword())){
			try {
				preparedStatement=connection.prepareStatement("insert into studentdetails(Fname,Lname,roll,email,branch,course,fatherName,motherName,state,district,dob,year,contact,parentsContact,gender,aadhar,password) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
				preparedStatement.setString(1, serVariable.getFname());
				preparedStatement.setString(2, serVariable.getLname());
				preparedStatement.setString(3, serVariable.getRoll());
				preparedStatement.setString(4, serVariable.getEmail());
				preparedStatement.setString(5, serVariable.getBranch());
				preparedStatement.setString(6, serVariable.getCourse());
				preparedStatement.setString(7, serVariable.getFatherName());
				preparedStatement.setString(8, serVariable.getMotherName());
				preparedStatement.setString(9, serVariable.getState());
				preparedStatement.setString(10, serVariable.getDistrict());
				preparedStatement.setString(11, serVariable.getDob());
				preparedStatement.setString(12, serVariable.getYear());
				preparedStatement.setString(13, serVariable.getContact());
				preparedStatement.setString(14, serVariable.getParentContact());
				preparedStatement.setString(15, serVariable.getGender());
				preparedStatement.setString(16, serVariable.getAadhar());
				preparedStatement.setString(17, serVariable.getPassword());
				int i=preparedStatement.executeUpdate();
				
				preparedStatement=connection.prepareStatement("insert into studentlogin(userId,password) values(?,?)");
				preparedStatement.setString(1, serVariable.getRoll());
				preparedStatement.setString(2, serVariable.getPassword());
				int j=preparedStatement.executeUpdate();
				
				if(i==1&&j==1)
				{					
					try {
						res.sendRedirect("http://localhost:8080/Classidor/pages/login.jsp");
					} catch (IOException e) {
						e.printStackTrace();
						} 
				}
				else
				{
					int flag1=1;
					String errorMsg1="something wrong form not submitted!!";
					session.setAttribute("errorMsg1",errorMsg1);
					session.setAttribute("flag1",flag1);
					
					 try {
							res.sendRedirect(req.getHeader("Referer"));
						} catch (IOException e) {
							e.printStackTrace();
						}
				}
				
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			
		} else{
			int flag=2;
			String errorMsg="password not matched!";
			session.setAttribute("errorMsg",errorMsg);
			session.setAttribute("flag",flag);

            try {
				res.sendRedirect(req.getHeader("Referer"));
			} catch (IOException e) {
				e.printStackTrace();
			}

		}
		
		
	}
	
}

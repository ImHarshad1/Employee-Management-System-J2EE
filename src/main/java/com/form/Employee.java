package com.form;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.EmployeeData;

@WebServlet("/save")
public class Employee extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
	res.setContentType("text/html");
		
	String id = req.getParameter("id");
	String name = req.getParameter("name");
	String email = req.getParameter("email");
	String password = req.getParameter("password");
	String gender = req.getParameter("gender");
	String city = req.getParameter("city");
	
	Connection con = EmployeeData.createDBConnection();
	
	try {
		PreparedStatement pst = con.prepareStatement("INSERT INTO employees(id, name, password, email, gender, city) VALUES(?,?,?,?,?,?)");
		pst.setString(1, id);
		pst.setString(2, name);
		pst.setString(3, password);
		pst.setString(4, email);
		pst.setString(5, gender);
		pst.setString(6, city);
		
		int i = pst.executeUpdate();
		if(i>0) {
			req.setAttribute("message", "Employee Saved Successfully");
			

		} else {
			req.setAttribute("message", "Employee Failed");
			
		}
		req.getRequestDispatcher("employee.jsp").include(req, res);
		pst.close();
		con.close();
		
	} catch (SQLException e) {
		req.setAttribute("message", "Employee Failed");
        req.setAttribute("error", e.getMessage());
        req.getRequestDispatcher("employee.jsp").forward(req, res);
        e.printStackTrace();
		}
	}
}


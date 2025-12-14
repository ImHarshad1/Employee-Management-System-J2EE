package com.form;

import java.io.IOException;
import java.security.Provider.Service;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.EmployeeData;

@WebServlet("/login")
public class Login extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		res.setContentType("text/html");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		Connection con = EmployeeData.createDBConnection();
		
		EMP e = new EMP();

		ResultSet rs = null;
		
		try {
			PreparedStatement pst = con.prepareStatement("select * from employees where email=? AND password=?");

			pst.setString(1, email);
			pst.setString(2, password);
			
			 rs = pst.executeQuery();	
			
			if(rs.next()) {	
				
				e.setId(rs.getString("id"));
				e.setName(rs.getString("name"));
				e.setEmail(rs.getString("email"));
				e.setPassword(rs.getString("password"));
				e.setGender(rs.getString("gender"));
				e.setCity(rs.getString("city"));
			
			
				req.setAttribute("employee", e);
				
				req.setAttribute("name", rs.getString("name"));
				
				req.getRequestDispatcher("displayemp.jsp").forward(req, res);
			} else {
				req.setAttribute("msg", "Invalid email or Password");
				req.getRequestDispatcher("login.jsp").include(req, res);
			}
		} catch (Exception a) {
			a.printStackTrace();
		}	
	}
}
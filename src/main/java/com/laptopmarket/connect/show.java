package com.laptopmarket.connect;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class show
 */
@WebServlet("/show")
public class show extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static Connection con;  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public show() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String n=request.getParameter("pname");
		
		con=Connections.CreateC(); 
		
		String q1="Select product_name,product_desc,product_price,total_purchased  from avaliable_to_purchase where product_name=?";
		try {
			PreparedStatement stm=con.prepareStatement(q1);
			ResultSet res;
		
			stm.setString(1, n);
			res = stm.executeQuery();
			res.next();
			request.getSession().setAttribute("result", res);
			RequestDispatcher rd = request.getRequestDispatcher("Show1.jsp");
			rd.forward(request, response);
			res.close();
			
			
		} 
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
	}

}

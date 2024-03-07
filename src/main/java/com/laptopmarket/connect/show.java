package com.laptopmarket.connect;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String n=request.getParameter("pname");
		con=Connections.CreateC(); 
		String q1="Select * from avaliable_to_purchase where product_name=?";
		try {
			PreparedStatement stm=con.prepareStatement(q1);
			ResultSet res;
			res = stm.executeQuery();
			while(res.next())
			{
				int num= res.getInt(1);
			    String name=res.getString(2);
			    String des=res.getString(3);
			    double price=res.getDouble(4);
			    int qnt=res.getInt(5);
			    System.out.println(num+" "+name+" "+des+" "+price+" "+qnt);
			    
			}
			res.close();
		} 
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}

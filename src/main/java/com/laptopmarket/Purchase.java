package com.laptopmarket;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.laptopmarket.connect.Connections;

/**
 * Servlet implementation class Purchase
 */
@WebServlet("/Purchase")
public class Purchase extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static final String sql="insert into available_to_purchase(product_name,product_desc,product_price,product_quantity) values(?,?,?,?);";
       public int quant=0;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Purchase() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String product=request.getParameter("product");
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		int price = Integer.parseInt(request.getParameter("price"));
		String description=request.getParameter("description");
		quant=quantity+quant;
		
		Connections con=new Connections();
		PrintWriter p=response.getWriter();
		p.print(product+" "+quantity+" "+price+" "+description);
		
		
		

		try {
			PreparedStatement preparedStatement = con.CreateC().prepareStatement(sql);
			preparedStatement.setString(1, product);
			preparedStatement.setString(2, description);
			preparedStatement.setLong(3, price);
			preparedStatement.setLong(4, quant);
			
			preparedStatement.executeUpdate();
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		
	}

}

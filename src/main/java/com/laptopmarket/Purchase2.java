package com.laptopmarket;



import java.io.IOException;
//import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import com.laptopmarket.connect.Connections;
 
/**
* Servlet implementation class Purchase
*/
@WebServlet("/Purchase2")
public class Purchase2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static final Connections con=new Connections();;
	static PreparedStatement stm1 = null;
	static PreparedStatement stm2 = null;
	public static final String readQuery = "Select product_id, product_name, product_desc, product_price, product_quantity, total_purchased from available_to_purchase";
 
	public static final String updatePurchase = "Update available_to_purchase set product_quantity = product_quantity - ? , total_purchased =  total_purchased + ? where product_id = ?";
	public static final String updateSell = "Update available_to_sell set product_quantity = product_quantity + ? where product_id = ?";
 
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Purchase2() {
        super();
        // TODO Auto-generated constructor stub
    }
 
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		try {
			stm1 = con.CreateC().prepareStatement(readQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			ResultSet rs = stm1.executeQuery();
			request.getSession().setAttribute("result", rs);

		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("purchase.jsp");
		rd.forward(request, response);
	}
 
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer productId = Integer.parseInt(request.getParameter("product_id"));
		Integer quantity = Integer.parseInt(request.getParameter("quantity"));
		try {
			Connections con=new Connections();
			stm1 = con.CreateC().prepareStatement(updatePurchase);
			stm2 = con.CreateC().prepareStatement(updateSell);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			stm1.setInt(1, quantity);
			stm1.setInt(2, quantity);
			stm1.setInt(3, productId);
			stm2.setInt(1, quantity);
			stm2.setInt(2, productId);
			stm1.execute();
			stm2.execute();

		} catch (SQLException e) {
			e.printStackTrace();
		}
//		RequestDispatcher rd = request.getRequestDispatcher("Purchase.jsp");
//		
//		rd.forward(request, response);
		RequestDispatcher rd = request.getRequestDispatcher("home1.jsp");
		rd.forward(request, response);
		// TODO Auto-generated method stub
	}
 
}

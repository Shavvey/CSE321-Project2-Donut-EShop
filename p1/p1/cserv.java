package p1;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class cserv
 */
@WebServlet("/cserv")
public class cserv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public cserv() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("cart.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// here use this post request to enter transactions
		
		// retrieve session in order to get cart vars
		HttpSession session = request.getSession();
		ArrayList<Donut> cart = (ArrayList<Donut>) session.getAttribute("cart");
		String name = request.getParameter("name");
		String card = request.getParameter("card");
		float total = 0;
		for (Donut d : cart) {
			total += Double.parseDouble(d.getPrice()) * d.getQuantity();
		}
		
        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/donutdb",
                "root", "colej123");) {
        	String sql = "INSERT INTO doughnut_orders (Name, CardNumber, Total, Timestamp) VALUES (?, ?, ?, ?);";
        
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
        		Date date = new Date(Calendar.getInstance().getTimeInMillis());
        		stmt.setString(1, name);
        		stmt.setString(2, card);
        		stmt.setFloat(3, total);
        		stmt.setDate(4,date);
                int rowsUpdated = stmt.executeUpdate();
                if (rowsUpdated > 0) {
                    response.getWriter().write("Student record updated successfully.");
                } else {
                    response.getWriter().write("Inserted values into the table");
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().write("Error updating student record.");
        }

	}

}

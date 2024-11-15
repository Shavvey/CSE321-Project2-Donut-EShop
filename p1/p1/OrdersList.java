package p1;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class OrdersList {
	public ArrayList<Order> list;
	
	public OrdersList() {
		this.list = new ArrayList<>();
		
	    try {
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/donutdb",
	                                            "root", "colej123");
	       Statement sql_stmt = conn.createStatement();
	        ResultSet records = sql_stmt.executeQuery("SELECT * FROM doughnut_orders");
	        while (records.next()) {
	          int OrderID = records.getInt("OrderID");
	          String name = records.getString("name");
	          String cardNum = records.getString("CardNumber");
	          float total = records.getFloat("Total");
	          Date date = records.getDate("Timestamp");
	          String status = records.getString("Status");
	          Order order = new Order(OrderID, name, cardNum, total, date, status);
	          list.add(order);
	        }

	      } catch (Exception e) {
	        e.printStackTrace();
	      }
		
	}
	
	public boolean isEmpty() {
		return list.size() == 0;
	}
	
	
}

package p1;

import java.util.ArrayList;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class buildmenu {
	
	
	ArrayList <donut> menu;
	
	public buildmenu()
	{
		donutMenu shell = new donutMenu();
		menu = shell.getList();
		Connection mycon=null;
        Statement sql_stmt=null;
        ResultSet records=null;
        try {
		Class.forName("com.mysql.cj.jdbc.Driver");
        mycon = DriverManager.getConnection("jdbc:mysql://localhost:3306/donutdb","root","colej123");
        sql_stmt = mycon.createStatement();  
        records = sql_stmt.executeQuery("SELECT * FROM doughnut_menu");
        while(records.next())
        {
        	String ids = records.getString("ProductKey");
        	Integer id = Integer.parseInt(ids);
        	donut newElement = new donut(id, records.getString("Doughnut"), records.getString("Type"), records.getString("Price"), records.getString("pageinfo"));
        	menu.add(newElement);
        }
       
        }
        catch(Exception e) {e.printStackTrace();}
		
	}
	
	public donut getDbyId(Integer donutID)
	{
		donut d = menu.get(donutID - 1);
		return d;
	}

	public ArrayList<donut> getMenu() {
		return menu;
	}

	public void setMenu(ArrayList<donut> menu) {
		this.menu = menu;
	}
}

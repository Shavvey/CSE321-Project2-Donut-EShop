package p1;

import java.sql.Date;

public class Order {

	private int OrderID;
	private String name;
	private String cardNumber;
	private float total;
	private Date timeStamp;
	
	Order(int OrderID, String name, String cardNumber, float total, Date timeStamp) {
		this.OrderID = OrderID;
		this.name = name;
		this.cardNumber = cardNumber;
		this.total = total;
		this.timeStamp = timeStamp;
	}
	
	public int getOrderID() {
		return OrderID;
	}
	
	public String getName() {
		return name;
	}
	
	public String getCardNumber() {
		return cardNumber;
	}
	
	public Date getTimeStamp() {
		return timeStamp;
	}
	
	public float getTotal() {
		return total;
	}

}

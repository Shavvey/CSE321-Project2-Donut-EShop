package p1;

public class Donut {
	
	
	private Integer donutID;
	private Integer quantity;
	private String type;
	private String flavor;
	private String price;
	private String description;
	
	public Donut()
	{
		
	}
	
	public Donut(Integer donutID, String type, String flavor, String price, String description)
	{
		this.donutID = donutID;
		this.type = type;
		this.price = price;
		this.flavor = flavor;
		this.description = description;
	}

	public Integer getDonutID() {
		return donutID;
	}

	public void setDonutID(Integer donutID) {
		this.donutID = donutID;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getFlavor() {
		return flavor;
	}

	public void setFlavor(String flavor) {
		this.flavor = flavor;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	public Integer getQuantity() {
		return quantity;
	}
	
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	
	
	

}

package mwp;

public class Orders {
	private String date;
	private String odrphone;
	private String odradr;
	private String menu;
	private int price;
	private int pay;
	
	public Orders() {}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getOdrphone() {
		return odrphone;
	}

	public void setOdrphone(String odrphone) {
		this.odrphone = odrphone;
	}

	public String getOdradr() {
		return odradr;
	}

	public void setOdradr(String odradr) {
		this.odradr = odradr;
	}

	public String getMenu() {
		return menu;
	}

	public void setMenu(String menu) {
		this.menu = menu;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getPay() {
		return pay;
	}

	public void setPay(int pay) {
		this.pay = pay;
	}
	
}

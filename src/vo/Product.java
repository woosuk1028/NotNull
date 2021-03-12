package vo;

public class Product {
	private String pcode;
	private String name;
	private int price;
	private String size;
	private String brand;
	private String pInfo;
	private String img;
	
	public Product(String pcode, String name, int price, String size, String brand, String pInfo, String img) {
		
		this.pcode = pcode;
		this.name = name;
		this.price = price;
		this.size = size;
		this.brand = brand;
		this.pInfo = pInfo;
		this.img = img;
	}

	public String getPcode() {
		return pcode;
	}

	public void setPcode(String pcode) {
		this.pcode = pcode;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getpInfo() {
		return pInfo;
	}

	public void setpInfo(String pInfo) {
		this.pInfo = pInfo;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}
	
	
	
	
	
}

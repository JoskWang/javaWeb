package com.atguigu.bean;

public class GirlFriend {
	private double price;
	private String cailiao;
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getCailiao() {
		return cailiao;
	}
	public void setCailiao(String cailiao) {
		this.cailiao = cailiao;
	}
	public GirlFriend(double price, String cailiao) {
		super();
		this.price = price;
		this.cailiao = cailiao;
	}
	public GirlFriend() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "GirlFriend [price=" + price + ", cailiao=" + cailiao + "]";
	}
	
}

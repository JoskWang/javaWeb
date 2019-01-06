package com.atguigu.bean;

public class User {
	private String  name;
	private int  age;
	private GirlFriend gf;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public User(String name, int age) {
		super();
		this.name = name;
		this.age = age;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "User [name=" + name + ", age=" + age + "]";
	}
	public GirlFriend getGf() {
		return gf;
	}
	public void setGf(GirlFriend gf) {
		this.gf = gf;
	}
	
	
}

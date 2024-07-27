package com.Entity.bean;

	/**
	 * User.java
	 * This is a model class represents a User entity
	 *
	 */
	public class User {
		protected String name;
		protected String email;
		protected String gender;
		protected int age;
		protected long PhoneNo;
		
		public User() {
		}
		

		public User(String name, String email, String gender, int age, long phoneNo) {
			super();
			this.name = name;
			this.email = email;
			this.gender = gender;
			this.age = age;
			PhoneNo = phoneNo;
		}



		public User(String name, String gender, int age, long phoneNo) {
			super();
			this.name = name;
			this.gender = gender;
			this.age = age;
			PhoneNo = phoneNo;
		}


		public String getName() {
			return name;
		}


		public void setName(String name) {
			this.name = name;
		}


		public String getEmail() {
			return email;
		}


		public void setEmail(String email) {
			this.email = email;
		}


		public String getGender() {
			return gender;
		}


		public void setGender(String gender) {
			this.gender = gender;
		}


		public int getAge() {
			return age;
		}


		public void setAge(int age) {
			this.age = age;
		}


		public long getPhoneNo() {
			return PhoneNo;
		}


		public void setPhoneNo(long phoneNo) {
			PhoneNo = phoneNo;
		}

		
	}


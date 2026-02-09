package test;
import java.io.*;

@SuppressWarnings("serial")
public class MovieTicketBeans implements Serializable{

		private String name , password , mailid; 
		private int number ;
	
		public MovieTicketBeans() {}

		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public String getMailid() {
			return mailid;
		}
		public void setMailid(String mailid) {
			this.mailid = mailid;
		}
		public int getNumber() {
			return number;
		}
		public void setNumber(int number) {
			this.number = number;
		}
		
		
		
		
}

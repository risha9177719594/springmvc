package com.biller.model.yahoo;

import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
@XmlRootElement(name="PersonalDetails")
public class PersonalDetails {
	
	String firstName;
	String lastName;
	String gender;
	String dateOfBirth;
	String city;
	List<String> aliase;
	String playerThumbImgName;
	String playerLargeImgName;
	
	@XmlElement(name="FirstName") 
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	@XmlElement(name="LastName") 
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	@XmlElement(name="Gender") 
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	@XmlElement(name="DateOfBirth") 
	public String getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	@XmlElement(name="City") 
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	@XmlElement(name="Aliase") 
	public List<String> getAliase() {
		return aliase;
	}
	public void setAliase(List<String> aliase) {
		this.aliase = aliase;
	}
	@XmlElement(name="PlayerThumbImgName") 
	public String getPlayerThumbImgName() {
		return playerThumbImgName;
	}
	public void setPlayerThumbImgName(String playerThumbImgName) {
		this.playerThumbImgName = playerThumbImgName;
	}
	@XmlElement(name="PlayerLargeImgName") 
	public String getPlayerLargeImgName() {
		return playerLargeImgName;
	}
	public void setPlayerLargeImgName(String playerLargeImgName) {
		this.playerLargeImgName = playerLargeImgName;
	}

}

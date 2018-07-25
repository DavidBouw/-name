package com.techelevator.model;

public class Survey {
	private Long id;
	private String parkCode;
	private String emailAddress;
	private String state;
	private String acitivityLevel;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getParkCode() {
		return parkCode;
	}

	public void setParkCode(String parkCode) {
		this.parkCode = parkCode;
	}

	public String getEmailAddress() {
		return emailAddress;
	}

	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getAcitivityLevel() {
		return acitivityLevel;
	}

	public void setAcitivityLevel(String acitivityLevel) {
		this.acitivityLevel = acitivityLevel;
	}
}

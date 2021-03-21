package com.airwire.nextgenschool.dto;

import javax.persistence.*;


public class EducationalYearMstDto {

	private Long id;
	private String description;
	private boolean currentYear;
	private boolean active;
	private Long schoolId;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public boolean isCurrentYear() {
		return currentYear;
	}

	public void setCurrentYear(boolean currentYear) {
		this.currentYear = currentYear;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

	public Long getSchoolId() {
		return schoolId;
	}

	public void setSchoolId(Long schoolId) {
		this.schoolId = schoolId;
	}
}

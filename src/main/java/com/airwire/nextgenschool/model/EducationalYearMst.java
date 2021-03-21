package com.airwire.nextgenschool.model;

import javax.persistence.*;

@Entity
@Table(name = "educational_year_mst")
public class EducationalYearMst {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String description;
	private boolean currentYear;
	private boolean active;

	@ManyToOne
	@JoinColumn(name="school_id")
	private School school;

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

	public School getSchool() {
		return school;
	}

	public void setSchool(School school) {
		this.school = school;
	}
}

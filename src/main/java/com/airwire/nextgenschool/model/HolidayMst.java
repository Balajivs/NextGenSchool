package com.airwire.nextgenschool.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "holiday_mst")
public class HolidayMst {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	private Date date;
	private String description;
	private String type;
	@ManyToOne
	@JoinColumn(name="school_id")
	private School school;

	public School getSchool() {
		return school;
	}

	public void setSchool(School school) {
		this.school = school;
	}

	@ManyToOne
	@JoinColumn(name="educational_year_mst_id")
	private EducationalYearMst educationalYearMst;
	private Boolean active;
	
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public EducationalYearMst getEducationalYearMst() {
		return educationalYearMst;
	}
	public void setEducationalYearMst(EducationalYearMst educationalYearMst) {
		this.educationalYearMst = educationalYearMst;
	}
	public Boolean getActive() {
		return active;
	}
	public void setActive(Boolean active) {
		this.active = active;
	}
}

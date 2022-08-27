package com.airwire.nextgenschool.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "yearwise_student")
public class YearwiseStudent {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@ManyToOne
	@JoinColumn(name="yearwise_class_division_id")
	private YearwiseClassDivision yearwiseClassDivision;
	
	@ManyToOne
	@JoinColumn(name="pravesh_nirgam_id")
	private PraveshNirgam praveshNirgam;

	@ManyToOne
	@JoinColumn(name="school_id")
	private School school;

	public School getSchool() {
		return school;
	}

	public void setSchool(School school) {
		this.school = school;
	}

	private Integer rollNo;
	private Boolean active;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}

	public YearwiseClassDivision getYearwiseClassDivision() {
		return yearwiseClassDivision;
	}

	public void setYearwiseClassDivision(YearwiseClassDivision yearwiseClassDivision) {
		this.yearwiseClassDivision = yearwiseClassDivision;
	}

	public PraveshNirgam getPraveshNirgam() {
		return praveshNirgam;
	}
	public void setPraveshNirgam(PraveshNirgam praveshNirgam) {
		this.praveshNirgam = praveshNirgam;
	}
	public Integer getRollNo() {
		return rollNo;
	}
	public void setRollNo(Integer rollNo) {
		this.rollNo = rollNo;
	}
	public Boolean getActive() {
		return active;
	}
	public void setActive(Boolean active) {
		this.active = active;
	}
}

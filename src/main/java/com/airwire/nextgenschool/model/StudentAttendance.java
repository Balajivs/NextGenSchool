package com.airwire.nextgenschool.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "student_attendance")
public class StudentAttendance {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@ManyToOne
	@JoinColumn(name="yearwise_student_id")
	private YearwiseStudent yearwiseStudent;
	
	private Integer monthId;
	private Long eduYearId;
	private Long yearClassDivId;
	private String remark;
	private Boolean active;
	
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public YearwiseStudent getYearwiseStudent() {
		return yearwiseStudent;
	}
	public void setYearwiseStudent(YearwiseStudent yearwiseStudent) {
		this.yearwiseStudent = yearwiseStudent;
	}
	public Integer getMonthId() {
		return monthId;
	}
	public void setMonthId(Integer monthId) {
		this.monthId = monthId;
	}
	public Long getEduYearId() {
		return eduYearId;
	}
	public void setEduYearId(Long eduYearId) {
		this.eduYearId = eduYearId;
	}
	public Long getYearClassDivId() {
		return yearClassDivId;
	}
	public void setYearClassDivId(Long yearClassDivId) {
		this.yearClassDivId = yearClassDivId;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public Boolean getActive() {
		return active;
	}
	public void setActive(Boolean active) {
		this.active = active;
	}
	
}

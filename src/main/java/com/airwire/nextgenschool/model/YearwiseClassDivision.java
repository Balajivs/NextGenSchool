package com.airwire.nextgenschool.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "yearwise_class_division")
public class YearwiseClassDivision {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@ManyToOne
	@JoinColumn(name="educational_year_mst_id")
	private EducationalYearMst educationalYearMst;
	
	@ManyToOne
	@JoinColumn(name="class_division_mst_id")
	private ClassDivisionMst classDivisionMst;
	
	@ManyToOne
	@JoinColumn(name="teacher_mst_id")
	private TeacherMst teacherMst;

	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public EducationalYearMst getEducationalYearMst() {
		return educationalYearMst;
	}

	public void setEducationalYearMst(EducationalYearMst educationalYearMst) {
		this.educationalYearMst = educationalYearMst;
	}

	public ClassDivisionMst getClassDivisionMst() {
		return classDivisionMst;
	}

	public void setClassDivisionMst(ClassDivisionMst classDivisionMst) {
		this.classDivisionMst = classDivisionMst;
	}

	public TeacherMst getTeacherMst() {
		return teacherMst;
	}

	public void setTeacherMst(TeacherMst teacherMst) {
		this.teacherMst = teacherMst;
	}
	
}

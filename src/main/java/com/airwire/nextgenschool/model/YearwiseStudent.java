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
	@JoinColumn(name="class_division_mst_id")
	private ClassDivisionMst classDivisionMst;
	
	@ManyToOne
	@JoinColumn(name="pravesh_nirgam_id")
	private PraveshNirgam praveshNirgam;
	
	private Integer rollNo;
	private Boolean active;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public ClassDivisionMst getClassDivisionMst() {
		return classDivisionMst;
	}
	public void setClassDivisionMst(ClassDivisionMst classDivisionMst) {
		this.classDivisionMst = classDivisionMst;
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

package com.airwire.nextgenschool.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "class_division_mst")
public class ClassDivisionMst {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String title;
	private Boolean active;
	
	@ManyToOne
	@JoinColumn(name="class_mst_id")
	private ClassMst classMaster;
	
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Boolean getActive() {
		return active;
	}
	public void setActive(Boolean active) {
		this.active = active;
	}
	public ClassMst getClassMaster() {
		return classMaster;
	}
	public void setClassMaster(ClassMst classMaster) {
		this.classMaster = classMaster;
	}
	
}

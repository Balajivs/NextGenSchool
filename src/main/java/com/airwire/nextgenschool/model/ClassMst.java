package com.airwire.nextgenschool.model;

import javax.persistence.*;

@Entity
@Table(name = "class_mst")
public class ClassMst {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String title;
	private Boolean active;

	@ManyToOne
	@JoinColumn(name="school_id")
	private School school;

	public School getSchool() {
		return school;
	}

	public void setSchool(School school) {
		this.school = school;
	}

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
	
}

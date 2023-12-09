package com.airwire.nextgenschool.model;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "trust")
public class Trust {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String trustName;
	private String printString;
	
	@OneToMany(mappedBy = "trust")
	private Set<School> schools;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getTrustName() {
		return trustName;
	}
	public void setTrustName(String trustName) {
		this.trustName = trustName;
	}
	public String getPrintString() {
		return printString;
	}
	public void setPrintString(String printString) {
		this.printString = printString;
	}
	public Set<School> getSchools() {
		return schools;
	}
	public void setSchools(Set<School> schools) {
		this.schools = schools;
	}
}

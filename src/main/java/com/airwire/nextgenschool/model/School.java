package com.airwire.nextgenschool.model;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "school")
public class School {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String udise;
	private String schoolName;
	private String schoolAddress;
	private String schoolPhone;
	private String schoolEmailId;
	private String schoolWebsite;
	private String cluster;
	private String bit;
	private String tahshil;
	private String district;
	private String pin;
	private String lowerClass;
	private String upperClass;
	private String medium;
	private String bookSystem;
	private String grantType;
	private String gaon;
	private String manyata;
	private String sanketank;
	private String board;
	private String boardCode;
	private String schoolManagement; // already have trust
	private String s2gId; // no idea
	private String logo;
	private String sanlgnataNo;
	private Long leavingCertificateSrNo;
	private String authoritySign;
	private String authority;
	private String establishment;
	
	
	@OneToMany(mappedBy = "school")
	private Set<User> users;
	
	@ManyToOne
	@JoinColumn(name="trust_id")
	private Trust trust;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getUdise() {
		return udise;
	}
	public void setUdise(String udise) {
		this.udise = udise;
	}
	public String getSchoolName() {
		return schoolName;
	}
	public void setSchoolName(String schoolName) {
		this.schoolName = schoolName;
	}
	public String getSchoolAddress() {
		return schoolAddress;
	}
	public void setSchoolAddress(String schoolAddress) {
		this.schoolAddress = schoolAddress;
	}
	public String getSchoolPhone() {
		return schoolPhone;
	}
	public void setSchoolPhone(String schoolPhone) {
		this.schoolPhone = schoolPhone;
	}
	public String getSchoolEmailId() {
		return schoolEmailId;
	}
	public void setSchoolEmailId(String schoolEmailId) {
		this.schoolEmailId = schoolEmailId;
	}
	public String getSchoolWebsite() {
		return schoolWebsite;
	}
	public void setSchoolWebsite(String schoolWebsite) {
		this.schoolWebsite = schoolWebsite;
	}
	public String getCluster() {
		return cluster;
	}
	public void setCluster(String cluster) {
		this.cluster = cluster;
	}
	public String getBit() {
		return bit;
	}
	public void setBit(String bit) {
		this.bit = bit;
	}
	public String getTahshil() {
		return tahshil;
	}
	public void setTahshil(String tahshil) {
		this.tahshil = tahshil;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getPin() {
		return pin;
	}
	public void setPin(String pin) {
		this.pin = pin;
	}
	public String getLowerClass() {
		return lowerClass;
	}
	public void setLowerClass(String lowerClass) {
		this.lowerClass = lowerClass;
	}
	public String getUpperClass() {
		return upperClass;
	}
	public void setUpperClass(String upperClass) {
		this.upperClass = upperClass;
	}
	public String getMedium() {
		return medium;
	}
	public void setMedium(String medium) {
		this.medium = medium;
	}
	public String getBookSystem() {
		return bookSystem;
	}
	public void setBookSystem(String bookSystem) {
		this.bookSystem = bookSystem;
	}
	public String getGrantType() {
		return grantType;
	}
	public void setGrantType(String grantType) {
		this.grantType = grantType;
	}
	public String getGaon() {
		return gaon;
	}
	public void setGaon(String gaon) {
		this.gaon = gaon;
	}
	public String getManyata() {
		return manyata;
	}
	public void setManyata(String manyata) {
		this.manyata = manyata;
	}
	public String getSanketank() {
		return sanketank;
	}
	public void setSanketank(String sanketank) {
		this.sanketank = sanketank;
	}
	public String getBoard() {
		return board;
	}
	public void setBoard(String board) {
		this.board = board;
	}
	public String getBoardCode() {
		return boardCode;
	}
	public void setBoardCode(String boardCode) {
		this.boardCode = boardCode;
	}
	public String getSchoolManagement() {
		return schoolManagement;
	}
	public void setSchoolManagement(String schoolManagement) {
		this.schoolManagement = schoolManagement;
	}
	public String getS2gId() {
		return s2gId;
	}
	public void setS2gId(String s2gId) {
		this.s2gId = s2gId;
	}
	public String getLogo() {
		return logo;
	}
	public void setLogo(String logo) {
		this.logo = logo;
	}
	public Trust getTrust() {
		return trust;
	}
	public void setTrust(Trust trust) {
		this.trust = trust;
	}
	public String getSanlgnataNo() {
		return sanlgnataNo;
	}
	public void setSanlgnataNo(String sanlgnataNo) {
		this.sanlgnataNo = sanlgnataNo;
	}
	public Long getLeavingCertificateSrNo() {
		return leavingCertificateSrNo;
	}
	public void setLeavingCertificateSrNo(Long leavingCertificateSrNo) {
		this.leavingCertificateSrNo = leavingCertificateSrNo;
	}
	public String getAuthoritySign() {
		return authoritySign;
	}
	public void setAuthoritySign(String authoritySign) {
		this.authoritySign = authoritySign;
	}
	public String getAuthority() {
		return authority;
	}
	public void setAuthority(String authority) {
		this.authority = authority;
	}
	public String getEstablishment() {
		return establishment;
	}
	public void setEstablishment(String establishment) {
		this.establishment = establishment;
	}

	
}

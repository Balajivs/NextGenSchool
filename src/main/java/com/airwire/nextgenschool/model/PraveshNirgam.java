package com.airwire.nextgenschool.model;

import java.util.Date;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import com.fasterxml.jackson.annotation.JsonBackReference;

@Entity
@Table(name = "pravesh_nirgam")
public class PraveshNirgam {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private Long regNo;
	private String studentId;
	private String aadharId;
	private String firstName;
	private String middleName;
	private String lastName;
	private String motherName;
	private String nationality;
	private String motherTongue;
	private String religion;
	private String cast;
	private String subCast;
	private String birthPlace;
	private String birthTahshil;
	private String birthDistrict;
	private String birthState;
	private String birthCountry;
	private Date birthDate;
	private String prevSchoolName;
	private String prevSchoolStd;
	private String entryStd;
	private Date entryDate;
	
	
	
	private String leaveStd;
	private Date leaveStdDate; 
	private String abhyasPragati;
	private String vartnuk;
	private String lcCause;
	private Date lcReceiptDateParent;
	private String lcSignParent;
	private String lcSignVarifiedParent;
	private Date lcDate; 
	private String s2gSchool;
	private Date lcSchoolDate;
	private String bookNo;
	private String permenentAddress;
	private String dakhalaPlace;
	private String mobileMother;
	private String mobileFather;
	private String gender;
	private String castCategory;
	private String minority;
	private String currentStd;
	private String currentDiv;
	private String bpl;
	private String prevStd;
	private String lcTimes;
	private String remark;
	private String mobileNo;
	
	private String educationYear;
	
	
	@ManyToOne
	@JoinColumn(name="school_id")
	@JsonBackReference
	private School school;
	
	@ManyToOne
	@JoinColumn(name="created_id")
	@JsonBackReference
	private User createdBy;
	
	@ManyToOne
	@JoinColumn(name="updated_id")
	@JsonBackReference
	private User updatedBy;
	
	
	@CreationTimestamp
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "create_date")
	private Date createDate;
	
	@UpdateTimestamp
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "modify_date")
	private Date modifyDate;
	
	
	@OneToMany(mappedBy = "praveshNirgam")
	private Set<PraveshNirgamHistory> praveshNirgamHistory;
	
	private String leavingCertiFicatePrinted;

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Date getModifyDate() {
		return modifyDate;
	}

	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getRegNo() {
		return regNo;
	}

	public void setRegNo(Long regNo) {
		this.regNo = regNo;
	}

	public String getStudentId() {
		return studentId;
	}

	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}

	public String getAadharId() {
		return aadharId;
	}

	public void setAadharId(String aadharId) {
		this.aadharId = aadharId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getMiddleName() {
		return middleName;
	}

	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getMotherName() {
		return motherName;
	}

	public void setMotherName(String motherName) {
		this.motherName = motherName;
	}

	public String getNationality() {
		return nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public String getMotherTongue() {
		return motherTongue;
	}

	public void setMotherTongue(String motherTongue) {
		this.motherTongue = motherTongue;
	}

	public String getReligion() {
		return religion;
	}

	public void setReligion(String religion) {
		this.religion = religion;
	}

	public String getCast() {
		return cast;
	}

	public void setCast(String cast) {
		this.cast = cast;
	}

	public String getSubCast() {
		return subCast;
	}

	public void setSubCast(String subCast) {
		this.subCast = subCast;
	}

	public String getBirthPlace() {
		return birthPlace;
	}

	public void setBirthPlace(String birthPlace) {
		this.birthPlace = birthPlace;
	}

	public String getBirthTahshil() {
		return birthTahshil;
	}

	public void setBirthTahshil(String birthTahshil) {
		this.birthTahshil = birthTahshil;
	}

	public String getBirthDistrict() {
		return birthDistrict;
	}

	public void setBirthDistrict(String birthDistrict) {
		this.birthDistrict = birthDistrict;
	}

	public String getBirthState() {
		return birthState;
	}

	public void setBirthState(String birthState) {
		this.birthState = birthState;
	}

	public String getBirthCountry() {
		return birthCountry;
	}

	public void setBirthCountry(String birthCountry) {
		this.birthCountry = birthCountry;
	}

	public Date getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}

	public String getPrevSchoolName() {
		return prevSchoolName;
	}

	public void setPrevSchoolName(String prevSchoolName) {
		this.prevSchoolName = prevSchoolName;
	}

	public String getPrevSchoolStd() {
		return prevSchoolStd;
	}

	public void setPrevSchoolStd(String prevSchoolStd) {
		this.prevSchoolStd = prevSchoolStd;
	}

	public String getEntryStd() {
		return entryStd;
	}

	public void setEntryStd(String entryStd) {
		this.entryStd = entryStd;
	}

	public Date getEntryDate() {
		return entryDate;
	}

	public void setEntryDate(Date entryDate) {
		this.entryDate = entryDate;
	}

	public String getLeaveStd() {
		return leaveStd;
	}

	public void setLeaveStd(String leaveStd) {
		this.leaveStd = leaveStd;
	}

	public Date getLeaveStdDate() {
		return leaveStdDate;
	}

	public void setLeaveStdDate(Date leaveStdDate) {
		this.leaveStdDate = leaveStdDate;
	}

	public String getAbhyasPragati() {
		return abhyasPragati;
	}

	public void setAbhyasPragati(String abhyasPragati) {
		this.abhyasPragati = abhyasPragati;
	}

	public String getVartnuk() {
		return vartnuk;
	}

	public void setVartnuk(String vartnuk) {
		this.vartnuk = vartnuk;
	}

	public String getLcCause() {
		return lcCause;
	}

	public void setLcCause(String lcCause) {
		this.lcCause = lcCause;
	}

	public Date getLcReceiptDateParent() {
		return lcReceiptDateParent;
	}

	public void setLcReceiptDateParent(Date lcReceiptDateParent) {
		this.lcReceiptDateParent = lcReceiptDateParent;
	}

	public String getLcSignParent() {
		return lcSignParent;
	}

	public void setLcSignParent(String lcSignParent) {
		this.lcSignParent = lcSignParent;
	}

	public String getLcSignVarifiedParent() {
		return lcSignVarifiedParent;
	}

	public void setLcSignVarifiedParent(String lcSignVarifiedParent) {
		this.lcSignVarifiedParent = lcSignVarifiedParent;
	}

	public Date getLcDate() {
		return lcDate;
	}

	public void setLcDate(Date lcDate) {
		this.lcDate = lcDate;
	}

	public String getS2gSchool() {
		return s2gSchool;
	}

	public void setS2gSchool(String s2gSchool) {
		this.s2gSchool = s2gSchool;
	}

	public Date getLcSchoolDate() {
		return lcSchoolDate;
	}

	public void setLcSchoolDate(Date lcSchoolDate) {
		this.lcSchoolDate = lcSchoolDate;
	}

	public String getBookNo() {
		return bookNo;
	}

	public void setBookNo(String bookNo) {
		this.bookNo = bookNo;
	}

	public String getPermenentAddress() {
		return permenentAddress;
	}

	public void setPermenentAddress(String permenentAddress) {
		this.permenentAddress = permenentAddress;
	}

	public String getDakhalaPlace() {
		return dakhalaPlace;
	}

	public void setDakhalaPlace(String dakhalaPlace) {
		this.dakhalaPlace = dakhalaPlace;
	}

	public String getMobileMother() {
		return mobileMother;
	}

	public void setMobileMother(String mobileMother) {
		this.mobileMother = mobileMother;
	}

	public String getMobileFather() {
		return mobileFather;
	}

	public void setMobileFather(String mobileFather) {
		this.mobileFather = mobileFather;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getCastCategory() {
		return castCategory;
	}

	public void setCastCategory(String castCategory) {
		this.castCategory = castCategory;
	}

	public String getMinority() {
		return minority;
	}

	public void setMinority(String minority) {
		this.minority = minority;
	}

	public String getCurrentStd() {
		return currentStd;
	}

	public void setCurrentStd(String currentStd) {
		this.currentStd = currentStd;
	}

	public String getCurrentDiv() {
		return currentDiv;
	}

	public void setCurrentDiv(String currentDiv) {
		this.currentDiv = currentDiv;
	}

	public String getBpl() {
		return bpl;
	}

	public void setBpl(String bpl) {
		this.bpl = bpl;
	}

	public String getPrevStd() {
		return prevStd;
	}

	public void setPrevStd(String prevStd) {
		this.prevStd = prevStd;
	}

	public String getLcTimes() {
		return lcTimes;
	}

	public void setLcTimes(String lcTimes) {
		this.lcTimes = lcTimes;
	}

	public School getSchool() {
		return school;
	}

	public void setSchool(School school) {
		this.school = school;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getLeavingCertiFicatePrinted() {
		return leavingCertiFicatePrinted;
	}

	public void setLeavingCertiFicatePrinted(String leavingCertiFicatePrinted) {
		this.leavingCertiFicatePrinted = leavingCertiFicatePrinted;
	}

	public User getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(User createdBy) {
		this.createdBy = createdBy;
	}

	public User getUpdatedBy() {
		return updatedBy;
	}

	public void setUpdatedBy(User updatedBy) {
		this.updatedBy = updatedBy;
	}

	public Set<PraveshNirgamHistory> getPraveshNirgamHistory() {
		return praveshNirgamHistory;
	}

	public void setPraveshNirgamHistory(Set<PraveshNirgamHistory> praveshNirgamHistory) {
		this.praveshNirgamHistory = praveshNirgamHistory;
	}

	public String getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}

	public String getEducationYear() {
		return educationYear;
	}

	public void setEducationYear(String educationYear) {
		this.educationYear = educationYear;
	}

	
	
	
}

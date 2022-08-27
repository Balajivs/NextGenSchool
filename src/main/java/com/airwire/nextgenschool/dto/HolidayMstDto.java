package com.airwire.nextgenschool.dto;

import java.util.Date;

/**
 * The Class HolidayMstDto.
 */
public class HolidayMstDto {

	/** The id. */
	private Long id;
	
	/** The date. */
	private Date date;
	
	/** The description. */
	private String description;
	
	/** The type. */
	private String type;
	
	/** The school id. */
	private Long schoolId;
	
	/** The active. */
	private Boolean active;
	
	/**
	 * Gets the id.
	 *
	 * @return the id
	 */
	public Long getId() {
		return id;
	}
	
	/**
	 * Sets the id.
	 *
	 * @param id the new id
	 */
	public void setId(Long id) {
		this.id = id;
	}
	
	/**
	 * Gets the date.
	 *
	 * @return the date
	 */
	public Date getDate() {
		return date;
	}
	
	/**
	 * Sets the date.
	 *
	 * @param date the new date
	 */
	public void setDate(Date date) {
		this.date = date;
	}
	
	/**
	 * Gets the description.
	 *
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}
	
	/**
	 * Sets the description.
	 *
	 * @param description the new description
	 */
	public void setDescription(String description) {
		this.description = description;
	}
	
	/**
	 * Gets the type.
	 *
	 * @return the type
	 */
	public String getType() {
		return type;
	}
	
	/**
	 * Sets the type.
	 *
	 * @param type the new type
	 */
	public void setType(String type) {
		this.type = type;
	}
	
	/**
	 * Gets the school id.
	 *
	 * @return the school id
	 */
	public Long getSchoolId() {
		return schoolId;
	}
	
	/**
	 * Sets the school id.
	 *
	 * @param schoolId the new school id
	 */
	public void setSchoolId(Long schoolId) {
		this.schoolId = schoolId;
	}
	
	/**
	 * Gets the active.
	 *
	 * @return the active
	 */
	public Boolean getActive() {
		return active;
	}
	
	/**
	 * Sets the active.
	 *
	 * @param active the new active
	 */
	public void setActive(Boolean active) {
		this.active = active;
	}
	
	
	
	
}

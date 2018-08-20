
package org.capstore.user.model;




public class Attraction {
	
	
	private int attractionId;
	private String attractionName;
	private String attractionUrl;
	private String status;
	private String description;
	public Attraction(int attractionId, String attractionName, String attractionUrl, String status,
			String description) {
		super();
		this.attractionId = attractionId;
		this.attractionName = attractionName;
		this.attractionUrl = attractionUrl;
		this.status = status;
		this.description = description;
	}
	public int getAttractionId() {
		return attractionId;
	}
	public void setAttractionId(int attractionId) {
		this.attractionId = attractionId;
	}
	public String getAttractionName() {
		return attractionName;
	}
	public void setAttractionName(String attractionName) {
		this.attractionName = attractionName;
	}
	public String getAttractionUrl() {
		return attractionUrl;
	}
	public void setAttractionUrl(String attractionUrl) {
		this.attractionUrl = attractionUrl;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	public Attraction()
	{
		
	}

}

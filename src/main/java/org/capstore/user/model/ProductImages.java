package org.capstore.user.model;


public class ProductImages {
	private int imageId;
	private Inventory inventory;
	private String uploadimage;
	private String url;
	private boolean priority;
	public int getImageId() {
		return imageId;
	}
	public void setImageId(int imageId) {
		this.imageId = imageId;
	}
	public Inventory getInventory() {
		return inventory;
	}
	public void setInventory(Inventory inventory) {
		this.inventory = inventory;
	}
	public String getUploadimage() {
		return uploadimage;
	}
	public void setUploadimage(String uploadimage) {
		this.uploadimage = uploadimage;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public boolean isPriority() {
		return priority;
	}
	public void setPriority(boolean priority) {
		this.priority = priority;
	}
	public ProductImages(int imageId, Inventory inventory, String uploadimage, String url, boolean priority) {
		super();
		this.imageId = imageId;
		this.inventory = inventory;
		this.uploadimage = uploadimage;
		this.url = url;
		this.priority = priority;
	}
	public ProductImages() {
		
	}
}

package co.timfibbus.fashionizer;

import java.util.List;

public class UploadResponse {

	private List<Upload> uploads;

	public List<Upload> getUploads() {
		return uploads;
	}

	public void setUploads(List<Upload> uploads) {
		this.uploads = uploads;
	}

	public UploadResponse(List<Upload> uploads) {
		super();
		this.uploads = uploads;
	}

	
	
}

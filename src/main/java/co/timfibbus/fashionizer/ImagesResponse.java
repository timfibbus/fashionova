package co.timfibbus.fashionizer;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonProperty;

public class ImagesResponse {

	@JsonProperty("images_results")
	private List<ImagesResults> results;

	
	
	public List<ImagesResults> getResults() {
		return results;
	}

	public void setResults(List<ImagesResults> results) {
		this.results = results;
	}

	
	
	
	
}

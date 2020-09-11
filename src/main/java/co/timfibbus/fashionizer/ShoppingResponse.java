package co.timfibbus.fashionizer;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonProperty;

public class ShoppingResponse {

	@JsonProperty("shopping_results")
	private List<ShoppingResults> shopResults;

	public List<ShoppingResults> getShopResults() {
		return shopResults;
	}

	public void setShopResults(List<ShoppingResults> shopResults) {
		this.shopResults = shopResults;
	}
	
	
}

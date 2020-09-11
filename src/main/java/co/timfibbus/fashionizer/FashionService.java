package co.timfibbus.fashionizer;

import java.net.URI;
import java.util.List;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.web.client.RestTemplateBuilder;
import org.springframework.http.HttpHeaders;
import org.springframework.http.client.ClientHttpRequestInterceptor;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import co.timfibbus.apiproject.Hit;
import co.timfibbus.apiproject.RecipeResponse;

@Service
public class FashionService {
	
	private RestTemplate rt;
	
	@Value("${api-key}")
	String apiKey;

	{
		ClientHttpRequestInterceptor interceptor = (request, body, execution) -> {
			request.getHeaders().add(HttpHeaders.USER_AGENT, "DouglasW");
			return execution.execute(request, body);
		};
		rt = new RestTemplateBuilder().additionalInterceptors(interceptor).build();
	}
	
	
	public List<Hit> searchRecipe(String search) {
		UriComponentsBuilder b = UriComponentsBuilder.fromHttpUrl("https://api.edamam.com/search");
		b.queryParam("q", search);
		b.queryParam("app_id", apiId);
		b.queryParam("app_key", apiKey);
		URI url = b.build().toUri();
		RecipeResponse response = rt.getForObject(url, RecipeResponse.class);
		return response.getHits();
	}
	
	

}

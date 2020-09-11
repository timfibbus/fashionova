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
	
	
	public List<ImagesResults> searchFashion(String search) {
		UriComponentsBuilder b = UriComponentsBuilder.fromHttpUrl("https://serpapi.com/search");
		b.queryParam("q", search);
		b.queryParam("gl", "us");
		b.queryParam("hl", "en");
		b.queryParam("api_key", apiKey);
		URI url = b.build().toUri();
		ImagesResponse response = rt.getForObject(url, ImagesResponse.class);
		return response.getResults();
	}

}

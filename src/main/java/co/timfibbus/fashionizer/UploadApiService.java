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
public class UploadApiService {

	private RestTemplate rt;
	
	@Value("${cloudinary-api-key}")
	String apiKey;
	
	{
		ClientHttpRequestInterceptor interceptor = (request, body, execution) -> {
			request.getHeaders().add(HttpHeaders.USER_AGENT, "DouglasW");
			return execution.execute(request, body);
		};
		rt = new RestTemplateBuilder().additionalInterceptors(interceptor).build();
	}

	//public List<UploadResults> uploads() {
		
		
		//String url ="https://api.cloudinary.com/v1_1/djnmoo66f/image/upload";
		//ImagesResponse response = rt.getForObject(url, ImagesResponse.class);
		//System.out.println(url);
		//return response.getResults();
	//}
}

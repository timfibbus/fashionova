package co.timfibbus.fashionizer;

import java.math.BigInteger;
import java.net.URI;
import java.security.MessageDigest;
import java.util.Date;
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
	@Value("${cloudinary-api-secret}")
	String apiSecret;
	String sha1 = "";

	{
		ClientHttpRequestInterceptor interceptor = (request, body, execution) -> {
			request.getHeaders().add(HttpHeaders.USER_AGENT, "DouglasW");
			return execution.execute(request, body);
		};
		rt = new RestTemplateBuilder().additionalInterceptors(interceptor).build();
	}

	public List<Upload> uploadThis(String file) {
		UriComponentsBuilder b = UriComponentsBuilder.fromHttpUrl("https://api.cloudinary.com/v1_1/dca8dycl4/image/upload");
		b.queryParam("file", file);
		b.queryParam("api_key", apiKey);
		Date now = new Date();
		Long timestamp = (now.getTime()/1000);
		b.queryParam("timestamp", timestamp);
		String value = "timestamp="+timestamp+"file="+file+apiSecret;
		try {
			MessageDigest digest = MessageDigest.getInstance("SHA-1");
	        digest.reset();
	        digest.update(value.getBytes("utf8"));
	        sha1 = String.format("%040x", new BigInteger(1, digest.digest()));
		} catch (Exception e){
			e.printStackTrace();
		}
		System.out.println(sha1);
		b.queryParam("signature", sha1);
		URI url =b.build().toUri();
		UploadResponse response = rt.getForObject(url, UploadResponse.class);
		System.out.println(response.getUploads().toString());
		return response.getUploads();

	}
}

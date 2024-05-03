package test;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.*;
import java.util.*;
import org.json.*;

@WebServlet("/WeatherApi")
public class WeatherApi extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
	    Thread weatherThread = new Thread(() -> {
	        String apiKey = "0774b00dce86d28cb338061e92fdfb43"; 
	        String cityName = "Seoul"; 
	        String urlString = "http://api.openweathermap.org/data/2.5/weather?q=" + cityName + "&appid=" + apiKey
	            + "&units=metric";

	        try {
	            URL url = new URL(urlString);
	            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
	            conn.setRequestMethod("GET");
	            conn.connect();

	            int responseCode = conn.getResponseCode();

	            if (responseCode != 200) {
	                throw new RuntimeException("HttpResponseCode: " + responseCode);
	            } else {
	                StringBuilder info = new StringBuilder();
	                Scanner scanner = new Scanner(url.openStream());

	                while (scanner.hasNext()) {
	                    info.append(scanner.nextLine());
	                }
	                scanner.close();

	                JSONObject json = new JSONObject(info.toString());
	                double tempMin = json.getJSONObject("main").getDouble("temp_min");
	                double tempMax = json.getJSONObject("main").getDouble("temp_max");

	                response.setContentType("text/html; charset=UTF-8");
	                PrintWriter out = response.getWriter();
	                out.println("<html>");
	                out.println("<head><title>Weather Information</title></head>");
	                out.println("<body>");
	                out.println("<h1>오늘 서울 날씨 정보</h1>");
	                out.println("<p>도시: " + cityName + "</p>");
	                out.println("<p>최저 기온: " + tempMin + "°C</p>");
	                out.println("<p>최고 기온: " + tempMax + "°C</p>");
	                out.println("</body>");
	                out.println("</html>");
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    });
	    
	    weatherThread.start();
	}
}
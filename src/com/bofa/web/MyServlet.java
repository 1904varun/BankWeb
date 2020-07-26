package com.bofa.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MyServlet
 */
public class MyServlet extends HttpServlet {
	public static String body;
	public static int status;
	

	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public MyServlet() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		/*URL url = new URL("http://www.google.com/humans.txt");
		HttpURLConnection http = (HttpURLConnection) url.openConnection();
		http.setRequestProperty("User-Agent",
				"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11");
		status = http.getResponseCode();
		body = http.getContent().toString();
		request.getSession().setAttribute("status", status);
		request.getSession().setAttribute("body", body);
		response.sendRedirect("response.jsp");*/
		ArrayList<String> slice_list = new ArrayList<String>();
		ArrayList<String> server_list = new ArrayList<String>();
		ArrayList<Integer> status_list = new ArrayList<Integer>();
		ArrayList<String> version_list = new ArrayList<String>();
		ArrayList<String> health_list = new ArrayList<String>();
		ArrayList<String> urls = new ArrayList<String>();
		urls.add("http://www.google.com/humans.txt");
		urls.add("http://www.google.com");
		urls.add("http://www.google.com/hsumans.txt");
		urls.add("http://www.google.com/ashumans.txt");
		slice_list.add("1");
		slice_list.add("2");
		slice_list.add("1");
		slice_list.add("2");

		for (String url : urls) {
			try {
				URL app = new URL(url);
				HttpURLConnection http = (HttpURLConnection) app.openConnection();
				http.setRequestProperty("User-Agent",
						"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11");
				http.setConnectTimeout(7000);
				int status_code = http.getResponseCode();
				if (status_code == 200) {
					Scanner sc = new Scanner(app.openStream());
					StringBuffer sb = new StringBuffer();
					while (sc.hasNext()) {
						sb.append(sc.next());
					}
					String result = sb.toString();
					result = result.replaceAll("<[^>]*>", "");
					String server = url.substring(11, 21);
					String version = result.substring(20, 26);
					server_list.add(server);
					status_list.add(status_code);
					version_list.add(version);
					health_list.add("green");
				} else if(status_code != 200 && status_code!= 404){
					String server = url.substring(11, 21);
					String version = "---";
					server_list.add(server);
					status_list.add(status_code);
					version_list.add(version);
					health_list.add("yellow");
				}
				else {
					String server = url.substring(11, 21);
					String version = "---";
					server_list.add(server);
					status_list.add(status_code);
					version_list.add(version);
					health_list.add("red");
				}

			} catch (MalformedURLException e) {
				String server = url.substring(11, 21);
				String version = "---";
				server_list.add(server);
				status_list.add(404);
				version_list.add(version);
				health_list.add("red");
			} catch (IOException e) {
				String server = url.substring(11, 21);
				String version = "---";
				server_list.add(server);
				status_list.add(404);
				version_list.add(version);
				health_list.add("red");
			}

		}
		request.getSession().setAttribute("slice", slice_list);
		request.getSession().setAttribute("server", server_list);
		request.getSession().setAttribute("status", status_list);
		request.getSession().setAttribute("version", version_list);
		request.getSession().setAttribute("health", health_list);
		response.sendRedirect("response.jsp");
		// response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.sendRedirect("response.jsp");
	}

	
}

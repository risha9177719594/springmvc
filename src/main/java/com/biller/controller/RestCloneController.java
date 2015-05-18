package com.biller.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Properties;
 
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
 
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.w3c.dom.Attr;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

import com.biller.model.Mail;

@Controller
public class RestCloneController {
	private final String USER_AGENT = "Mozilla/5.0";

	@RequestMapping(value = { "restScore" }, method = RequestMethod.GET)
	public @ResponseBody
	String restExampleString() throws Exception {
		String returnText;

		returnText = "Welcome .";
		String url = "http://ca.ckt.webservice.sportsflash.com.au/WebService.asmx/GetScoreboardAppContent?%20HTTP/1.1";

		URL obj = new URL(url);
		HttpURLConnection con = (HttpURLConnection) obj.openConnection();

		// optional default is GET
		con.setRequestMethod("GET");

		// add request header
		con.setRequestProperty("User-Agent", USER_AGENT);

		int responseCode = con.getResponseCode();
		
		BufferedReader in = new BufferedReader(new InputStreamReader(
				con.getInputStream()));
		String inputLine;
		StringBuffer response = new StringBuffer();
		

		while ((inputLine = in.readLine()) != null) {
			response.append(inputLine);
		}
		in.close();
		Document doc = convertStringToDocument(response);
		
		doc.getDocumentElement().normalize();
		NodeList nList = doc.getElementsByTagName("Matches");
		String t=null;
		for(int i = 0 ; i < nList.getLength(); i++){
            Element e = (Element)nList.item(i);
            Node node = nList.item(i);

            Attr attr = (Attr) node.getAttributes().getNamedItem("statusId");
            String attribute= attr.getValue();                      
            if(attribute.equals("F")){
            	t=node.toString();
            }
            
        }
		// print result
		return response.toString();
	}

	private Document convertStringToDocument(StringBuffer response) {
		DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();  
        DocumentBuilder builder;  
        Document doc = null;
        try 
        {  
            builder = factory.newDocumentBuilder();  
            doc = builder.parse( new InputSource( new StringReader( response.toString() ) ) ); 
            return doc;
        } catch (Exception e) {  
            e.printStackTrace();  
        } 
        return doc;
	}
	
	@RequestMapping(value = { "sendMail" }, method = RequestMethod.POST)
	@ResponseBody
	public boolean SendMailTLS(@RequestParam("email") String mail,@RequestParam("subject") String sub,@RequestParam("name") String name,@RequestParam("message") String message1){
		
		final String username = "gallywood.official@gmail.com";
		final String password = "var5h1n1";
 
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
 
		Session session = Session.getInstance(props,
		  new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		  });
 
		try {
 
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(mail));
			message.setSubject(sub);
			message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse("rajendar.bommidi@gmail.com"));
			message.setSubject(name+" Contacted you from : " +mail);
			message.setText(message1);
			InternetAddress ia[]={new InternetAddress(mail)};
			message.setReplyTo(ia);
 
			Transport.send(message);
 
		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
		return true;
		
	}
	@RequestMapping(value = { "sendMail/{name}/{mail}/{message}" }, method = RequestMethod.GET)
	@ResponseBody
	public String SendMail(@PathVariable("mail") String mail,@PathVariable("name") String name,@PathVariable("message") String message1){
		
		final String username = "gallywood.official@gmail.com";
		final String password = "var5h1n1";
 
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
 
		Session session = Session.getInstance(props,
		  new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		  });
 
		try {
 
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(mail));
			message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse("gallywood.official@gmail.com"));
			message.setSubject(name+" Contacted you from : " + mail);
			message.setText(message1);
			InternetAddress ia[]={new InternetAddress(mail)};
			message.setReplyTo(ia);
 
			Transport.send(message);
 
 
		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
		return USER_AGENT;
		
	}

}

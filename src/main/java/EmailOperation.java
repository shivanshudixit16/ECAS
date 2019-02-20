import javax.mail.MessagingException;

public class EmailOperation {
	 String code;
	public 
	EmailOperation()
	{
	    code = CodeGenerator.getcode(6);
		
	}
public  void sendMail(String mail) throws MessagingException
{
	String body="<h2 style=\"text-align: center;\"><span style=\"text-decoration: underline; color: #ff0000;\"><strong>Exam Automation System</strong></span></h2>\r\n" + 
			"<strong>Teacher Login Credentials (Do Not Share)<br></strong>\r\n" + 
			"\r\n" + 
			"Username :\r  "+mail+"\n<br>" + 
			"\r\n" + 
			"Password:\r   "+code+"\n<br>" + 
			"\r\n" + 
			"Thank you\r\n" + 
			"";
	EmailCompose ec = new EmailCompose("examcell@protonmail.com","examcell");
	String subject="login credentials for exam cell automation system";
	ec.setSubject(subject);
	ec.addRecievers(mail);
	ec.setMessage(body);
	ec.sendMail(true);
   
    
	
}
}

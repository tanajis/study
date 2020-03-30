import sys
import smtplib
from email.message import EmailMessage

def lambda_handler(event,context):
    
    try:
        
        name = "Sumit"
        from_address = "yourmail@gmail.com"
        to_address = "his@gmail.com""
        subject = "Test ses smtp"
        domain='email-smtp.us-east-1.amazonaws.com'
        username="YOUR SMTP CREDIENTIALS SUERNAME"
        password="YOUR SMTP CREDIENTIALS SUERNAME"
        port=587
        
        
        
        body = """
        Hello, {0}.
        
        This is a sample email sent via SES service  using SMTP method.
        
        Kind Regards,
        Me
        """.format(name)
        
        msg = EmailMessage()
        msg.set_content(body)
        msg['Subject'] = subject
        msg['From'] = from_address
        msg['To'] = to_address
        
        
        
        server = smtplib.SMTP(domain, port)
        server.starttls()
        server.login(username,password )
        server.sendmail(from_address, to_address, str(msg) )
        server.quit()
    except Exception as e:
        print ("Error: ", e)
    else:
        print ("Email sent!")

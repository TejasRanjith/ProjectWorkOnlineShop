# import smtplib

# subject = "TEST EMAIL...."
# body = "Hi,\nThis is a Test email from Tejas."
# msg = f"Subject: {subject}\n\n{body}"

# mail = smtplib.SMTP("smtp.gmail.com",587)

# mail.ehlo()

# mail.starttls()

# mail.login("tejasranjith035611@gmail.com","Tejas@035611")

# mail.sendmail('tejasranjith035611@gmail.com','tejascoder035611@gmail.com',msg)

# mail.close()

def email():
    import smtplib

    filename = "C:\\Users\\home\\Desktop\\Computer Stuff\\ProjectWorkOnlineShop\\bill.txt"
    f = open(filename, "r")
    filecontent = f.read()
    sender = 'tejasranjith035611@gmail.com'
    reciever = 'tejascoder035611@gmail.com'
    marker = "AUNIQUEMARKER"
    body ="""
    This is a test email to send an attachement.
    """
    part1 = """From: Tejas Ranjith <tejasranjith035611@gmail.com>
    To: Tejas Coder <tejascode035611@gmail.com>
    Subject: Sending Attachement
    MIME-Version: 1.0
    Content-Type: multipart/mixed; boundary=%s
    --%s
    """ % (marker, marker)
    part2 = """Content-Type: text/plain
    Content-Transfer-Encoding:8bit

    %s
    --%s
    """ % (body,marker)
    part3 = """Content-Type: text/plain; name=\"%s\"
    Content-Transfer-Encoding:8bit
    Content-Disposition: attachment; filename=%s

    %s
    --%s--
    """ %(filename, filename,filecontent, marker)
    message = part1 + part2 + part3
    try:
        smtpObj = smtplib.SMTP('smtp.gmail.com',587)
        smtpObj.ehlo()
        smtpObj.starttls()
        smtpObj.login("tejasranjith035611@gmail.com","Tejas@035611")
        smtpObj.sendmail(sender, reciever, message)
        print("Successfully sent email")
    except Exception:
        print("Error: unable to send email")
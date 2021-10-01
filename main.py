import decimal,texttable,time,pyttsx3,pywhatkit,smtplib,os
import mysql.connector as ms
import stdiomask as sm
import speech_recognition as sr
import subprocess as sp
from datetime import datetime
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from email.mime.image import MIMEImage
from email.mime.message import MIMEMessage

listener = sr.Recognizer()
engine = pyttsx3.init()
engine.setProperty("rate",160)

mydb = ms.connect(host = "localhost",user = "root",password = "Tejas@035611",database = "shop")
myc = mydb.cursor()

def talk(text):
    engine.say(text)
    engine.runAndWait()

def take_command():
    try:
        with sr.Microphone() as source:
            print('listening...')
            voice = listener.listen(source)
            command = listener.recognize_google(voice)
            command = command.lower()
            if 'alexa' in command:
                command = command.replace('alexa', '')
                print(command)
    except:
        exit()
    return command

class shop():
    def __init__(self):
        self.dummy = 0
    
    def table_display(self,headings,rows,footers):
        d,d1,list_rows = {},{},[]
        for a in range(0,len(rows)):
            d[a] = list(rows[a])
        for i in range(0,len(rows[0])):
            for k in d:
                d1[k] = d[k][i]
                list_rows.append(d1[k])
        new_list_rows,i = [],0
        while i < len(list_rows):
            new_list_rows.append(list_rows[i:i+(len(rows))])
            i+=len(rows)
        rows,list_rows = new_list_rows,[]
        max_lens = []
        for col in rows:
            max_len = 0
            for elem in col:
                if type(elem) == decimal.Decimal or type(elem) == int:
                    elem = str(elem)
                if max_len <= len(elem):
                    max_len=len(elem)+4
            max_lens.append(max_len)
            str_row=""
            for i in range(0,len(col)):
                if i < len(col)-1:
                    str_row+=f"{col[i]}\n"
                elif i == len(col)-1:
                    str_row+=f"{col[i]}"
            list_rows.append(str_row)
        max_lens_head,max_len_head = [],0
        for head in headings:
            if max_len_head <= len(head):
                max_len_head = len(head)
            max_lens_head.append(max_len_head)
        col_width = []
        for i in range(len(max_lens)):
            if max_lens_head[i] > max_lens[i]:
                col_width.append(max_lens_head[i])
            else:
                col_width.append(max_lens[i])
        t = texttable.Texttable()
        t.set_cols_width(col_width)
        t.add_rows([
            headings,
            list_rows,
            footers
        ])
        return t.draw()

    def timer(self,n):
        time.sleep(n)

    def opt_0(self):
        self.timer(1)
        print('\n'+'Thank you for using the program.'+'\n')
        talk('Thank you for using the program.')
    
    def extra_opt_0(self):
        print('\nHope to see you soon in program version 1.2.0'+'\n'+'\n')
        talk('Hope to see you soon in program version 1.2.0')
        shop().timer(1.5)
        print('Program exited with exit code 0'+'\n')
        exit()

    def display(self):
        myc.execute("show tables;")
        tbs,d= list(myc.fetchall()),{}
        tbs.remove(("accounts",))
        for tb in tbs:
            if tb[0][:7] == "cart_ac":
                tbs.remove(tb)
                continue
            myc.execute(f"select * from {tb[0]};")
            items,l = myc.fetchall(),[]
            for item in items:
                item += tb
                l.append(item)
                d[tb[0]] = l
        for key in d:
            l = []
            for i in range(0,len(d[key])):
                l.append(float(d[key][i][2]))
            print(self.table_display(["ID","Name","Price","Category"],d[key],["-","-",sum(l),"-"]))

    def open_notepad(self):
        programName,fileName = "notepad.exe","file.txt"
        sp.Popen([programName, fileName])

    def search(self):
        myc.execute("show tables;")
        tbs,d,table,data = list(myc.fetchall()),{},[],[]
        tbs.remove(("accounts",))
        for tb in tbs:
            if tb[0][:7] == "cart_ac":
                tbs.remove(tb)
                continue
        print(self.table_display(headings=["Categories"],rows=tbs,footers=["-"]))
        search = input("your item to search --> ").title()
        for tb in tbs:
            myc.execute(f"select name from {tb[0]};")
            items,l = myc.fetchall(),[]
            for item in items:
                l.append(item[0])
                d[tb[0]] = l
        catg_data = []
        for elem in d:
            for item in d[elem]:
                if search.lower() in elem.lower():
                    myc.execute(f"select * from {elem}")
                    table,catg_table = myc.fetchall(),elem
                if search.lower() in item.lower():
                    myc.execute(f"select * from {elem} where name = '{item}'")
                    data.append(myc.fetchall())
                    catg_data.append(elem)

        new_table,new_data = [],[]
        if len(table) != 0:
            for tup in table:
                tup += tuple([catg_table])
                new_table.append(tup)
            l = []
            for tup in new_table:
                l.append(tup[2])
            print("\nCategory-Wise:\n")
            print(self.table_display(["ID","Name","Price","Category"],new_table,["Total:",len(new_table),sum(l),"-"]))
            self.open_notepad()
        if len(data) != 0:
            for i in range(0,len(data)):
                data[i][0] += tuple([catg_data[i]])
                new_data.append(data[i][0])
            l = []
            for tup in new_data:
                l.append(tup[2])
            print("\nItem-Wise:\n")
            print(self.table_display(["ID","Name","Price","Category"],new_data,["Total:",len(new_data),sum(l),"-"]))
            self.open_notepad()
        if len(data) == 0 and len(table) == 0:
            print("Item not found.\n")
        return data,table

    class cart():
        def __init__(self):
            self.dummy = 0
        
        def create_cart(self,accno):
            myc.execute(f"create table cart_{accno}(ID char(5),Name varchar(75),Price decimal(10,2),Quantity int);")

        def add_cart(self,accno):
            jump,item = False,""
            while not jump:
                PID = input("Product ID of your required item (0 to exit)--> ").upper()
                if PID == "0":
                    jump = True
                else:
                    Qty = int(input("Quantity of required item --> "))
                    if Qty == 100:
                        print("To avoid hordings, the quantity of items must be less than 100.")
                    elif Qty < 100:                
                        myc.execute("show tables;")
                        tbs = list(myc.fetchall())
                        tbs.remove(("accounts",))
                        for tb in tbs:
                            if tb[0][:7] == "cart_ac":
                                tbs.insert(tbs.index(tb),"chocolate")
                                tbs.remove(tb)
                            else:
                                myc.execute(f"select * from {tb[0]} where ID = '{PID}';")
                                tup = myc.fetchall()
                                for elem in tup:
                                    if len(elem) != 0:
                                        item = elem
                        item = list(item)
                        item[2] = str(item[2])
                        item.append(str(Qty))
                        item = tuple(item)
                        myc.execute(f'''insert into cart_{accno} values {item};''')
                        mydb.commit()
                    else:
                        pass
        
        def display_cart(self,accno):
            myc.execute(f"select * from cart_{accno};")
            data,new_data = myc.fetchall(),[]
            for elem in data:
                new_data.append(list(elem))
            data = new_data
            num,tot_rate,tot_price = 0,0,0
            for elem in data:
                elem.append(elem[2]*elem[3])
                tot_rate+=float(elem[2])
                num+=int(elem[3])
                tot_price+=float(elem[4])
            if len(data) != 0:
                display = shop().table_display(["PID","Name","Rate","Quantity","Price"],data,["Total:","-",tot_rate,num,tot_price])
            else:
                display =  "Your cart is empty"
            return [display,data]

        def del_cart(self,accno,ID = ""):
            if ID == "all":
                myc.execute(f"delete from cart_{accno};")
                mydb.commit()
            else:
                display = ""
                ID = input("Product ID of the item to be deleted from the cart --> ").upper()
                data = self.display_cart(accno=accno)[1]
                if len(data) != 0:
                    for item in data:
                        for elem in item:
                            if ID == elem:
                                myc.execute(f"delete from cart_{accno} where ID = '{ID}'")
                                mydb.commit()
                                display = f"Your item with the ID : {ID} has been deleted. Please select the display option to see the changes."
                                return display
                            else:
                                display = "item not found.... pls try again"
                    return display
                else:
                    print("Your cart is empty")

        def menu_opt_0(self):
            print("Returning to the main program....")
            shop.timer(shop,1.5)

        def menu(self):
            v = account().verify()
            l_opt = ['a','d','c','cls','del','exit']
            l_func = ["shop().cart().add_cart(v[1])","print(shop().cart().display_cart(v[1])[0])",
            "shop().cart().checkout().menu()","os.system('cls')","print(shop().cart().del_cart(v[1]))","exit()"]
            d_menu = {
                'a': 'To add an item to the cart with their product ID          ',
                'd': 'To display the cart in the form of a table                ',
            'del': 'To delete an item from the cart with their product ID     ',
                'c': 'To proceed to checkout menu                               ',
                '0': 'To return to the main menu                                '
            }

            if v[0]:
                while True:
                    print('\n<<----  CART_MENU  ---->>\n')
                    for elem in d_menu:
                        print('  '+d_menu[elem] + '  --> ' + elem)
                    opt = input('\nYour Option -->').lower()
                    print()
                    if opt in l_opt:
                        for elem in l_opt:
                            if opt == elem:
                                eval(l_func[l_opt.index(elem)])
                    elif opt == '0':
                        self.menu_opt_0()
                        break
                    else:
                        print('Invalid Option......')

        class checkout():
            def __init__(self):
                self.dummy = 0

            def confirmation(self,accno):
                data = shop().cart().display_cart(accno=accno)[1]
                opt = input("Proceed To checkout (y/n) ?").lower()
                if opt == 'y':
                    if len(data) == 0:
                        print("Your cart is empty")
                        return False
                    else:
                        pass
                    return True
                else:
                    print("Returning to the Cart menu....")
                    shop.timer(shop,0.7)
                    return False

            def address(self):
                print("\n     <<-- SHIPPING DETAILS -->>\n")
                ad = [input("Street name : "),
                    input("Building name/ floor no., Apt or Villa No. : "),
                    input("City: "),
                    input("Area: ")]
                return ad

            def payment(self):
                print("\n       <<-- PAYMENT DETAILS -->>\n\nCredit Card         --> cc\nDebit Card          --> dc\nCash On Delivaery   --> cash\n")
                while True:
                    opt = input("Your Option: ").lower()
                    if opt == "cc":
                        card_no = input("Card Number : ")
                        cvv = input("CVV Number : ")
                        name = input("Name on Card : ")
                        exp = input("Expiration date (mm-yyyy): ")
                        return ["Credit Card",card_no,cvv,name,exp]
                    elif opt == "dc":
                        card_no = input("Card Number : ")
                        cvv = input("CVV Number : ")
                        name = input("Name on Card : ")
                        exp = input("Expiration date (mm-yyyy): ")
                        return ["Debit Card",card_no,cvv,name,exp]
                    elif opt == "cash":
                        return ["Cash On Delivery",None,None,None,None]
                    else:
                        print("Invalid Payment Method.....")
            
            def email_billing(self,accno):
                cart = shop().cart().display_cart(accno=accno)[0]
                t = cart
                date = datetime.now().strftime("%d/%m/%Y | %H:%M:%S")
                with open(f"bill_{accno}.txt","w") as f:
                    f.write("Company Name : Shopify\n")
                    f.write(f"Bill No. : Bill_{accno}\n")
                    f.write(f"Date : {date}\n")
                    f.write(t)

            def sent_email(self,email,name,accno):
                with open("email.html","r") as f:
                    htmlstr = f.read()

                strFrom = "Shopify <shopify.noreply.000@gmail.com>"
                strTo = f"{name} <{email}>"

                msgRoot = MIMEMultipart('related')
                msgRoot['Subject'] = f'Shopify:Bill_{accno}'
                msgRoot['From'] = strFrom
                msgRoot['To'] = strTo

                msgRoot.preamble = '====================================================='

                msgAlternative = MIMEMultipart('alternative')
                msgRoot.attach(msgAlternative)

                msgText = MIMEText(htmlstr, 'html')
                msgAlternative.attach(msgText)

                fp = open('images/logo.jpeg', 'rb')
                msgImage = MIMEImage(fp.read())
                fp.close()
                msgImage.add_header('Content-ID', '<logo>')
                msgImage.add_header('Content-Disposition','attachement',filename = 'logo.png')
                msgRoot.attach(msgImage)

                ft = open(f"bill_{accno}.txt","r")
                msgTextBill = MIMEText(ft.read(),'text')
                ft.close()
                msgTextBill.add_header('Content-Disposition','attachment',filename = 'bill.txt')
                msgAlternative.attach(msgTextBill)

                smtp = smtplib.SMTP('smtp.gmail.com',587)
                smtp.ehlo()
                smtp.starttls()
                smtp.login('shopify.noreply.000@gmail.com', 'Tejas@035611')
                smtp.sendmail(strFrom, strTo, msgRoot.as_string())
                print("Succesfully send email")
                smtp.close()

            def summary(self,ad,pay,accno,email,name):
                cart,total = shop().cart().display_cart(accno=accno)[1],[]
                for item in cart:
                    total.append(int(item[-1]))
                print("\n<<----Summary:---->>\n")
                print(f"Location: {ad[2]},{ad[3]},{ad[0]}")
                print(f"Address: {ad[1]}")
                print(f"Payment Method: {pay[0]}\n")
                print("-"*100)
                if len(cart) == 0:
                    print("your cart is empty.....")
                else:
                    print(shop.table_display(shop,["PID","Name","Rate","Quantity","Price"],cart,["Total:","-","-","-",sum(total)]))
                print("-"*100)
                opt = input("\nDo you want to confirm Checkout ? (y/n)").lower()
                if opt == "y":
                    self.email_billing(accno)
                    self.sent_email(email,name,accno)
                    print("\nThank you for shopping from our store. You will receive an email regarding the purchase")
                    shop().cart().del_cart(accno=accno,ID="all")
                elif opt == "n":
                    print("\nOh. Looks like you need more items....")
                else:
                    print("Invalid option....")

            def menu(self):
                v = account().verify()
                if self.confirmation(v[1]):
                    if v[0]:
                        myc.execute(f"select * from accounts where Accno = '{v[1]}'")
                        data = eval(myc.fetchall()[0][-1])
                        address,payment = data[-2],data[-1]
                        self.summary(address,payment,v[1],v[2],v[3])
                    else:
                        print("Failed to verify your account.")

class account():
    def __init__(self):
        self.dummy = 0

    def confirm(self):
        print("\n<<---- STARTUP PAGE(  www.shopify.ae  ) ---->>\n")
        print("Hi there,\n")
        talk("Hi there,")
        print("Welcome to shopify\n")
        talk("Welcome to shopify")
        print("If you want to exit the shop at anytime, you can type '0' where ever specified.")
        talk("If you want to exit the shop at anytime, you can type '0' where ever specified.\n")
        talk("Do you have an account ?")
        opt = input("Do you have an account ? (y/n) : ").lower()
        if opt == "0":
            shop().extra_opt_0()
        else:
            return opt

    def accno(self):
        import random
        l,main_l = [12,37,29,42,57,63,95,84,79],[]
        for i in range(random.randint(30,51)):
            num1,num2,i = l[random.randint(0,8)],l[random.randint(0,8)],i
            n1,n2 = random.randint(1,99),random.randint(1,99)
            result = num1+num2+n1+n2
            main_l.append(result)
        result = main_l[random.randint(1,len(main_l)-1)]
        if len(str(result)) < 3:
            result = f"ac0{str(result)}"
        elif len(str(result)) == 3:
            result = f"ac{str(result)}"
        else:
            pass
        return result

    def create(self):
        database,flag,password = {},False,""
        print("\n<<---- SIGNUP PAGE ---->>\n")
        while not flag:
            email,first_name,last_name = input("Email-ID : ").lower(),input("First Name : "),input("Last Name : ")
            dob,no,gender = input("Date of Birth (yyyy-mm-dd): "),input("Phone No.: "),input("Gender (M/F): ")
            password1 = sm.getpass(prompt= "Password : ")
            password2 = sm.getpass(prompt= "Confirm Password : ")
            if password1 == password2:
                password = password2
            else:
                print("Password does not match. Please try again 😀")
            if len(password) >= 8 and len(password) <=15:
                flag = True
            else:
                print("Minimum 8 Maximum 15 characters are required for the password.")
        name = first_name+" "+last_name
        address,payment = shop().cart().checkout().address(),shop().cart().checkout().payment()
        if email.partition("@")[-1].partition(".")[0].lower() in ["gmail","yahoo"]  and len(no) == 10:
            info = [name,password,no,gender,dob]
            info.append(address)
            info.append(payment)
            database[email] = info
            accno = self.accno()
            shop().cart().create_cart(accno)
        else:
            print("Invalid Email-ID/Password . Please try again.")
        for email in database:
            myc.execute(f'''insert into accounts value("{accno}","{email}","{database[email]}");''')
        mydb.commit()
    
    def login(self):
        print("\n<<---- LOGIN PAGE ---->>\n")
        email = input("Email-ID : ").lower()
        password = sm.getpass(prompt= "Password : ")
        if email.partition("@")[-1].partition(".")[0].lower() in ["gmail","yahoo"]:
            myc.execute("select * from accounts;")
            data,new_data = myc.fetchall(),[]
            for acc in data:
                new_data.append(list(acc))
            data = new_data
            for acc in data:
                acc[2] = eval(acc[2])[1]
                if [email,password] == acc[1:]:
                    print("You have logged in succesfully\n")
                    return True
            print("Your account was not found.....")
        else:
            print("Invalid Email-ID. Please try again.")
    
    def verify(self):
        result = (False,False)
        print("Please Verify again...")
        talk("Please Verify again...")
        myc.execute(f"select * from accounts;")
        email=input("Email-ID : ").lower()
        password = sm.getpass(prompt= "Password : ")
        data = myc.fetchall()
        if email.partition("@")[-1].partition(".")[0].lower() in ["gmail","yahoo"]:
            for tup in data:
                if email == tup[1] and password == eval(tup[2])[1]:
                    return True,tup[0],email,eval(tup[2])[0]
                else:
                    result = False,False,False
        return result

    class settings():
        def __init__(self):
            self.dummy = 0
        
        def display_info(self,email):
            myc.execute(f"select * from accounts where Email_ID = '{email}';")
            data = myc.fetchall()
            address,payment = eval(data[0][2])[-2],eval(data[0][2])[-1]
            ad = ["Street name : ","Building name/ floor no., Apt or Villa No. : ","City: ","Area: "]
            pay = ["Payment Method : ","Card Number : ","CVV Number : ","Name of the card : ","Expiry Date : "]
            print("\n<-- Address Info -->\n")
            for i in range(len(address)):
                print(f"{i+1}.) ",ad[i],address[i],sep = "")
            print("\n<-- Payment Info -->\n")
            for i in range(len(payment)):
                print(f"{i+5}.) ",pay[i],payment[i],sep = "")
            return ad+pay,address+payment
            
        def edit_info1(self,email):
            info,information = self.display_info(email)
            print("\nWhich Option Would you like to edit ? (type 0 to exit) : ")
            index = int(input("Provide the Index Number : "))
            if index == 0:
                print("No Edits made.")
            elif index in range(1,len(information)+1):
                new = input("\n"+info[index-1])
                information[index-1] = new
                address,payment = information[:4],information[4:]
                myc.execute(f"select * from accounts where Email_ID = '{email}';")
                data = myc.fetchall()
                old_info = eval(list(data[0])[-1])
                old_info[-1],old_info[-2] = payment,address
                myc.execute(f'''update accounts set Info = "{old_info}" where Email_ID = "{email}";''')
                mydb.commit()
                print("Changes Saved. Please select the display option to view the changes.")
            else:
                print("Invalid Index. Please try again....")
        
        def edit_info2(self,email):
            myc.execute(f"select * from accounts where Email_ID = '{email}';")
            data = myc.fetchall()
            info = eval(data[0][2])
            print("\nDo you want to change your \n1.) Password\n2.) Phone No.")
            index = int(input("Mention the index provided --> "))
            if index == 0:
                print("No Edits made.")
            elif index == 1:
                info[1] = input("New Password : ")
                myc.execute(f'''update accounts set Info = "{info}" where Email_ID = "{email}";''')
                mydb.commit()
            elif index == 2:
                info[2] = input("New Phone No. : ")
                myc.execute(f'''update accounts set Info = "{info}" where Email_ID = "{email}";''')
                mydb.commit()
            else:
                print("Invalid Index. Please try again....")

        def del_acc(self,email):
            opt = input("\nAre you sure you want to delete your account ? (y/n)").lower()
            if opt == "y":
                myc.execute(f"select Accno from accounts where Email_ID = '{email}';")
                data = myc.fetchall()
                no = data[0][0]
                myc.execute(f"delete from accounts where Email_ID = '{email}';")
                myc.execute(f"drop table cart_{no};")
                mydb.commit()
                print("Your account has been deleted.")
            elif opt == "n":
                print("Your account has not been deleted.")
            else:
                print("Invalid Option. Try again...")

        def menu_info(self):
            v = account().verify()
            l_opt = ['d','e1','e2','del','cls','exit']
            l_func = ['account().settings().display_info(v[2])','account().settings().edit_info1(v[2])',
            'account().settings().edit_info2(v[2])','account().settings().del_acc(v[2])',"os.system('cls')","exit()"]
            d_menu = {     
                'd': 'To display your Address and Payment Details               ',
                'e1': 'To edit Address and Payment related Details               ',
                'e2': 'To change Password and Phone No.                          ',
                'del': 'To delete your Account forever   (DANGER AREA!!!!)        ',
                '0': 'To exit the settings                                      '
            }
            if v[0]:
                while True:
                    print('\n<<----  SETTINGS_MENU  ---->>\n')
                    for elem in d_menu:
                        print('  '+d_menu[elem] + '  --> ' + elem)
                    opt = input('\nYour Option -->').lower()
                    print()
                    if opt in l_opt:
                        for elem in l_opt:
                            if opt == elem:
                                eval(l_func[l_opt.index(elem)])
                    elif opt == '0':
                        shop().cart().menu_opt_0()
                        break
                    else:
                        print('Invalid Option......')
            else:
                print("Account Verification failed. Please try again.")

l_opt = ['d','s','a','c','cls','exit']
l_func = ["shop().display()","shop().search()","account().settings().menu_info()","shop().cart().menu()","os.system('cls')","exit()"]
d_menu = {
    'd': "To display all the items available                            ",
    's': "To search for any item category wise or using a hint of name  ",
    'a': "To open account settings                                      ",
    'c': "To open the cart menu                                         ",
    '0': "To stop the main program                                      "
}
jump = False
while not jump:
    while not jump:
        if account().confirm() == "y":
            if account().login():
                jump = True
            else:
                print("Please Try again...") 
        else:
            print("create an account.....")
            account().create()

    while jump:
        print('\n<<----  SHOPIFY  ---->>\n')
        for elem in d_menu:
            print('  '+d_menu[elem] + '  --> ' + elem)
        opt = input('\nYour Option --> ').lower()
        print()
        if opt in l_opt:
            for elem in l_opt:
                if opt == elem:
                    eval(l_func[l_opt.index(elem)])
        elif opt == '0':
            shop().opt_0()
            jump = False
            break
        else:
            print('Invalid Option......')

# shop().cart().checkout().email_billing("ac282")
# shop().cart().checkout().sent_email("tejascoder035611@gmail.com","Tejas Coder","ac282")
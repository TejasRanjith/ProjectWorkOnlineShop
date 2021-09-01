import decimal,texttable,time,os
import mysql.connector as ms
import stdiomask as sm
import speech_recognition as sr
import pyttsx3
import pywhatkit
import datetime

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
        self.timer(1)
        print('Hope to see you soon in program version 1.2.0'+'\n'+'\n')
        talk('Hope to see you soon in program version 1.2.0')
        self.timer(1.5)
        print('Program exited with exit code 0'+'\n')

    def display(self):
        # mydb = ms.connect(host = "localhost",
        # user = "root",password = "Tejas@035611",
        # database = "shop")
        # myc = mydb.cursor()
        myc.execute("show tables;")
        tbs,d= list(myc.fetchall()),{}
        tbs.remove(("accounts",))
        tbs.remove(("cart",))
        for tb in tbs:
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

    def search(self):
        myc.execute("show tables;")
        tbs,d,table,data = list(myc.fetchall()),{},[],[]
        tbs.remove(("accounts",))
        tbs.remove(("cart",))
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
                if search.lower() in elem:
                    myc.execute(f"select * from {elem}")
                    table,catg_table = myc.fetchall(),elem
                if search in item:
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
        if len(data) != 0:
            for i in range(0,len(data)):
                data[i][0] += tuple([catg_data[i]])
                new_data.append(data[i][0])
            l = []
            for tup in new_data:
                l.append(tup[2])
            print("\nItem-Wise:\n")
            print(self.table_display(["ID","Name","Price","Category"],new_data,["Total:",len(new_data),sum(l),"-"]))
        if len(data) == 0 and len(table) == 0:
            print("Item not found.\n")
        return data,table

    class cart():
        def __init__(self):
            self.dummy = 0
        
        def add_cart(self):
            PID = input("Product ID of your required item -->").capitalize()
            Qty = int(input("Quantity of required item -->"))
            # mydb = ms.connect(host = "localhost",
            # user = "root",password = "Tejas@035611",
            # database = "shop")
            # myc = mydb.cursor()
            myc.execute("show tables;")
            tbs = list(myc.fetchall())
            tbs.remove(("accounts",))
            tbs.remove(("cart",))
            for tb in tbs:
                myc.execute(f"select * from {tb[0]} where ID = '{PID}';")
                tup = myc.fetchall()
                for elem in tup:
                    if len(elem) != 0:
                        item = elem
            item = list(item)
            item[2] = str(item[2])
            item.append(str(Qty))
            item = tuple(item)
            myc.execute(f'''insert into cart values {item};''')
            mydb.commit()
        
        def display_cart(self):
            # mydb = ms.connect(host = "localhost",
            # user = "root",password = "Tejas@035611",
            # database = "shop")
            # myc = mydb.cursor()
            myc.execute("select * from cart;")
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

        def del_cart(self,ID = ""):
            # mydb = ms.connect(host = "localhost",
            # user = "root",password = "Tejas@035611",
            # database = "shop")
            # myc = mydb.cursor()
            if ID == "all":
                myc.execute(f"delete from cart;")
                mydb.commit()
            else:
                display = ""
                ID = input("Product ID of the item to be deleted from the cart --> ").upper()
                data = self.display_cart()[1]
                # print(data)  #.y[['UT01', 'Insulated Plastic Flask', Decimal('6.50'), 2, Decimal('13.00')]
                #.y,['UT03', 'Insulated Plastic Flask', Decimal('6.50'), 2, Decimal('13.00')]]
                for item in data:
                    for elem in item:
                        print(elem)
                        if ID == elem:
                            myc.execute(f"delete from cart where Product_ID = '{ID}'")
                            mydb.commit()
                            display = f"Your item with the ID : {ID} had been deleted. Please select the display option to see the changes."
                            return display
                        else:
                            display = "item not found.... pls try again"
                return display

        def menu_opt_0(self):
            print("Returning to the main program....")
            shop.timer(shop,1.5)

        def menu(self):
            l_opt = ['a','d','c','cls','del','exit']
            l_func = ["shop().cart().add_cart()","print(shop().cart().display_cart()[0])",
            "shop().cart().checkout().menu()","os.system('cls')","print(shop().cart().del_cart())","exit()"]
            d_menu = {
                'a': 'To add an item to the cart with their product ID          ',
                'd': 'To display the cart in the form of a table                ',
            'del': 'To delete an item from the cart with their product ID     ',
                'c': 'To proceed to checkout menu                               ',
                '0': 'To return to the main menu                                '
            }

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

            def confirmation(self):
                data = shop().cart().display_cart()[1]
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
                print("\n       <<-- PAYMENT DETAILS -->>\n\nCredit Card         --> cc\nDebit Card          --> dc\nCash On Delivaery   --> cash")
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
                        return ["Cash On Delivery"]
                    else:
                        print("Invalid Payment Method.....")

            def discount(self):
                pass

            def summary(self,ad,pay):
                cart,total = shop().cart().display_cart()[1],[]
                for item in cart:
                    total.append(int(item[-1]))
                print("\n<<----Summary:---->>\n")
                print(f"Location: {ad[2]},{ad[3]},{ad[0]}")
                print(f"Address: {ad[1]}")
                print(f"Payment Method: {pay[0]}\n")
                print(f"Card Number: {pay[1]}")
                print(f"Card Name: {pay[3]}")
                print(f"CVV Number: {pay[2]}")
                print("-"*100+"\n")
                if len(cart) == 0:
                    print("your cart is empty.....")
                else:
                    print(shop.table_display(shop,["PID","Name","Rate","Quantity","Price"],cart,["Total:","-","-","-",total]))
                print("-"*100)
                opt = input("\nDo you want to confirm Checkout ? (y/n)").lower()
                if opt == "y":
                    print("\nThank you for shopping from our store. 😀😀😀")
                elif opt == "n":
                    print("\nOh. Looks like you need more items.... 😁😁😁")
                else:
                    print("Invalid option....  🤔🤔🤔")
                # print(f"Coupoun Code Applied: {pay[1][1]}")
                # print(f"Discount Applied: {pay[1][0]}")

            def menu(self):
                # if self.confirmation():
                if True:
                    v = account().verify()
                    if v[0]:
                        myc.execute(f"select * from accounts where Email_ID = '{v[1]}'")
                        data = eval(myc.fetchall()[0][-1])
                        address,payment = data[-2],data[-1]
                        self.summary(address,payment)
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
            exit()
        else:
            return opt

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
        name = first_name+" "+last_name
        address,payment = shop().cart().checkout().address(),shop().cart().checkout().payment()
        if email.partition("@")[-1].partition(".")[0].lower() in ["gmail","yahoo"]  and len(no) == 10:
            info = [name,password,no,gender,dob]
            info.append(address)    #.r   -2
            info.append(payment)    #.r   -1
            database[email] = info
        else:
            print("Invalid Email-ID/Password . Please try again.")
        for email in database:
            myc.execute(f'''insert into accounts value("{email}","{database[email]}");''')
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
                acc[1] = eval(acc[1])[1]
                if [email,password] == acc:
                    print("You have logged in succesfully\n")
                    return True
            print("Your account was not found.....")
        else:
            print("Invalid Email-ID. Please try again.")

    def settings(self): #.r   INCOMPLETE....INCOMPLETE.....INCOMPLETE......INCOMPLETE
        v = self.verify()
        if v[0]:
            myc.execute(f"select * from accounts where Email_ID = '{v[1]}';")
            data = myc.fetchall()
            for acc in data:
                l = eval(acc[1])
                print(l)

    def verify(self):
        print("Please Verify again...")
        talk("Please Verify again...")
        myc.execute(f"select * from accounts;")
        email=input("Email-ID : ").lower()
        password = sm.getpass(prompt= "Password : ")
        data = myc.fetchall()
        if email.partition("@")[-1].partition(".")[0].lower() in ["gmail","yahoo"]:
            for tup in data:
                if email == tup[0] and password == eval(tup[1])[1]:
                    return True,email
                else:
                    result = False,False
        return result


l_opt = ['d','s','a','c','cls','exit']
l_func = ["shop().display()","shop().search()","account().settings()","shop().cart().menu()","os.system('cls')","exit()"]
d_menu = {
    'd': "To display all the items available                            ",
    's': "To search for any item category wise or using a hint of name  ",
    'a': "To open account settings                                      ",
    'c': "To open the cart menu                                         ",
    '0': "To stop the main program                                      "
}
jump = False
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
    print('<<----  SHOPIFY  ---->>\n')
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
        break
    else:
        print('Invalid Option......')

# # account().create()
# # account().settings()
# shop().cart().checkout().menu()
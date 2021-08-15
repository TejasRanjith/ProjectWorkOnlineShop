import mysql.connector as ms
from prettytable import PrettyTable
import stdiomask as sm
import os

def timer(n):
    import time
    time.sleep(n)

def opt_0():
    timer(1)
    print('\n'+'Thank you for using the program.'+'\n')
    timer(1)
    print('Hope to see you soon in program version 1.2.0'+'\n'+'\n')
    timer(1.5)
    print('Program exited with exit code 0'+'\n')

def table_display(rows,fields):
    from prettytable import PrettyTable
    t = PrettyTable()
    t.field_names,count = fields,0
    for row in rows:
        count+=1
        t.add_row(row)
    
    return t

# .y basic functions....↑ ↑ ↑ ↑ ↑ ↑

def search():
    mydb = ms.connect(host = "localhost",
    user = "root",password = "Tejas@035611",
    database = "shop")
    myc = mydb.cursor()
    myc.execute("show tables;")
    tbs,d,table,data = list(myc.fetchall()),{},[],[]
    tbs.remove(("accounts",))
    tbs.remove(("cart",))
    print(table_display(tbs,["Categories"]))
    search = input("your item to search --> ").capitalize()
    for tb in tbs:
        myc.execute(f"select name from {tb[0]};")
        items,l = myc.fetchall(),[]
        for item in items:
            l.append(item[0])
            d[tb[0]] = l
    for elem in d:
        for item in d[elem]:
            if search.lower() in elem:
                myc.execute(f"select * from {elem}")
                table,catg_table = myc.fetchall(),elem
            if search in item:
                myc.execute(f"select * from {elem} where name = '{item}'")
                data.append(myc.fetchall())
                catg_data = elem

    new_table,new_data = [],[]
    if len(table) != 0:
        for tup in table:
            tup += tuple([catg_table])
            new_table.append(tup)
        print(table_display(new_table,["ID","Name","Price","Category"]))
    if len(data) != 0:
        for l in data:
            l[0] += tuple([catg_data])
            new_data.append(l[0])
        print(table_display(new_data,["ID","Name","Price","Category"]))
    
    return data,table

def display():
    mydb = ms.connect(host = "localhost",
    user = "root",password = "Tejas@035611",
    database = "shop")
    myc = mydb.cursor()
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
        print(table_display(d[key],["ID","Name","Price","Category"]))

def account():
    name = input("Name : ")
    email = input("Email-ID : ")
    password = sm.getpass(prompt= "Password : ")
    database = {}
    if email.partition("@")[-1].partition(".")[0].lower() in ["gmail","yahoo"]:
        database[email] = [name,password]
    mydb = ms.connect(host = "localhost",
    user = "root",password = "Tejas@035611",
    database = "shop")
    myc = mydb.cursor()
    for email in database:
        myc.execute(f'''insert into accounts values
    ('{database[email][0]}','{email}','{database[email][1]}');''')
    mydb.commit()

def cart():

    def add_cart():
        PID = input("PID -->").capitalize()
        Qty = int(input("Qty -->"))
        mydb = ms.connect(host = "localhost",
        user = "root",password = "Tejas@035611",
        database = "shop")
        myc = mydb.cursor()
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
        print(item)
        item = tuple(item)
        myc.execute(f'''insert into cart values {item};''')
        mydb.commit()
    
    def del_cart():
        mydb = ms.connect(host = "localhost",
        user = "root",password = "Tejas@035611",
        database = "shop")
        myc = mydb.cursor()
        ID = input("Product ID of the item to be deleted from the cart --> ")
        myc.execute(f"delete from cart where Product_ID = '{ID}'")
        mydb.commit()

    def display_cart():
        mydb = ms.connect(host = "localhost",
        user = "root",password = "Tejas@035611",
        database = "shop")
        myc = mydb.cursor()
        myc.execute("select * from cart;")
        data,new_data = myc.fetchall(),[]
        for elem in data:
            new_data.append(list(elem))
        data = new_data
        for elem in data:
            elem.append(elem[2]*elem[3])
        if len(data) != 0:
            display = table_display(data,["PID","Name","Rate","Quantity","Price"])
            return [display,data]
        else:
            return "Your cart is empty"
    
    def menu_opt_0():
        print("Returning to the main program....")
        timer(1.5)
    
    def checkout():

        def confirmation():
            opt = input("Proceed To checkout (y/n) ?").lower()
            if opt == 'y':
                if type(cart) == None:
                    print("Your cart is empty")
                    return False
                else:
                    pass
                return True
            else:
                print("Returning to the Cart menu....")
                timer(1)
                return False

        def address():
            print("\n     <<-- SHIPPING DETAILS -->>\n")
            ad = [input("Address: "),
                input("First Name: "),
                input("Last Name: "),
                input("Phone No.: "),
                input("City: "),
                input("Area: ")]
            return ad

        def payment():
            discount = 0
            print("\n       <<-- PAYMENT DETAILS -->>\n\nCredit Card         --> cc\nDebit Card          --> dc\nCash On Delivaery   --> cash")
            while True:
                coup = input("Do you have a coupon code ? (y/n)").lower()
                if coup == "y":
                    code = input("Coupon Code: ").upper()
                    if code == "FREE":
                        print("Thank you for applying the coupon code.")
                        discount = [0,"FREE"]
                    elif code == "DIS75":
                        print("Thank you for applying the coupon code.")
                        discount = [0.75,"DIS75"]
                    else:
                        print("The above code doesn't exist....")
                opt = input("Your Option: ").lower()
                if opt == "cc":
                    return ["Credit Card",discount]
                elif opt == "dc":
                    return ["Debit Card",discount]
                elif opt == "cash":
                    return ["Cash On Delivery",discount]
                else:
                    print("Invalid Payment Method.....")

        def summary(ad,pay):
            cart,total = display_cart()[1],[]
            for item in cart:
                total.append(item[-1])
            print("Summary:\n")
            print(f"Location: {ad[4]},{ad[5]}")
            print(f"Address: {ad[0]}")
            print(f"Payment Method: {pay[0]}")
            print(table_display(cart,["PID","Name","Rate","Quantity","Price"]))
            print("-"*100)
            print(f"Coupoun Code Applied: {pay[1][1]}")
            print(f"Discount Applied: {pay[1][0]}")
            print("Total: ",sum(total)*pay[1][0],sep = "\n\n       ")
            print("-"*100+"\n")
        
        if confirmation():
            address = address()
            payment = payment()
            summary(address,payment)
    
    l_opt = ['a','d','c','cls','del','sum']
    l_func = ["add_cart()","print(display_cart()[0])","checkout()","os.system('cls')","del_cart()"]
    d_menu = {
        'a': 'To add an item to the cart with their product ID          ',
        'd': 'To display the cart in the form of a table                ',
      'del': 'To delete an item from the cart with their product ID     ',
        'c': 'To proceed to checkout menu                               ',
        '0': 'To return to the main menu                                '
    }
    while True:
        print('<<----  CART_MENU  ---->>\n')
        for elem in d_menu:
            print('  '+d_menu[elem] + '  --> ' + elem)
        opt = input('\nYour Option -->').lower()
        print()
        if opt in l_opt:
            for elem in l_opt:
                if opt == elem:
                    eval(l_func[l_opt.index(elem)])
        elif opt == '0':
            menu_opt_0()
            break
        else:
            print('Invalid Option......')

l_opt = ['d','s','a','c','cls','exit']
l_func = ["display()","search()","account()","cart()","os.system('cls')","exit()"]
d_menu = {
    'd': "To display all the items available                            ",
    's': "To search for any item category wise or using a hint of name  ",
    'a': "To create an account                                          ",
    'c': "To open the cart menu                                         ",
    '0': "To stop the main program                                      "
}

while True:
    print('\n<<----  SHOP  ---->>\n')
    for elem in d_menu:
        print('  '+d_menu[elem] + '  --> ' + elem)
    opt = input('\nYour Option --> ').lower()
    print()
    if opt in l_opt:
        for elem in l_opt:
            if opt == elem:
                eval(l_func[l_opt.index(elem)])
    elif opt == '0':
        opt_0()
        break
    else:
        print('Invalid Option......')

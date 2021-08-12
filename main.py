import mysql.connector as ms
from prettytable import PrettyTable
import stdiomask as sm
import os

def table_display(rows,fields):
    from prettytable import PrettyTable
    t = PrettyTable()
    t.field_names = fields
    for row in rows:
        t.add_row(row)
    return t

def search():
    mydb = ms.connect(host = "localhost",
    user = "root",password = "Tejas@035611",
    database = "shop")
    myc = mydb.cursor()
    myc.execute("show tables;")
    tbs,d= list(myc.fetchall()),{}
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
    data,table,result = [],[],[]
    for elem in d:
        for item in d[elem]:
            if search.lower() in elem:
                myc.execute(f"select * from {elem};")
                result = myc.fetchall()
            if search in item:
                myc.execute(f"select * from {elem} where name = '{item}';")
                info = myc.fetchall()[0]
                info += tuple([elem])
                data.append(info)
    if len(data) != 0:
        print(table_display(data,["ID","Name","Price","Category"]))
    for row in result:
        row += tuple([elem])
        table.append(row)
    if len(table) != 0:
        print(table_display(table,["ID","Name","Price","Category"]))
    
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
        myc
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
        myc.execute(f'''insert into cart values {item}''')
        mydb.commit()
    
    def display_cart():
        print("Display Cart")
    
    add_cart()
    display_cart()

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
    exit()

l_opt = ['d','s','a','c','cls','exit','0']
l_func = ["display()","search()","account()","cart()","os.system('cls')","exit()",'opt_0()']
d_menu = {
    'd': "To display all the items available                            ",
    's': "To search for any item category wise or using a hint of name  ",
    'a': "To create an account                                          ",
    '0': "To stop the main program                                      "
}

while True:
    print('<<----  SHOP  ---->>\n')
    for elem in d_menu:
        print('  '+d_menu[elem] + '  --> ' + elem)
    opt = input('\nYour Option --> ').lower()
    print()
    if opt in l_opt:
        for elem in l_opt:
            if opt == elem:
                eval(l_func[l_opt.index(elem)])
    else:
        print('Invalid Option......')
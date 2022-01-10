# import mysql.connector as ms
# import stdiomask as sm
# import os,time,texttable,decimal

# def timer(n):
#     time.sleep(n)

# def opt_0():
#     timer(1)
#     print('\n'+'Thank you for using the program.'+'\n')
#     timer(1)
#     print('Hope to see you soon in program version 1.2.0'+'\n'+'\n')
#     timer(1.5)
#     print('Program exited with exit code 0'+'\n')

# def table_display(headings,rows,footers):
#     d,d1,list_rows = {},{},[]
#     for a in range(0,len(rows)):
#         d[a] = list(rows[a])
#     for i in range(0,len(rows[0])):
#         for k in d:
#             d1[k] = d[k][i]
#             list_rows.append(d1[k])
#     new_list_rows,i = [],0
#     while i < len(list_rows):
#         new_list_rows.append(list_rows[i:i+(len(rows))])
#         i+=len(rows)
#     rows,list_rows = new_list_rows,[]
#     max_lens = []
#     for col in rows:
#         max_len = 0
#         for elem in col:
#             if type(elem) == decimal.Decimal or type(elem) == int:
#                 elem = str(elem)
#             if max_len <= len(elem):
#                 max_len=len(elem)+4
#         max_lens.append(max_len)
#         str_row=""
#         for i in range(0,len(col)):
#             if i < len(col)-1:
#                 str_row+=f"{col[i]}\n"
#             elif i == len(col)-1:
#                 str_row+=f"{col[i]}"
#         list_rows.append(str_row)
#     max_lens_head,max_len_head = [],0
#     for head in headings:
#         if max_len_head <= len(head):
#             max_len_head = len(head)
#         max_lens_head.append(max_len_head)
#     col_width = []
#     for i in range(len(max_lens)):
#         if max_lens_head[i] > max_lens[i]:
#             col_width.append(max_lens_head[i])
#         else:
#             col_width.append(max_lens[i])
#     t = texttable.Texttable()
#     t.set_cols_width(col_width)
#     t.add_rows([
#         headings,
#         list_rows,
#         footers
#     ])
#     return t.draw()
# # .y basic functions....↑ ↑ ↑ ↑ ↑ ↑

# def display():
#     mydb = ms.connect(host = "localhost",
#     user = "root",password = "Tejas@035611",
#     database = "shop")
#     myc = mydb.cursor()
#     myc.execute("show tables;")
#     tbs,d= list(myc.fetchall()),{}
#     tbs.remove(("accounts",))
#     tbs.remove(("cart",))
#     for tb in tbs:
#         myc.execute(f"select * from {tb[0]};")
#         items,l = myc.fetchall(),[]
#         for item in items:
#             item += tb
#             l.append(item)
#             d[tb[0]] = l
#     for key in d:
#         l = []
#         for i in range(0,len(d[key])):
#             l.append(float(d[key][i][2]))
#         print(table_display(["ID","Name","Price","Category"],d[key],["-","-",sum(l),"-"]))

# def search():
#     mydb = ms.connect(host = "localhost",
#     user = "root",password = "Tejas@035611",
#     database = "shop")
#     myc = mydb.cursor()
#     myc.execute("show tables;")
#     tbs,d,table,data = list(myc.fetchall()),{},[],[]
#     tbs.remove(("accounts",))
#     tbs.remove(("cart",))
#     print(table_display(headings=["Categories"],rows=tbs,footers=["-"]))
#     search = input("your item to search --> ").title()
#     for tb in tbs:
#         myc.execute(f"select name from {tb[0]};")
#         items,l = myc.fetchall(),[]
#         for item in items:
#             l.append(item[0])
#             d[tb[0]] = l
#     catg_data = []
#     for elem in d:
#         for item in d[elem]:
#             if search.lower() in elem:
#                 myc.execute(f"select * from {elem}")
#                 table,catg_table = myc.fetchall(),elem
#             if search in item:
#                 myc.execute(f"select * from {elem} where name = '{item}'")
#                 data.append(myc.fetchall())
#                 catg_data.append(elem)

#     new_table,new_data = [],[]
#     if len(table) != 0:
#         for tup in table:
#             tup += tuple([catg_table])
#             new_table.append(tup)
#         l = []
#         for tup in new_table:
#             l.append(tup[2])
#         print("\nCategory-Wise:\n")
#         print(table_display(["ID","Name","Price","Category"],new_table,["Total:",len(new_table),sum(l),"-"]))
#     if len(data) != 0:
#         for i in range(0,len(data)):
#             data[i][0] += tuple([catg_data[i]])
#             new_data.append(data[i][0])
#         l = []
#         for tup in new_data:
#             l.append(tup[2])
#         print("\nItem-Wise:\n")
#         print(table_display(["ID","Name","Price","Category"],new_data,["Total:",len(new_data),sum(l),"-"]))
    
#     return data,table

# def cart():

#     def add_cart():
#         PID = input("Product ID of your required item -->").capitalize()
#         Qty = int(input("Quantity of required item -->"))
#         mydb = ms.connect(host = "localhost",
#         user = "root",password = "Tejas@035611",
#         database = "shop")
#         myc = mydb.cursor()
#         myc.execute("show tables;")
#         tbs = list(myc.fetchall())
#         tbs.remove(("accounts",))
#         tbs.remove(("cart",))
#         for tb in tbs:
#             myc.execute(f"select * from {tb[0]} where ID = '{PID}';")
#             tup = myc.fetchall()
#             for elem in tup:
#                 if len(elem) != 0:
#                     item = elem
#         item = list(item)
#         item[2] = str(item[2])
#         item.append(str(Qty))
#         item = tuple(item)
#         myc.execute(f'''insert into cart values {item};''')
#         mydb.commit()
    
#     def display_cart():
#         mydb = ms.connect(host = "localhost",
#         user = "root",password = "Tejas@035611",
#         database = "shop")
#         myc = mydb.cursor()
#         myc.execute("select * from cart;")
#         data,new_data = myc.fetchall(),[]
#         for elem in data:
#             new_data.append(list(elem))
#         data = new_data
#         num,tot_rate,tot_price = 0,0,0
#         for elem in data:
#             elem.append(elem[2]*elem[3])
#             tot_rate+=float(elem[2])
#             num+=int(elem[3])
#             tot_price+=float(elem[4])
#         if len(data) != 0:
#             display = table_display(["PID","Name","Rate","Quantity","Price"],data,["Total:","-",tot_rate,num,tot_price])
#         else:
#             display =  "Your cart is empty"
#         return [display,data]

#     def del_cart(ID = ""):
#         mydb = ms.connect(host = "localhost",
#         user = "root",password = "Tejas@035611",
#         database = "shop")
#         myc = mydb.cursor()
#         if ID == "all":
#             myc.execute(f"delete from cart;")
#             mydb.commit()
#         else:
#             display = ""
#             ID = input("Product ID of the item to be deleted from the cart --> ").upper()
#             data = display_cart()[1]
#             # print(data)  #.y[['UT01', 'Insulated Plastic Flask', Decimal('6.50'), 2, Decimal('13.00')]
#             #.y,['UT03', 'Insulated Plastic Flask', Decimal('6.50'), 2, Decimal('13.00')]]
#             for item in data:
#                 for elem in item:
#                     print(elem)
#                     if ID == elem:
#                         myc.execute(f"delete from cart where Product_ID = '{ID}'")
#                         mydb.commit()
#                         display = f"Your item with the ID : {ID} had been deleted. Please select the display option to see the changes."
#                         return display
#                     else:
#                         display = "item not found.... pls try again"
#             return display
    
#     def menu_opt_0():
#         print("Returning to the main program....")
#         timer(1.5)
    
#     def checkout():

#         def confirmation():
#             cart = display_cart()[1]
#             opt = input("Proceed To checkout (y/n) ?").lower()
#             if opt == 'y':
#                 if len(cart) == 0:
#                     print("Your cart is empty")
#                     return False
#                 else:
#                     pass
#                 return True
#             else:
#                 print("Returning to the Cart menu....")
#                 timer(1)
#                 return False

#         def address():
#             print("\n     <<-- SHIPPING DETAILS -->>\n")
#             ad = [input("Address: "),
#                 input("First Name: "),
#                 input("Last Name: "),
#                 input("Phone No.: "),
#                 input("City: "),
#                 input("Area: ")]
#             return ad

#         def payment():
#             discount = []
#             print("\n       <<-- PAYMENT DETAILS -->>\n\nCredit Card         --> cc\nDebit Card          --> dc\nCash On Delivaery   --> cash")
#             while True:
#                 coup = input("Do you have a coupon code ? (y/n)").lower()
#                 if coup == "y":
#                     code = input("Coupon Code: ").upper()
#                     if code == "FREE":
#                         print("Thank you for applying the coupon code.")
#                         discount = [0,"FREE"]
#                     elif code == "DIS75":
#                         print("Thank you for applying the coupon code.")
#                         discount = [0.75,"DIS75"]
#                     else:
#                         print("The above code doesn't exist....")
#                         discount = ["no discount","no discount"]
#                 else:
#                     discount = ["null","no coupoun code applied"]
#                 opt = input("Your Option: ").lower()
#                 if opt == "cc":
#                     return ["Credit Card",discount]
#                 elif opt == "dc":
#                     return ["Debit Card",discount]
#                 elif opt == "cash":
#                     return ["Cash On Delivery",discount]
#                 else:
#                     print("Invalid Payment Method.....")

#         def summary(ad,pay):
#             cart,total = display_cart()[1],[]
#             for item in cart:
#                 total.append(int(item[-1]))
#             print("Summary:\n")
#             print(f"Location: {ad[4]},{ad[5]}")
#             print(f"Address: {ad[0]}")
#             print(f"Payment Method: {pay[0]}")
#             if pay[1][0] == "null":
#                 total = sum(total)
#             else:
#                 total = sum(total)*pay[1][0]
#             print("-"*100+"\n")
#             if len(cart) == 0:
#                 print("your cart is empty.....")
#             else:
#                 print(table_display(["PID","Name","Rate","Quantity","Price"],cart,["Total:","-","-","-",total]))
#             print("-"*100)
#             print(f"Coupoun Code Applied: {pay[1][1]}")
#             print(f"Discount Applied: {pay[1][0]}")
        
#         if confirmation():
#             address = address()
#             payment = payment()
#             summary(address,payment)
#             del_cart(ID="all")
    
#     l_opt = ['a','d','c','cls','del','exit']
#     l_func = ["add_cart()","print(display_cart()[0])","checkout()","os.system('cls')","print(del_cart())","exit()"]
#     d_menu = {
#         'a': 'To add an item to the cart with their product ID          ',
#         'd': 'To display the cart in the form of a table                ',
#       'del': 'To delete an item from the cart with their product ID     ',
#         'c': 'To proceed to checkout menu                               ',
#         '0': 'To return to the main menu                                '
#     }
#     while True:
#         print('\n<<----  CART_MENU  ---->>\n')
#         for elem in d_menu:
#             print('  '+d_menu[elem] + '  --> ' + elem)
#         opt = input('\nYour Option -->').lower()
#         print()
#         if opt in l_opt:
#             for elem in l_opt:
#                 if opt == elem:
#                     eval(l_func[l_opt.index(elem)])
#         elif opt == '0':
#             menu_opt_0()
#             break
#         else:
#             print('Invalid Option......')


# l_opt = ['d','s','a','c','cls','exit']
# l_func = ["display()","account()","search()","cart()","os.system('cls')","exit()"]
# d_menu = {
#     'd': "To display all the items available                            ",
#     's': "To search for any item category wise or using a hint of name  ",
#     'a': "To open account settings                                      ",
#     'c': "To open the cart menu                                         ",
#     '0': "To stop the main program                                      "
# }
# while True:
#     print('\n<<----  SHOP  ---->>\n')
#     for elem in d_menu:
#         print('  '+d_menu[elem] + '  --> ' + elem)
#     opt = input('\nYour Option --> ').lower()
#     print()
#     if opt in l_opt:
#         for elem in l_opt:
#             if opt == elem:
#                 eval(l_func[l_opt.index(elem)])
#     elif opt == '0':
#         opt_0()
#         break
#     else:
#         print('Invalid Option......')


with open("email.html",'r') as f:
    print(f.read())
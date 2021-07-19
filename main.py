import mysql.connector as ms
from prettytable import PrettyTable
import stdiomask as sm
def table_display(rows):
    from prettytable import PrettyTable
    t = PrettyTable()
    t.field_names = ["ID","Name","Price","Category"]
    for row in rows:
        t.add_row(row)
    return t

def search(s):
    mydb = ms.connect(host = "localhost",
    user = "root",password = "Tejas@035611",
    database = "shop")
    myc = mydb.cursor()
    search = s
    myc.execute("show tables;")
    tbs,d= myc.fetchall(),{}
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
        print(table_display(data))
    for row in result:
        row += tuple([elem])
        table.append(row)
    if len(table) != 0:
        print(table_display(table))
    
    return data,table

def display():
    mydb = ms.connect(host = "localhost",
    user = "root",password = "Tejas@035611",
    database = "shop")
    myc = mydb.cursor()
    myc.execute("show tables;")
    tbs,d= myc.fetchall(),{}
    for tb in tbs:
        myc.execute(f"select * from {tb[0]};")
        items,l = myc.fetchall(),[]
        for item in items:
            item += tb
            l.append(item)
            d[tb[0]] = l
    for key in d:
        print(table_display(d[key]))

def account():
    pass

def cart():
    pass

print("<<==  LULU  ==>>")
print("What are you looking for?\n")
# d,t = search(input("your item to search --> ").capitalize())
display()
# print(d)
# print("-"* 50)
# print(t)

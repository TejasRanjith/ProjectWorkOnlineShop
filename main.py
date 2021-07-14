import mysql.connector as ms
from prettytable import PrettyTable

def table_display(rows):
    from prettytable import PrettyTable
    t = PrettyTable()
    t.field_names = ["ID","Name","Price"]
    for row in rows:
        t.add_row(row)
    return t

def search(db = None):
    mydb = ms.connect(host = "localhost",
    user = "root",password = "Tejas@035611",
    database = "shop")
    myc = mydb.cursor()
    search = input("--> ").capitalize()
    myc.execute("show tables;")
    tbs,d= myc.fetchall(),{}
    for tb in tbs:
        myc.execute(f"select name from {tb[0]};")
        items,l = myc.fetchall(),[]
        for item in items:
            l.append(item[0])
            d[tb[0]] = l
    data = []
    for elem in d:
        for item in d[elem]:
            if search in item:
                myc.execute(f"select * from {elem} where name = '{item}';")
                info = myc.fetchall()
                data.append(info[0])
    print(table_display(data))
        
def display():
    pass



print("<<==  LULU  ==>>")
print("What are you looking for?\n")
search()



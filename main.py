import mysql.connector as ms

def search(db = None):
    print(" "+"="*40)
    search = input("|  ")
    print(" "+"="*40)
    mydb = ms.connect(host = "localhost",user = "root",password = "Tejas@035611",database = db)
    myc = mydb.cursor()
    print(search)
    myc.execute("show databases;")
    data,l = myc.fetchall(),[]
    for i in data:
        l.extend(list(i))
    for elem in l:
        print(elem)
print("<<==  LULU  ==>>")
print("What are you looking for?\n")
search()



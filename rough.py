import mysql.connector as ms

mydb = ms.connect(host = "localhost",
    user = "root",password = "Tejas@035611",
    database = "shop")
myc = mydb.cursor()
#.g basics ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑
#.y you can make rough work executions here.....
#.b EXEC 1.:
    # search = input("--> ").capitalize()
    # myc.execute("show tables;")
    # tbs,d= myc.fetchall(),{}
    # for tb in tbs:
    #     myc.execute(f"select name from {tb[0]};")
    #     items,l = myc.fetchall(),[]
    #     for item in items:
    #         l.append(item[0])
    #         d[tb[0]] = l
    # for elem in d:
    #     print(d[elem])
    #     if search in d[elem]:
    #         print(True)
    #         myc.execute(f"select * from {elem} where name = '{search}';")
    #         data = myc.fetchall()
    #         print(data)
    # else:
    #     print(False)


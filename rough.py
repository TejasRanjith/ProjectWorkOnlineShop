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

#.b EXEC 2.:
    # def table_display(rows):
    #     from prettytable import PrettyTable
    #     t = PrettyTable()
    #     t.field_names = ["ID","Name","Price"]
    #     for row in rows:
    #         t.add_row(row)
    #     return t

    # mydb = ms.connect(host = "localhost",
    # user = "root",password = "Tejas@035611",
    # database = "shop")
    # myc = mydb.cursor()
    # myc.execute("show tables;")
    # tbs,d= myc.fetchall(),{}
    # for tb in tbs:
    #     myc.execute(f"select * from {tb[0]};")
    #     items,l = myc.fetchall(),[]
    #     for item in items:
    #         l.append(item)
    #         d[tb[0]] = l
    # for key in d:
    #     print(table_display(d[key]))

#.b EXEC 3.:
    # l = [("a","1"),("b","2"),("c","3")]
    # d = {}
    # d1 = {}
    # list_rows = []
    # for a in range(0,len(l)):                       #.g {0: ['a', '1'], 1: ['b', '2'], 2: ['c', '3']}
    #     d[a] = list(l[a])
    # for i in range(0,len(l[0])):
    #     for k in d:
    #         d1[k] = d[k][i]
    #         list_rows.append(d1[k])
    # new_list_rows,i = [],0
    # while i < len(list_rows):
    #     new_list_rows.append(list_rows[i:i+3])
    #     i+=3
    # l,list_rows = new_list_rows,[]
    # for elem in l:
    #     str_rows=""
    #     for i in range(0,len(elem)):
    #         if i < len(elem)-1:
    #             str_rows+=f"{elem[i]}\n"
    #         elif i == len(elem)-1:
    #             str_rows+=f"{elem[i]}"
    #     list_rows.append(str_rows)
    # print(list_rows)
    # import texttable
    # t = texttable.Texttable()
    # t.add_rows([
    #     ["Letter","Num"],
    #     eval(str(list_rows)),
    #     ["Total",""]
    # ])
    # # t.add_row()
    # print(t.draw())

#.b EXEC 4.:

l = [1,2,3,4]
for i in enumerate(l):
    print(i)
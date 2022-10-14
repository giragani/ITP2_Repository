import pymssql
conn = pymssql.connect(host = 'USTR-ERL2-3630', server = 'USTR-ERL2-3630.na.uis.unisys.com', port = '3630', user='PSATestTeam', password = 'PSATestTeam*Live', database='Civil Registry System')
curr = conn.cursor()
sqlstring = "select * from Admin.Users"
curr.execute(sqlstring)
# data = curr.fetchall()
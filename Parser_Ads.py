import sqlite3 as lite


def parse(ads_file):
    tablename = None
    data = {}
    data_str = []
    with open(ads_file, 'r', encoding='utf-8') as meta:
        for line in meta:
            if line.startswith("!Hierarchies"):  # or line.startswith('!Section'):
                tablename = line.strip().split('=')[1]
            elif line.startswith("'"):
                columns = line[1:].strip().split(";")
                for i in range(0, len(columns)):
                    if columns[i].startswith("Alias"):
                        columns[i] = columns[i].strip().split("=")[0]
                data_str.append(tuple(columns))
            elif not line.isspace():
                data_str.append(line.strip().split(";"))
            else:
                if tablename:
                    data.update({tablename: data_str})
                data_str = []
    return data


def insertvalues (db, tablename, values):
    con = lite.connect(db)
    with con:
        cur = con.cursor()
        if tablename == 'Entity':
            for i in range(1, len(values)):
                data = [values[i][0]]
                for x in values[i][1]:
                    data.append(x)
                cur.executemany("INSERT OR REPLACE INTO Entity VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);", (data,))
        elif tablename == 'Account':
            for i in range(1, len(values)):
                data = [values[i][0]]
                for x in values[i][1]:
                    data.append(x)
                cur.executemany('''INSERT OR REPLACE INTO Accounts VALUES
                                   (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);''', (data,))
        elif tablename in ['MovProd', 'VarLob', 'MktOvr', 'AuditDim', 'RelPartDisc1', 'CostCenterDisc2', 'CustType']:
            for i in range(1, len(values)):
                data = [values[i][0]]
                for x in values[i][1]:
                    data.append(x)
                cur.executemany("INSERT OR REPLACE INTO %s VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?);" % tablename, (data,))


def is_base(db, tablename, checkname):
    con = lite.connect(db)
    cur = con.cursor()
    parentlist = list(cur.execute("SELECT Parent FROM %s" % tablename))
    if (checkname, ) not in parentlist:
        return True
    else:
        return False


def get_children_list(db, tablename, parent):
    con = lite.connect(db)
    cur = con.cursor()
    child = list(cur.execute("SELECT Child from %s WHERE Parent = (?)" % tablename, (parent, )))
    child_list = []
    for item in child:
        child_list.append(item[0])
    return child_list


def get_base_elements(db, tablename, parentname):
    base_list = []
    children_list = get_children_list(db, tablename, parentname)
    i = 0
    while i < len(children_list):
        if is_base(db, tablename, children_list[i]):
            base_list.append(children_list[i])
            i += 1
        else:
            add_list = get_children_list(db, tablename, children_list[i])
            curr_pos = i
            children_list.remove(children_list[i])
            for item in add_list:
                children_list.insert(curr_pos, item)
                curr_pos += 1
    return base_list

if __name__ == '__main__':
    #todo make insertvalues call in function. 
    #data_test1 = parse('GRSHFM_Metadata_17040101.ads')

    #for key in data_test1.keys():
    #   data = list(enumerate(data_test1[key], start=0))
    #    insertvalues('test.db', key, data)
    #print("Tables is filled")

    #test_list = get_base_elements('test.db', 'MovProd', 'Product')
    #for account in test_list:
    #    print(account)
    #print(get_children_list('test.db', 'Accounts', '1110000'))

# todo Delete AdsParse as class. It should be a function
import sqlite3 as lite

'''
class AdsParse(object):
    def __init__(self, ads_file):
        self.ads_file = ads_file
        self.tablename = None
        self.columns = None
        # Store all data from ads, key - table name, value - data
        self.data = self.parse()
        self.customtop = ['MovProd', 'VarLob', 'MktOvr', 'AuditDim', 'RelPartDisc1', 'CostCenterDisc2', 'CustType']
'''
def parse(ads_file):
    customtop = ['MovProd', 'VarLob', 'MktOvr', 'AuditDim', 'RelPartDisc1', 'CostCenterDisc2', 'CustType']
    tablename = None
    columns = None
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
    cur = con.cursor()
    if tablename == 'Hierarchies':
        cur.executemany("INSERT INTO Hierarchies VALUES (?,?);", values)
        con.commit()
    else:
        if tablename == 'Entity':
            for i in range(1, len(values)):
                data = [values[i][0]]
                for x in values[i][1]:
                    data.append(x)
                cur.executemany("INSERT INTO Entity VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);", (data,))
            con.commit()
        elif tablename == 'Account':
            for i in range(1, len(values)):
                data = [values[i][0]]
                for x in values[i][1]:
                    data.append(x)
                cur.executemany('''INSERT INTO Accounts VALUES
                               (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);''', (data,))
            con.commit()
        elif tablename in ['MovProd', 'VarLob', 'MktOvr', 'AuditDim', 'RelPartDisc1', 'CostCenterDisc2', 'CustType']:
            for i in range(1, len(values)):
                data = [values[i][0]]
                for x in values[i][1]:
                    data.append(x)
                cur.executemany("INSERT INTO %s VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?);" % tablename, (data,))
            con.commit()


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
    #test = AdsParse('GRSHFM_Metadata_17030102.ads')
    #data_table = parse('./Parser/GRSHFM_Metadata_17030102.ads')
    '''
    for key in data_table.keys():
        data = list(enumerate(data_table[key], start=0))
        insertvalues('./Parser/test.db', key, data)
    print("Tables is filled")
    '''
    test_list = get_base_elements('test.db', 'Entity', 'WIND_CON')
    for account in test_list:
        print (account)
    #print(get_children_list('test.db', 'Accounts', '1110000'))

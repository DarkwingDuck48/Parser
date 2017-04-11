import sqlite3 as lite


class AdsParse(object):
    def __init__(self, ads_file):
        self.ads_file = ads_file
        self.tablename = None
        self.columns = None
        # Store all data from ads, key - table name, value - data
        self.data = self.parse()
        self.customtop = ['MovProd', 'VarLob', 'MktOvr', 'AuditDim', 'RelPartDisc1', 'CostCenterDisc2', 'CustType']

    def parse(self):
        data = {}
        data_str = []
        with open(self.ads_file, 'r', encoding='utf-8') as meta:
            for line in meta:
                if line.startswith("!Hierarchies"):  # or line.startswith('!Section'):
                    self.tablename = line.strip().split('=')[1]
                elif line.startswith("'"):
                    self.columns = line[1:].strip().split(";")
                    for i in range(0, len(self.columns)):
                        if self.columns[i].startswith("Alias"):
                            self.columns[i] = self.columns[i].strip().split("=")[0]
                    data_str.append(tuple(self.columns))
                elif not line.isspace():
                    data_str.append(line.strip().split(";"))
                else:
                    if self.tablename:
                        data.update({self.tablename: data_str})
                    data_str = []
        return data


def insertvalues (tablename, values):
    con = lite.connect('test.db')
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


def base(tablename, parentname):
    con = lite.connect('test.db')
    cur = con.cursor()
    base_list = []
    # Select child items to parent
    selectedvalue = list(cur.execute("SELECT Child from %s WHERE Parent = (?)" % tablename, (parentname,)))
    # create list for base check
    for item in selectedvalue:
        if not list(cur.execute("SELECT Child FROM %s WHERE Parent = (?)" % tablename, item)):
            base_list.append(item[0])
    # clear selectedvalue list from not base elements
    for item in base_list:
        if (item, ) in selectedvalue:
            selectedvalue.remove((item, ))
    print(selectedvalue)
    
    return base_list

if __name__ == '__main__':
    test = AdsParse('GRSHFM_Metadata_17030102.ads')
    '''
    for key in test.data.keys():
        data = list(enumerate(test.data[key], start=0))
        insertvalues(key, data)
    print("Tables is filled")
    '''
    print(base('Accounts', '1110000'))

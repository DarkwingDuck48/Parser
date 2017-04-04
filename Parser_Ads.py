import sqlite3 as lite


class AdsParse(object):
    def __init__(self, ads_file):
        self.ads_file = ads_file
        self.tablename = None
        self.columns = None
        self.data = {}          # Store all data from ads, key - table name, value - data
        self.data_str = []
        self.customtop = ['MovProd', 'VarLob', 'MktOvr', 'AuditDim', 'RelPartDisc1', 'CostCenterDisc2', 'CustType']

    def parse(self):
        with open(self.ads_file, 'r', encoding='utf-8') as meta:
            for line in meta:
                if line.startswith("!Hierarchies"):  # or line.startswith('!Section'):
                    self.tablename = line.strip().split('=')[1]
                elif line.startswith("'"):
                    self.columns = line[1:].strip().split(";")
                    for i in range(0, len(self.columns)):
                        if self.columns[i].startswith("Alias"):
                            self.columns[i] = self.columns[i].strip().split("=")[0]
                    self.data_str.append(tuple(self.columns))
                elif not line.isspace():
                    self.data_str.append(line.strip().split(";"))
                else:
                    if self.tablename:
                        self.data.update({self.tablename: self.data_str})
                    self.data_str = []


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

if __name__ == '__main__':
    test = AdsParse('GRSHFM_Metadata_17030102.ads')
    test.parse()
    #name = enumerate(test.data.keys(), start=1)
    #data_entity = list(enumerate(test.data['Entity'], start=0))
    #data_account = list(enumerate(test.data['Account'], start=0))
    #data_movprod = list(enumerate(test.data['MovProd'], start=0))
    #data_varlob = list(enumerate(test.data['VarLob'], start=0))
    #data_mktovr = list(enumerate(test.data['MktOvr'], start=0))
    for key in test.data.keys():
        data = list(enumerate(test.data[key], start=0))
        insertvalues(key, data)
    print("Tables is filled")

    #print(test.data["MktOvr"][0])
    #insertvalues("Entity", data_entity)
    #insertvalues("MovProd", data_movprod)
    #insertvalues("Account", data_account)
    #insertvalues("VarLob", data_varlob)
    #insertvalues("MktOvr", data_mktovr)

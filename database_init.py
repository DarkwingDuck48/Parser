import sqlite3 as lite


class AdsParse(object):
    def __init__(self, ads_file):
        self.ads_file = ads_file
        self.tablename = None
        self.columns = None
        self.data = {}          # Store all data from ads, key - table name, value - data
        self.data_str = []

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


def databaseinit():
    """
    Function for init data base and tables if it does not exist.
    :return: True if database is created
    """
    con = lite.connect('test.db')
    cur = con.cursor()
    cur.execute("DROP TABLE IF EXISTS Hierarchies")
    cur.execute('''CREATE TABLE "Hierarchies" ("id" INTEGER PRIMARY KEY,
                  "Name" TEXT NOT NULL);''')
    con.commit()


def insertvalues (tablename, values):
    con = lite.connect('test.db')
    cur = con.cursor()
    cur.executemany("INSERT INTO %s VALUES (?,?);" % tablename, values)
    con.commit()




if __name__ == '__main__':
    test = AdsParse('GRSHFM_Metadata_17030102.ads')
    test.parse()
    name = enumerate(test.data.keys(), start=1)
    list_data = tuple(test.data.keys())
    print(list_data)
    #print(test.data["Entity"][0])
    databaseinit()
    insertvalues("Hierarchies", name)
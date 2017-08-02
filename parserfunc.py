import sqlite3 as lite
import os
import os.path


class ParserAds(object):

    def __init__(self, db):
        self.db = self.dbcheck(db)
        if not self.db:
            self.clearclass()

    def clearclass(self):
        raise FileNotFoundError

    def dbcheck(self, db):
        con = lite.connect(db)
        cur = con.cursor()

        tables = ['Entity', 'Accounts', 'MovProd', 'VarLob', 'MktOvr', 'AuditDim', 'RelPartDisc1', 'CostCenterDisc2',
                  'CustType']
        whatindb = list(cur.execute("SELECT name from sqlite_master WHERE type='table'"))
        con.close()
        if not [item for item in tables if (item,) not in whatindb]:
            return db
        else:
            os.remove(os.path.join(os.getcwd(), db))
            return None

    @staticmethod
    def is_base(db, tablename, checkname):
        con = lite.connect(db)
        cur = con.cursor()
        parentlist = list(cur.execute("SELECT Parent FROM %s" % tablename))
        if (checkname, ) not in parentlist:
            return True
        else:
            return False

    @staticmethod
    def get_children_list(db, tablename, parent):
        con = lite.connect(db)
        cur = con.cursor()
        child = list(cur.execute("SELECT Child from %s WHERE Parent = (?)" % tablename, (parent, )))
        child_list = []
        for item in child:
            child_list.append(item[0])
        return child_list

    def getbaseelementslist(self, tablename, parentname):
        """
        
        :param tablename: Dimension name
        :param parentname: Parent element
        :return: list with base members
        """

        base_list = []
        children_list = self.get_children_list(self.db, tablename, parentname)
        i = 0
        while i < len(children_list):
            if self.is_base(self.db, tablename, children_list[i]):
                base_list.append(children_list[i])
                i += 1
            else:
                add_list = self.get_children_list(self.db, tablename, children_list[i])
                curr_pos = i
                children_list.remove(children_list[i])
                for item in add_list:
                    children_list.insert(curr_pos, item)
                    curr_pos += 1
        return base_list

if __name__ == '__main__':
    test = ParserAds('classtest.db')
    con = lite.connect(test.db)
    cur = con.cursor()
    with open("acctofind.txt", 'r') as find:
        find_acc = find.read().split('\n')
    find_acc = tuple(find_acc)
    print(find_acc)

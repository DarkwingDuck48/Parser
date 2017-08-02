import re
import sys
import os, os.path
from parserfunc import ParserAds
from class_db_draft import Metadata

# patterns
'''
pattern examples:

p_custom_list = OvrList=Hs.Custom("MktOvr").List ("OV_CURR","[Base]")
p_account_list = AccList=Hs.Account.List("2210000","[Base]")
p_create_array = AccListCOL=Array("2210102", "2210103", "2210104", "2210105", "2210202", "2210203", "2210204")
p_icp_list = ICPList=HS.ICP.List("[Icp Entities]","[Base]")
p_entity_list = EntList=HS.Entity.List("","[Base]")
p_isbase_bool = Hs.Account.IsBase("2110000", Acc)
p_isbase_custom_bool = HS.Custom("MovProd").isBase ("HFS_Input",Cust1)

'''
# list creations
p_custom_list = re.compile(r'(\w*\s?=)?\s?(H[sS])\.Custom\s?\(\"\w*\"\).List\s?\(\".*\",\".*\"\)')
p_account_list = re.compile(r'(\w*\s?=)?\s?(H[sS])\.Account\s?\.List\s?\(\".*\",\".*\"\)')
p_create_array = re.compile(r'\w*\s?=\s?Array\s?\(.*\)')
p_icp_list = re.compile(r'\w*\s?=\s?(H[sS])\.ICP\s?\.List\s?\(\".*\",\".*\"\)')
p_entity_list = re.compile(r'\w*\s?=\s?(H[sS])\.Entity\s?\.List\s?\(\".*\",\".*\"\)')

# Logical expressions
p_isbase_bool = re.compile(r'(H[sS])?\.(Entity|Account)\.[iI]sBase\s?\(\"?.*\"?,\"?.*\"?\)')
p_isbase_custom_bool = re.compile(r'(H[sS])?\.Custom\s?\(\"\w*\"\)\.[iI]sBase\s?\(\"?.*\"?,\"?.*\"?\)')

# Loops
p_for_loop = re.compile(r'[Ff]or\s.*?\sto\s.*')




def tryconnect(testdatabase):
    try:
        connection = ParserAds(testdatabase)
        return connection
    except FileNotFoundError:
        return None

#db = input('Enter name of database: ')+'.db'
db = 'classtest.db'
while not tryconnect(db):
    print('You try to connect to invalid database')
    quest1 = ''
    while quest1.lower() not in ['change', 'create', 'exit']:
        quest1 = input('Do you want to create database with this name, change it or exit? ')
    if quest1.lower() == 'change':
        db = input('Enter name of database: ') + '.db'
    elif quest1.lower() == 'create':
        # todo creation database from this script
        print('Not realised creation database from this script')
    elif quest1.lower() == 'exit':
        sys.exit("Invalid Database")

database = tryconnect(db)


VARIABLE = None     # Store name of variable
EXPRESSION = None   # Store VBS expression
variables = []      # Store variable names
TABLE = None        # Store table name from line
ELEMENT = None      # Store Element name from brackets
PARENT = None       # Store parent for isBase check
CHILD = None        # Store child for isBase check
TOKEN = None        # Store token, usially == [Base]

line = ''
# line = 'AccList=Hs.Account.List("2210000","[Base]")'
# line = 'OvrList=Hs.Custom("MktOvr").List ("OV_CURR","[Base]")'
# line = 'AccList=Hs.Account.List("2210000","[Base]")'
# line = 'AccListCOL=Array("2210102", "2210103", "2210104", "2210105", "2210202", "2210203", "2210204")'
# line = 'Hs.Account.IsBase("2110000", "2110411")'
# line = 'HS.Custom("MovProd").isBase ("HFS_Input","OPE")'

# parse OvrList=Hs.Custom("MktOvr").List ("OV_CURR","[Base]")
if re.match(p_custom_list, line):
    VARIABLE, EXPRESSION = line.split('=')
    _, TABLE, elements = EXPRESSION.strip().split('.')
    TABLE = re.findall('\"(\w*)\"', TABLE)[0]
    ELEMENT, TOKEN = re.findall('\"(\[?\w*\]?)\"', elements)

# parse AccList=Hs.Account.List("2210000","[Base]")
elif re.match(p_account_list, line):
    VARIABLE, EXPRESSION = line.split('=')
    _, TABLE, elements = EXPRESSION.strip().split('.')
    ELEMENT, TOKEN = re.findall('\"(\[?\w*\]?)\"', elements)

# parse AccListCOL=Array("2210102", "2210103", "2210104", "2210105", "2210202", "2210203", "2210204")
if re.match(p_create_array, line):
    VARIABLE, EXPRESSION = line.strip().split('=')
    array = line.replace('Array', 'list').replace('(', '([').replace(')', '])')
    exec(array)     # Create array with correct VARIABLE from rule
    print(eval(VARIABLE))
'''
# parse Hs.Account.IsBase("2110000", Acc)
if re.match(p_isbase_bool, line):
    _, TABLE, elements = line.strip().split('.')
    PARENT, CHILD = re.findall('\((\"?.*\"?),\s?(\"?.*\"?)\)', elements)[0]
# parse HS.Custom("MovProd").isBase ("HFS_Input",Cust1)
elif re.match(p_isbase_custom_bool, line):
    _, TABLE, elements = line.strip().split('.')
    TABLE = re.findall('\"(\w*)\"', TABLE)[0]
    PARENT, CHILD = re.findall('\((\"?.*\"?),\s?(\"?.*\"?)\)', elements)[0]
    print(TABLE, PARENT, CHILD)
PARENT = PARENT.replace('"', '')
CHILD = CHILD.replace('"', '')
if TABLE == 'Account':
    TABLE += 's'
if CHILD in database.getbaseelementslist(TABLE, PARENT):
    print('YES')
else:
    print('No')
'''
'''
print(VARIABLE, TABLE, ELEMENT, TOKEN)
if TOKEN == '[Base]':
    if TABLE == 'Account':
        TABLE = "Accounts"
    command = '{}={}'.format(VARIABLE, database.getbaseelementslist(TABLE, ELEMENT))
    exec(command)
    print(VARIABLE)
    variables.append(VARIABLE)
    print(eval(VARIABLE))
    print(variables)
'''
list_for = ['For Y = 2016 to 2030', 'x = Y', 'Next']

for i in range(0, len(list_for)):
    if re.match(p_for_loop, list_for[i]):
        i = 1
        while i <= len(list_for) and list_for[i] != 'Next':
            print(list_for[i])
            i += 1


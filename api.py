import xmlrpc.client
import unittest as unit


# info = xmlrpc.client.ServerProxy('https://localhost:8069').start()
url = 'http://localhost:8069'
db = 'Test'
username = 'abc@gmail.com'
password = '123'
common = xmlrpc.client.ServerProxy('{}/xmlrpc/2/common'.format(url))
# common.version()
# c88d77c04cf55dcb9d368007176f40581a6433e2
uid = common.authenticate(db, username, password, {})

models = xmlrpc.client.ServerProxy('{}/xmlrpc/2/object'.format(url))
# print(models.execute_kw(db, uid, password, 'hr.employee', 'check_access_rights', ['read'], {'raise_exception': False}))

# print(models.execute_kw(db, uid, password, 'hr.employee', 'search', [[['name', '=', 'Abigail Peterson']]]))

# print(models.execute_kw(db, uid, password, 'hr.employee', 'search', [[['is_company', '=', True]]], {'offset': 10, 'limit': 5}))
print("Testing create employee api and also testing search employee api")
id = models.execute_kw(db, uid, password, 'hr.employee', 'create', [{'name': "Zubair9"}])

# print(id)
if models.execute_kw(db, uid, password, 'hr.employee', 'search', [[['name', '=', 'Zubair9']]])[0] == id:
    print("Passed")
else:
    print("Failed")

print("Testing the delete api")
models.execute_kw(db, uid, password, 'res.partner', 'unlink', [[id]])
t = models.execute_kw(db, uid, password, 'res.partner', 'search', [[['id', '=', id]]])

if len(t) == 0:
    print("Passed")
else:
    print("Failed")

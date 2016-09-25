from system.core.model import Model
import re
class LoginModel(Model):
	def __init__(self):
		super(LoginModel, self).__init__()
	def register(self, user):
		# EMAIL_REGEX = re.compile(r'^[a-za-z0-9\.\+_-]+@[a-za-z0-9\._-]+\.[a-za-z]*$')
		# errors = []
		# # Some basic validaton
		# if not request.form['first_name']:
		# 	errors.append('Name cannot be blank')
		# elif len(request.form['first_name']) < 2:
		# 	errors.append('Name must be at least 2 characters long')
		# if not request.form['last_name']:
		# 	errors.append('Name cannot be blank')
		# elif len(request.form['last_name']) < 2:
		# 	errors.append('Name must be at least 2 characters long')
		# if not request.form['email']:
		# 	errors.append('Email cannot be blank')
		# elif not EMAIL_REGEX.match(request.form['email']):
		# 	errors.append('Email format must be valid!')
		# if not request.form['password']:
		# 	errors.append('Password cannot be blank')
		# elif len(request.form['password']) < 8:
		# 	errors.append('Password must be at least 8 characters long')
		# elif request.form['password'] != request.form['confirmpw']:
		# 	errors.append('Password and confirmation must match!')
		# # If we hit errors, return them, else return True.
		# if errors:
		# 	return {"status": False, "errors": errors}
		# else:
		
		password = user['password']
		# bcrypt is now an attribute of our model
		# we will call the bcrypt functions similarly to how we did before
		# here we use generate_password_hash() to generate an encrypted password
		hashed_pw = self.bcrypt.generate_password_hash(password)
		query = "INSERT INTO users (first_name, last_name, email, password, created_at, updated_at) VALUES (:first_name, :last_name, :email, :password, NOW(), NOW())"
		data = { 'first_name': user['first_name'], 'last_name': user['last_name'], 'email': user['email'], 'password': hashed_pw}
		print 'inserted stuff'
		return self.db.query_db(query, data)


	# def login(self, user):
	# 	password = user['password']
	# 	user_query = "SELECT * FROM users WHERE email = :email LIMIT 1"
	# 	user_data = {'email': user['email']}
 # 		# same as query_db() but returns one result
	# 	user = self.db.get_one(user_query, user_data)
	# 	print 'wrong'
	# 	return user
	def login(self, email):
		# pass data to the query like so
		query = "SELECT first_name, email, password FROM users WHERE email = :email"
		data = { 
			'email': email
		}
		return self.db.query_db(query, data)[0]

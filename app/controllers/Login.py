from system.core.controller import *
class Login(Controller):
	def __init__(self, action):
		super(Login, self).__init__(action)
		self.load_model('LoginModel')
		self.db = self._app.db
	def index(self):
		return self.load_view('index.html')
	def register(self):
		user_details ={
			'first_name': request.form['first_name'],
			'last_name': request.form['last_name'],
			'email': request.form['email'],
			'password': request.form['password']
		}
		self.models['LoginModel'].register(user_details)
		return redirect ('/')
	# def login(self, user):
	# 	self.models['LoginModel'].login()
	# 	print 'this is from controller'
	# 	return self.load_view('success.html')
	def logthein(self):
		print "SDLKFJAS;LFKJASD;LKJS"
		email = request.form['emaillog']
		print email
		password = request.form['passwordlog']
		user = self.models['LoginModel'].login(email)
		print user
		if not self.models['LoginModel'].bcrypt.check_password_hash(user['password'], password):
			flash('Information given does not match login credentials!')
			return redirect('/')
		else:
			session['email'] = email
			session['success'] = 'logged in'
			return redirect('/woot')
	#
	def woot(self):
		user = self.models['LoginModel'].login(session['email'])
		session['name'] = user['first_name']
		return self.load_view('success.html', name = session['name'])

	def logout(self):
		session.clear()
		return redirect('/')
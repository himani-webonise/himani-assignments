First I created the databse name content_mgmt_sys using query : "use content_mgmt_sys".
This will create the content_mgmt_sys if doesn't exist or use it from the database if it is already present.


I have created following collections inside the database:
-user
-
-

-------------Inserting documents inside "user" collection--------
db.user.insert(
{
	"_id":ObjectId(),
	"username":"user1",
	"password":"pass1",
	"email_id":"user1@gmail.com",
	"last_login":"10 oct 2014",
	"profile":{
			"first_name":"first1",
			"last_name":"last1"
		}
}
)


db.user.insert(
{
	"_id":ObjectId(),
	"user_name":"user2",
	"password":"password2",
	"email_id":"user1@gmail.com",
	"last_login":"2014-01-22",
	"user_since":"2014-01-22",
	"profile":{
		"first_name":	"first2",
		"last_name":	"last2",
		"status":	"Single",
		"phone_no":	["0123456789","770922404"]
	}	
})

db.user.insert(
{
	"_id":ObjectId(),
	"user_name":"user3",
	"password":"password3",
	"email_id":"user1@gmail.com",
	"last_login":"2015-01-22",
	"user_since":"2014-01-22",
	"profile":{
		"first_name":	"first3",
		"last_name":	"last3",
		"status":	"Single",
		"address":"pune",
		"phone_no":	["01234567","77777704"]
	}	
})

db.user.insert(
{
	"_id":ObjectId(),
	"user_name":"user4",
	"password":"password4",
	"email_id":"user1@gmail.com",
	"last_login":"2015-11-22",
	"user_since":"2014-11-22",
	"profile":{
		"first_name":	"first4",
		"last_name":	"last4",
		"status":	"Single",
		"address":"pune",
		"phone_no":	["01234567"]
	}	
})

db.user.insert(
{
	"_id":ObjectId(),
	"user_name":"user5",
	"password":"password5",
	"email_id":"user1@gmail.com",
	"last_login":"2015-11-01",
	"user_since":"2014-11-01",
	"profile":{
		"first_name":	"first5",
		"last_name":	"last5",
		"status":	"Marrried",
		"address":"Bhopal",
		"phone_no":	["01234567"]
	}	
})



-------------Inserting documents inside "user" collection done--------

xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

-------------Inserting documents inside "roles" collection------------


db.roles.insert(
{
	"_id":	ObjectId(),
	"role_type":	"super admin",	
	"permissions":	["Read","Write","update"]
}
)

db.roles.insert(
{
	"_id":	ObjectId(),
	"role_type":	"admin",	
	"permissions":	["Read","Write"]
}
)

db.roles.insert(
{
	"_id":	ObjectId(),
	"role_type":	"author",	
	"permissions":	["Read","Write"]
}
)


-------------Inserting documents inside "roles" collection done--------

xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

-------------Inserting documents inside "pages" collection------------

db.pages.insert(
{
	_id:	ObjectId(),
	heading:"News Headline",
	url:'http://www.mongodb/news2.php',
	author:	'user1',		
	content:'Net neutrality: DoT favours regulation of WhatsApp, Viber calls',
	comments: [{ "_id":	ObjectId(),
	"description":	'The debate over net neutrality is far from over, it seems.',
	title:	'Net Nutrality',
	owner:	'user1'}]	
})




db.pages.insert(
{
	_id:	ObjectId(),
	heading:"News Headline",
	url:'http://www.mongodb/news2.php',
	author:	'user2',		
	content:'The debate over net neutrality is far from over, it seems.',
	comments: [{ "_id":	ObjectId(),
	"description":	'India said on Thursday it was committed to peace along the border with Pakistan but warned the nuclear-armed neighbour of a strong response in case of unprovoked firing.',
	owner:	'user3'},{
	_id:	ObjectId(),
	description:	'The debate over net neutrality is far from over, it seems.',
	title:	'n a heavy firing exchange between Indian and Pakistani troops on Thursday, four civilians and two armed personnel are said to have been injured on the Indian side. India has lodged a protest with Pakistan over the firing.',
	owner:	'user2'
}]	
})

-------------Inserting documents inside "pages" collection done--------

xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

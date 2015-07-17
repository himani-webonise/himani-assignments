user
{
	_id		:	ObjectId(),
	user_name	: 	String,
	password	: 	String,
	email_id	:	String,
	last_login	:	timestamp,	
	user_since	:	timestamp,
	profile
	{
		first_name	:	"String"
		last_name	:	"String"
		status		:	"String"
		address		[{Local_address:{ _id : Object_id()
                        	street : "String"
	                         city : "String"

             			 }]
		phone		:	[Array of Numbers]
	}	
}	


roles
{
	_id		:	ObjectId
	role_type	:	String//type of user (super admin/admin/author),	
	permissions	:	[Array storing  string values of different permissions granted to the 					user]
}



pages
{
	no		:	ObejctId(),
	headline	:	String,
	url		:	String,
	author		:	String,		
	content		:	String,
	slug		:	String,
	comments 	: [
			{ 
				comment1:{_id : Object_id(), content : "String" , user_id : Integer},
		      	  	comment2:{_id : Object_id(), content : "String" , user_id : Integer}
		  	}],

	social_feeds	:[
			{	_id		:	ObjectId,
				url		:	String,
				content		:	String
			}]
	
}



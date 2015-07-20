window.Calculator={
	val:0,
add:function()	{

	var len=arguments.length;
	for(var i=0;i<len;i++)
	{
		this.val=this.val+arguments[i];
	}
	
		return  this.val;
	},
sub:function () {
	 var sub=this.val;
	var len=arguments.length;
	for(var i=0;i<len;i++)
	{
		sub=sub-arguments[i];
	}
	return sub;
},
reset:function () {
	
	this.val=0;
}
};
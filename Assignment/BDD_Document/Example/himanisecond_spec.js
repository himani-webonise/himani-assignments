describe("Himani's Calculator Testing ",function(){

	beforeEach(function()
	{
		Calculator.val=0;
	});

	describe("Addition of Numbers",function(){
	
	it("should store last value",function(){
		expect(Calculator.val).toBeDefined();
		expect(Calculator.val).toEqual(0);
	});
	it("should add a number",function()
	{
		expect(Calculator.add(2)).toEqual(2);
		expect(Calculator.add(2)).toEqual(4);

	});
	it("should add any number of numbers",function(){

		expect(Calculator.add(3,2,3)).toEqual(8);
		expect(Calculator.add(1,2,3)).toEqual(14);


	});
	});
	describe("Subtraction of Numbers",function(){

		it("should subtract number",function(){
			expect(Calculator.sub(2)).toEqual(-2);
		});
		it("should subtract any number of numbers",function(){
			expect(Calculator.sub(1,2,3)).toEqual(-6);
		});
	}
	);

	describe("Resetting Calculator",function()
	{	
		it("Should Reset the Caclulator to zero",function(){
			Calculator.val=20;
			Calculator.reset();
			expect(Calculator.val).toEqual(0);
		});
		
	});

});
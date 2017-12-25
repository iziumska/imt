var needle = require('needle');

var FuelWhere = function (address) {     
    this.address = address;
}

FuelWhere.prototype.myAddress = function(myAddress) {
    needle.get('https://api.privatbank.ua/p24api/aviasstations?json&price%C2%AEion=&type=',
    	function(err, resp) {
		  if (!err && resp.statusCode == 200) {
		  	for (var i in resp.body) {
		    	if (resp.body[i].State === myAddress) {
		  		console.log(JSON.stringify(resp.body[i].Address)); 
		  		}
		 	 }
		  }
		});
    return this;
};
 
module.exports = FuelWhere;

// скорее всего модуль не очень полезен, но суть кажись уловила
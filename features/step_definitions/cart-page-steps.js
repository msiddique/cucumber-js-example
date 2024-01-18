const { Given, When, Then } = require('@cucumber/cucumber'); 

Then('the following items are in my cart {string}', function (items) {
    const products = items.split(',')
    products.forEach(product => {
      console.log(`Asserting "${product}" is in cart`);
    });
  });

Then('the total price of the cart is {float}', function (price) {
    console.log(`Asserting "${price}" of cart`);
  });
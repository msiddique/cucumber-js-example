const { Given, When, Then } = require('@cucumber/cucumber'); 

Given('I am on the {string} product page', async function (product) {
    console.log(`Visit https://app.qa.hellowisp.io/products/${product}`)
  });

Then('I select {string}', function (element) {
    console.log(`Clicking ${element}`);
  });

Then('I am taken to the {string} page', function (page) {
    console.log(`Assert user is on ${page} page`);
});


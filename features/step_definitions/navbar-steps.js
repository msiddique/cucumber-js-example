const assert = require('assert');
const { Given, When, Then } = require('@cucumber/cucumber');

Given('I am on the homepage',function () {
    console.log('Visiting home page')
  });

Then('the navbar should be displayed', function () {
    console.log('Asserting navbar is displayed')
  });

Then('the navbar should include links for {string}', function (string) {
    const links = string.split(',')
    links.forEach(link => {
      console.log(`Asserting link "${link}"`);
    });
  });

Then('the navbar should display {string}', function (string) {
    console.log(`Asserting navbar is displaying "${link}"`);
  });
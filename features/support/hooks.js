const { Before, BeforeAll } = require('@cucumber/cucumber')
const {LaunchOptions, chromium, firefox, webkit } = require('playwright');

BeforeAll(async function () {
    console.log("Open Browser")
    // const options=  {
    //     headless: false
    // }
    // const browser = await chromium.launch(options);
    //  page = await browser.newPage();
    // await page.goto('https://app.qa.hellowisp.io/');
});


// 1
const assert = require('assert');
const { Given, When, Then, AfterAll } = require('cucumber');
const { Builder, By, Capabilities, Key } = require('selenium-webdriver');
const { expect } = require('chai');
require("chromedriver");
/*
function isItFriday(today) {
  // We'll leave the implementation blank for now
}
Given('today is Sunday', function () {
  // Write code here that turns the phrase above into concrete actions
  return 'pending';
});
When('I ask whether it\'s Friday yet', function () {
  // Write code here that turns the phrase above into concrete actions
  return 'pending';
});
Then('I should be told {string}', function (string) {
  // Write code here that turns the phrase above into concrete actions
  return 'pending';
});
*/
function isItFriday(today) {
  // We'll leave the implementation blank for now
  return 'Nope';
}
Given('today is Sunday', function () {
  this.today = 'Sunday';
});
When('I ask whether it\'s Friday yet', function () {
  this.actualAnswer = isItFriday(this.today);
});
Then('I should be told {string}', function (expectedAnswer) {
  assert.equal(this.actualAnswer, expectedAnswer);
});
// UI
// driver setup
const capabilities = Capabilities.chrome();
capabilities.set('chromeOptions', { "w3c": false });
const driver = new Builder().withCapabilities(capabilities).build();
Given('I am on the Wikipedia cheese article', async function () {
    await driver.get('https://en.wikipedia.org/wiki/Cheese');
});
Then('the page title should start with {string}', {timeout: 60 * 1000}, async function (searchTerm) {
    const title = await driver.getTitle();
    const isTitleStartWithCheese = title.lastIndexOf(`${searchTerm}`, 0) === 0;
    expect(isTitleStartWithCheese).to.equal(true);
});
AfterAll('end', async function(){
    await driver.quit();
});


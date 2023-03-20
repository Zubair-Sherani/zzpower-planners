const { Given, Then, When, Before } = require('@cucumber/cucumber');

Given(/^I open Odoo Login$/, function () {
    return browser.navigateTo('http://localhost:8069/web#action=36&model=ir.module.module&view_type=kanban&cids=1&menu_id=5');
});

Given(/^I Loginto odoo$/, function () {
    //browser.pause(10000);
    return browser.waitForElementVisible('input[id = login]', 1000)
        .setValue('input[id=login]', 'abc@gmail.com')
        .setValue('input[id=password]', '123')
        .click('button[type=submit]', function (result) {
            this.assert.strictEqual(result.status, 0);
        });
});

Given(/^I am a warehouse manager$/, function () {
    browser.pause(1000);
    browser.navigateTo('http://localhost:8069/web#action=274&model=product.template&view_type=kanban&cids=1&menu_id=138')
    const resultElement = browser.getFirstElementChild('.oe_kanban_details', function (result) {
        this.assert.strictEqual(result.status, 0);
    })
    return browser.waitForElementVisible('.oe_kanban_details', 1000);
});

Given(/^I am on the products page$/, function () {
    const resultElement = browser.getFirstElementChild('.oe_kanban_details', function (result) {
        this.assert.strictEqual(result.status, 0);
    })
    return browser.waitForElementVisible('.oe_kanban_details', 1000)
        .click('.oe_kanban_details', function (result) {
            //.click(resultElement, function (result) {
            this.assert.strictEqual(result.status, 0);
        });
});

Given(/^I open a product$/, async function () {

    return await browser.waitForElementVisible('.btn-secondary', 1000)
        .click('button[name="action_update_quantity_on_hand"]');
});


Given(/^I update the inventory level for the product with a valid input$/, async function () {

    return await browser.click('td[name="inventory_quantity"]') // click on the initial field
        .waitForElementVisible('div[name="inventory_quantity"] input[type="text"]', 5000) // wait up to 5 seconds for the new field to appear
        .click('div[name="inventory_quantity"] input[type="text"]') // click on the new field
        .setValue('input.o_input', '42');

});

When(/^i click apply$/, async function () {

    return await browser.click('button[name="action_apply_inventory"]'); // click on the "Apply" button

});

Then(/^the inventory level should be updated$/, async function () {
    return await browser.waitForElementVisible('td[name="quantity"] div[name="quantity"] > span', 5000)
        .getText('td[name="quantity"] div[name="quantity"] > span', function (result) {
            console.log(result); // log the result object to the console
            this.assert.equal(result, '42.00', 'Inventory level was not updated correctly.');
        })
        ;
});


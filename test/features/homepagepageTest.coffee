process.env.NODE_ENV = 'test';
var server = require('../../app.coffee');
var expect = require('expect.js')
var Browser = require('zombie');
var fs = require('fs');

describe 'homepage', ->

  before ->
    @server = server.listen(3000);
  	browser = null
    browser = new Browser({ site: 'http://localhost:3000' })
    # fs.writeFile('code/_test.txt', 'Lorem ipsum')

	it 'should show a welcome message', ->
		browser.visit('/', done)
		expect(browser.text(h1)).to.equal("Welcome to coffee-ide")
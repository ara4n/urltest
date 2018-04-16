const url = require('url');

console.log(url.parse('mx:@matthew:matrix.org'));
console.log(url.parse('mx:#matthew:matrix.org'));
console.log(url.parse('mx:+matthew:matrix.org'));

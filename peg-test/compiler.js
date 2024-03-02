const { parse } = require('./parser.js')
const fs = require('fs')

const tracer = {
  trace: (event) => {
    console.log(event)
  }
}

console.log("Start parsing")
const content = fs.readFileSync('./test.txt', { encoding: 'utf-8' })
const result = parse(content, { tracer: tracer })
console.log(result)
console.log("End parsing")

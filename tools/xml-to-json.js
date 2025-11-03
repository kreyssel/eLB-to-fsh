const fs = require('fs');
const { Fhir } = require('fhir');

const fhir = new Fhir();

const xmlString = fs.readFileSync(process.argv[2], 'utf8');
const json = fhir.xmlToJson(xmlString);
fs.writeFileSync(process.argv[3], json, 'utf8');
console.log('Konvertiert!');
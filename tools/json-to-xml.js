const fs = require('fs');
const path = require('path');
const Fhir = require('fhir').Fhir;

const fhir = new Fhir();

const jsonString = fs.readFileSync(process.argv[2], 'utf8');
const xml = fhir.jsonToXml(jsonString);
fs.writeFileSync(process.argv[3], xml, 'utf8');
console.log('Konvertiert!');
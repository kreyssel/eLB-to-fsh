const fs = require('fs');
const path = require('path');
const Fhir = require('fhir').Fhir;

const fhir = new Fhir();

// Pfad zum Ordner mit den JSON-Dateien
const directoryPath = 'fsh-generated/resources';

// Alle Dateien im Verzeichnis lesen
fs.readdir(directoryPath, (err, files) => {
    if (err) {
        return console.error('Fehler beim Lesen des Verzeichnisses:', err);
    }

    // Nur JSON-Dateien filtern
    const jsonFiles = files.filter(file => path.extname(file).toLowerCase() === '.json');

    // Jede JSON-Datei konvertieren
    jsonFiles.forEach(file => {
        const jsonPath = path.join(directoryPath, file);
        const xmlPath = path.join(directoryPath, file.replace('.json', '.xml'));

        // JSON laden
        const jsonData = JSON.parse(fs.readFileSync(jsonPath, 'utf-8'));

        // JSON zu XML konvertieren
        const xmlData = fhir.objToXml(jsonData);

        // XML speichern
        fs.writeFileSync(xmlPath, xmlData);
        console.log(`Konvertiert: ${file} -> ${path.basename(xmlPath)}`);
    });
});
Extension: KK_ELB_EX_Zusatzinfos
Id: KK_ELB_EX_Zusatzinfos
Context: Composition
* ^url = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_EX_Zusatzinfos"
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2023-09-11T06:57:53.6658116+00:00"
* extension contains
    therapiebericht 1..1 MS and
    hausbesuch 1..1 MS and
    therapiefrequenz 0..* and
    unterschrift 1..1 MS
* extension[therapiebericht].value[x] 1.. MS
* extension[therapiebericht].value[x] only boolean
* extension[hausbesuch].value[x] 1.. MS
* extension[hausbesuch].value[x] only boolean
* extension[therapiefrequenz].value[x] 1.. MS
* extension[therapiefrequenz].value[x] only Range
* extension[therapiefrequenz].value[x].low 1.. MS
* extension[therapiefrequenz].value[x].low.value 1.. MS
* extension[therapiefrequenz].value[x].low.unit 1.. MS
* extension[therapiefrequenz].value[x].low.system 1.. MS
* extension[therapiefrequenz].value[x].low.system = "http://unitsofmeasure.org" (exactly)
* extension[therapiefrequenz].value[x].high 1.. MS
* extension[therapiefrequenz].value[x].high.value 1.. MS
* extension[therapiefrequenz].value[x].high.unit 1.. MS
* extension[therapiefrequenz].value[x].high.system 1.. MS
* extension[therapiefrequenz].value[x].high.system = "http://unitsofmeasure.org" (exactly)
* extension[unterschrift].value[x] 1.. MS
* extension[unterschrift].value[x] only boolean
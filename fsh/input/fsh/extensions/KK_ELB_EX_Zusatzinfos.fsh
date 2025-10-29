Extension: KK_ELB_EX_Zusatzinfos
Id: KK_ELB_EX_Zusatzinfos
Context: Composition
* ^url = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_EX_Zusatzinfos"
* extension contains
    therapiebericht 1..1 MS and
    hausbesuch 1..1 MS and
    therapiefrequenz 0..* and
    unterschrift 1..1 MS
* extension[therapiebericht]
  * value[x] 1.. MS
  * value[x] only boolean
* extension[hausbesuch]
  * value[x] 1.. MS
  * value[x] only boolean
* extension[therapiefrequenz]
  * value[x] 1.. MS
  * value[x] only Range
    * low 1.. MS
      * value 1.. MS
      * unit 1.. MS
      * system 1.. MS
      * system = "http://unitsofmeasure.org" (exactly)
    * high 1.. MS
      * value 1.. MS
      * unit 1.. MS
      * system 1.. MS
      * system = "http://unitsofmeasure.org" (exactly)
* extension[unterschrift]
  * value[x] 1.. MS
  * value[x] only boolean
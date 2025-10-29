Profile: KK_ELB_HLM_VO_Composition
Parent: Composition
Id: KK_ELB_HLM_VO_Composition
* ^url = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_HLM_VO_Composition"
* implicitRules ..0
* language ..0
* text ..0
* contained ..0
* extension ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "url"
  * ^slicing.rules = #closed
* extension contains $KK_ELB_EX_Zusatzinfos named zusatzinfos 1..1 MS
* extension[zusatzinfos] ^isModifier = false
* identifier ..0
* status = #final (exactly)
* status MS
* type MS
  * coding 1..1 MS
    * code 1.. MS
    * code = #e13A (exactly)
      * ^short = "eHLM elektronische Heilmittelverordnung"
* category ..0
* subject ..0
* encounter ..0
* date MS
* author MS
  * identifier 1.. MS
    * system 1.. MS
    * value 1.. MS
* title = "Elektronische Verordnung Heilmittel" (exactly)
* title MS
* confidentiality ..0
* attester ..0
* custodian ..0
* relatesTo ..0
* event ..0
* section MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "title"
  * ^slicing.rules = #closed
* section contains heilmittelverordnung 1..* MS
* section[heilmittelverordnung]
  * title 1.. MS
  * title = "Elektronische Verordnung Heilmittel" (exactly)
  * entry 1.. MS
  * entry only Reference($KK_ELB_HLM_VO_ServiceRequest)
    * reference 1.. MS
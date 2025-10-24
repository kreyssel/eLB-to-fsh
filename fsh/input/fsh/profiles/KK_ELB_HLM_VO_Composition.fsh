Profile: KK_ELB_HLM_VO_Composition
Parent: Composition
Id: KK_ELB_HLM_VO_Composition
* ^url = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_HLM_VO_Composition"
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2023-04-13T09:00:58.8118673+00:00"
* implicitRules ..0
* language ..0
* text ..0
* contained ..0
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #closed
* extension contains KK_ELB_EX_Zusatzinfos named zusatzinfos 1..1 MS
* extension[zusatzinfos] ^isModifier = false
* identifier ..0
* status = #final (exactly)
* status MS
* type MS
* type.coding 1..1 MS
* type.coding.code 1.. MS
* type.coding.code = #e13A (exactly)
* type.coding.code ^short = "eHLM elektronische Heilmittelverordnung"
* category ..0
* subject ..0
* encounter ..0
* date MS
* author MS
* author.identifier 1.. MS
* author.identifier.system 1.. MS
* author.identifier.value 1.. MS
* title = "Elektronische Verordnung Heilmittel" (exactly)
* title MS
* confidentiality ..0
* attester ..0
* custodian ..0
* relatesTo ..0
* event ..0
* section MS
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "title"
* section ^slicing.rules = #closed
* section contains heilmittelverordnung 1..* MS
* section[heilmittelverordnung].title 1.. MS
* section[heilmittelverordnung].title = "Elektronische Verordnung Heilmittel" (exactly)
* section[heilmittelverordnung].entry 1.. MS
* section[heilmittelverordnung].entry only Reference(KK_ELB_HLM_VO_ServiceRequest)
* section[heilmittelverordnung].entry.reference 1.. MS
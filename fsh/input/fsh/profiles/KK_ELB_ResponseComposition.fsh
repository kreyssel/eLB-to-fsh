Profile: KK_ELB_ResponseComposition
Parent: Composition
Id: KK_ELB_ResponseComposition
* ^url = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_ResponseComposition"
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2023-04-13T09:00:58.8118673+00:00"
* implicitRules ..0
* language ..0
* text ..0
* contained ..0
* identifier ..0
* status = #final (exactly)
* status MS
* type MS
* type.coding 1..1 MS
* type.coding.system 1.. MS
* type.coding.system = "http://dvmd.de/fhir/CodeSystem/kdl" (exactly)
* type.coding.code 1.. MS
* type.coding.code = #AM190107 (exactly)
* category ..0
* subject ..0
* encounter ..0
* date MS
* author ..1 MS
* author.id ..0
* author.reference ..0
* author.type ..0
* author.identifier 1.. MS
* author.identifier only $identifier-iknr
* author.display ..0
* title = "Elektronische Leistungsbestätigung" (exactly)
* title MS
* confidentiality ..0
* attester ..0
* custodian ..0
* relatesTo ..0
* event ..0
* section 1..1 MS
* section.id ..0
* section.title ..0
* section.title ^mustSupport = false
* section.code ..0
* section.author ..0
* section.focus ..0
* section.text ..0
* section.mode ..0
* section.orderedBy ..0
* section.entry 1..1 MS
* section.entry only Reference(KK_ELB_ChargeItem)
* section.entry ^type.aggregation = #bundled
* section.entry.reference 1.. MS
* section.emptyReason ..0
* section.section ..0
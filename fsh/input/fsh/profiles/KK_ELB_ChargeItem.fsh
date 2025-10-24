Profile: KK_ELB_ChargeItem
Parent: ChargeItem
* obeys LBNR
* id ^mustSupport = false
* meta 1.. MS
* meta.security 1..1 MS
* meta.security.system 1.. MS
* meta.security.system = "https://e-lb.de/fhir/CodeSystem/KK_ELB_CS_Nutzungsbedingung_Version" (exactly)
* meta.security.code 1.. MS
* meta.security.code from KK_ELB_VS_Nutzungsbedingung_Version (required)
* implicitRules ..0
* language ..0
* text ..0
* contained ..0
* extension 1..
* extension contains KK_ELB_Payor named Payor 1..1 MS
* extension[Payor] ^short = "Kostenträger"
* extension[Payor] ^definition = "Identifier des Kostenträgers des Versicherten (subject)"
* extension[Payor] ^isModifier = false
* identifier 1..1 MS
* identifier.system 1.. MS
* identifier.system = "urn:ietf:rfc:3986" (exactly)
* identifier.value 1.. MS
* definitionUri ..0
* definitionCanonical ..0
* status MS
* partOf ..0
* code MS
* code.coding 1..1 MS
* code.coding.system 1.. MS
* code.coding.system = "https://e-lb.de/fhir/sid/KK_ELB_ChargeItemCode" (exactly)
* code.coding.code 1.. MS
* subject MS
* subject.identifier 1.. MS
* subject.identifier only $identifier-kvid-10
* subject.identifier.system MS
* subject.identifier.value MS
* context ..0
* occurrence[x] 1.. MS
* occurrence[x] only dateTime or Period
* performer ..2 MS
* performer ^slicing.discriminator.type = #value
* performer ^slicing.discriminator.path = "actor.type"
* performer ^slicing.rules = #closed
* performer contains
    leistungserbringerOrganisation 1..1 MS and
    angestellteLeistungserbringerin 0..1
* performer[leistungserbringerOrganisation] ^comment = "In diesem Slice wird die Leistungserbringer-Organisation bzw. der Leistungserbringer anhand des IKs identifiziert. Die Funktion des Leistungserbringer wird anhand des Sammelgruppenschlüssels in der function angegeben."
* performer[leistungserbringerOrganisation].function 1.. MS
* performer[leistungserbringerOrganisation].function.coding 1..1 MS
* performer[leistungserbringerOrganisation].function.coding.system 1.. MS
* performer[leistungserbringerOrganisation].function.coding.system = "https://e-lb.de/fhir/CodeSystem/KK_ELB_SGS" (exactly)
* performer[leistungserbringerOrganisation].function.coding.code 1.. MS
* performer[leistungserbringerOrganisation].actor MS
* performer[leistungserbringerOrganisation].actor.type 1.. MS
* performer[leistungserbringerOrganisation].actor.type = "Organization" (exactly)
* performer[leistungserbringerOrganisation].actor.identifier 1.. MS
* performer[leistungserbringerOrganisation].actor.identifier only $identifier-iknr
* performer[leistungserbringerOrganisation].actor.identifier.system MS
* performer[leistungserbringerOrganisation].actor.identifier.value MS
* performer[angestellteLeistungserbringerin] ^comment = "In diesem Slice muss bei einem angestelltenverhältnisses des Leistungserbringers zusätzlich zur IK der Leistungserbringer-Organisation der Name des Leistungserbringers angegeben werden."
* performer[angestellteLeistungserbringerin].actor only Reference(Practitioner)
* performer[angestellteLeistungserbringerin].actor MS
* performer[angestellteLeistungserbringerin].actor.type 1.. MS
* performer[angestellteLeistungserbringerin].actor.type = "Practitioner" (exactly)
* performer[angestellteLeistungserbringerin].actor.identifier only KK_ELB_Identifier_LBNR
* performer[angestellteLeistungserbringerin].actor.display 1.. MS
* performingOrganization ..0
* requestingOrganization ..0
* costCenter ..0
* quantity ..0
* bodysite ..0
* factorOverride ..0
* priceOverride ..0
* overrideReason ..0
* enterer ..0
* enteredDate ..0
* service ..0
* product[x] ..0
* account ..0
* note ..0
* supportingInformation ..0
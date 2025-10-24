Profile: KK_ELB_Condition
Parent: Condition
* code 1.. MS
* code.coding MS
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #closed
* code.coding contains
    ICD-10-GM 0..1 and
    alpha-id 0..0 and
    snomed-ct 0..0 and
    orphanet 0..0
* code.coding[ICD-10-GM] only http://fhir.de/StructureDefinition/CodingICD10GM|1.4.0
* code.coding[ICD-10-GM].system MS
* code.coding[ICD-10-GM].version MS
* code.coding[ICD-10-GM].code MS
* code.coding[alpha-id] only http://fhir.de/StructureDefinition/CodingAlphaID|1.4.0
* code.coding[alpha-id].system MS
* code.coding[alpha-id].version MS
* code.coding[alpha-id].code MS
* code.coding[snomed-ct].system 1.. MS
* code.coding[snomed-ct].system = "http://snomed.info/sct" (exactly)
* code.coding[snomed-ct].version 1.. MS
* code.coding[snomed-ct].code 1.. MS
* code.coding[orphanet].system 1.. MS
* code.coding[orphanet].system = "http://www.orpha.net" (exactly)
* code.coding[orphanet].code 1.. MS
* code.text MS
* subject MS
* subject.identifier 1.. MS
* subject.identifier only $identifier-kvid-10
* subject.identifier.system MS
* subject.identifier.value MS
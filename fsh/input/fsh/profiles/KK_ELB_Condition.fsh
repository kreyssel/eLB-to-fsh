Profile: KK_ELB_Condition
Parent: Condition
Id: KK_ELB_Condition
* ^url = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_Condition"
* code 1.. MS
  * coding MS
    * ^slicing.discriminator.type = #value
    * ^slicing.discriminator.path = "system"
    * ^slicing.rules = #closed
  * coding contains
      ICD-10-GM 0..1 and
      alpha-id 0..0 and
      snomed-ct 0..0 and
      orphanet 0..0
  * coding[ICD-10-GM] only http://fhir.de/StructureDefinition/CodingICD10GM|1.4.0
    * system MS
    * version MS
    * code MS
  * coding[alpha-id] only http://fhir.de/StructureDefinition/CodingAlphaID|1.4.0
    * system MS
    * version MS
    * code MS
  * coding[snomed-ct]
    * system 1.. MS
    * system = "http://snomed.info/sct" (exactly)
    * version 1.. MS
    * code 1.. MS
  * coding[orphanet]
    * system 1.. MS
    * system = "http://www.orpha.net" (exactly)
    * code 1.. MS
  * text MS
* subject MS
  * identifier 1.. MS
  * identifier only $identifier-kvid-10
    * system MS
    * value MS
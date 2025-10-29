Profile: KK_ELB_InvoiceContainerBundle
Parent: Bundle
Id: KK_ELB_InvoiceContainerBundle
* ^url = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_InvoiceContainerBundle"
* obeys Therapieart and DiffTherapieart
* meta 1.. MS
  * profile 1..1 MS
* implicitRules ..0
* language ..0
* identifier 1.. MS
  * system 1.. MS
  * system = "https://e-lb.de/fhir/sid/KK_ELB_Belegnummer" (exactly)
  * value 1.. MS
    * ^maxLength = 10
* type = #collection (exactly)
* type MS
* total ..0
* link ..0
* entry 1.. MS
  * ^slicing.discriminator.type = #profile
  * ^slicing.discriminator.path = "resource"
  * ^slicing.rules = #closed
* entry contains
    ResponseDocumentBundle 1..* MS and
    BinaryFile 0..* and
    HebammeAttestServiceRequest 0..* and
    Condition 0..* and
    HeilmittelBundle 0..* and
    LERZusatzinfoServiceRequest 0..2
* entry[ResponseDocumentBundle] obeys sig-1 
  * fullUrl 1.. MS
  * resource 1.. MS
  * resource only $KK_ELB_ResponseDocumentBundle
* entry[BinaryFile]
  * fullUrl 1.. MS
  * resource 1.. MS
  * resource only $KK_ELB_Binary_File
* entry[HebammeAttestServiceRequest]
  * fullUrl 1.. MS
  * resource 1.. MS
  * resource only $KK_ELB_ServiceRequest
* entry[Condition]
  * fullUrl 1.. MS
  * resource 1.. MS
  * resource only $KK_ELB_Condition
* entry[HeilmittelBundle]
  * fullUrl 1.. MS
  * resource 1.. MS
  * resource only $KK_ELB_HLM_VO_DocumentBundle
* entry[LERZusatzinfoServiceRequest]
  * fullUrl 1.. MS
  * resource 1.. MS
  * resource only $KK_ELB_HLM_LER_Zusatzinfos_ServiceRequest
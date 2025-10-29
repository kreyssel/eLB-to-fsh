Instance: KK_ELB_ResponseParameters-ID-0
InstanceOf: Parameters
Usage: #example
* meta.profile = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_ResponseParameters"
* parameter[0]
  * name = "emailContactPoint"
  * valueContactPoint
    * system = #email
    * value = "bestaetigungssystem@example.com"
* parameter[+]
  * name = "softwareIdentifier"
  * valueString = "bestaetigungssystem.example.com@1.0.9"
* parameter[+]
  * resource
    * meta.profile = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_ResponseDocumentBundle"
    * type = #document
    * signature
      * who.identifier.system = "http://fhir.de/sid/arge-ik/iknr"
      * who.identifier.value = "123456780"
      * when = "2022-07-07T10:42:53.333208+02:00"
      * sigFormat = #application/signature+xml
      * data = #"TG9yZW0gaXBzdW0gZG9scisdsgt43BzaXI="
      * type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.5
    * identifier
      * system = "urn:ietf:rfc:3986"
      * value = "urn:uuid:4444d555-666e-77a8-999c-222222b2d33c"
    * resourceType = "Bundle"
    * entry[0]
      * fullUrl = "urn:uuid:a8fe9ff0-57a4-49b9-b15d-762cab488531"
      * resource
        * meta.profile = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_ResponseComposition"
        * title = "Elektronische Leistungsbestätigung"
        * type = $kdl#AM190107
        * status = #final
        * author.identifier.system = "http://fhir.de/sid/arge-ik/iknr"
        * author.identifier.value = "123456780"
        * resourceType = "Composition"
        * date = "2022-06-19T08:00:00Z"
        * section.entry.reference = "urn:uuid:ef0cfed1-d609-42f6-b2bc-b254534db780"
    * entry[+]
      * fullUrl = "urn:uuid:ef0cfed1-d609-42f6-b2bc-b254534db780"
      * resource
        * meta.security = $KK_ELB_CS_Nutzungsbedingung_Version#1
        * meta.profile = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_ChargeItem"
        * extension
          * url = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_Payor"
          * valueIdentifier
            * system = "http://fhir.de/sid/arge-ik/iknr"
            * value = "101575519"
        * code = $KK_ELB_ChargeItemCode#31600
        * status = #billable
        * subject.identifier.system = "http://fhir.de/sid/gkv/kvid-10"
        * subject.identifier
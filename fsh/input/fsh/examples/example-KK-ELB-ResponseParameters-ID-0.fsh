//
// FHIR Example for KK_ELB_ResponseParameters
// Heilmittel: Antwort mit einer Bestätigungsanfrage und einer Ablehnung
//
Instance: KK-ELB-ResponseParameters-ID-0
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
  * name = "responseBundle"
  * resource
    * resourceType = "Bundle"
    * meta.profile = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_ResponseDocumentBundle"
    * identifier
      * system = "urn:ietf:rfc:3986"
      * value = "urn:uuid:4444d555-666e-77a8-999c-222222b2d33c"
    * type = #document
    * timestamp = "2022-06-20T08:30:00Z"
    * entry[0]
      * fullUrl = "urn:uuid:a8fe9ff0-57a4-49b9-b15d-762cab488531"
      * resource
        * resourceType = "Composition"
        * meta.profile = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_ResponseComposition"
        * status = #final
        * type = $dvmd-kdl#AM190107
        * date = "2022-06-19T08:00:00Z"
        * author.identifier
          * system = "http://fhir.de/sid/arge-ik/iknr"
          * value = "123456780"
        * title = "Elektronische Leistungsbestätigung"
        * section.entry.reference = "urn:uuid:ef0cfed1-d609-42f6-b2bc-b254534db780"
    * entry[+]
      * fullUrl = "urn:uuid:ef0cfed1-d609-42f6-b2bc-b254534db780"
      * resource
        * resourceType = "ChargeItem"
        * meta
          * profile = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_ChargeItem"
          * security = $KK_ELB_CS_Nutzungsbedingung_Version#1
        * extension
          * url = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_Payor"
          * valueIdentifier
            * system = "http://fhir.de/sid/arge-ik/iknr"
            * value = "101575519"
        * identifier
          * system = "urn:ietf:rfc:3986"
          * value = "urn:uuid:11122e3e-cb4a-55b6-77f8-dc9dbdb111c2"
        * status = #billable
        * code = $KK_ELB_ChargeItemCode#31600
        * subject.identifier
          * system = "http://fhir.de/sid/gkv/kvid-10"
          * value = #K121212345
        * occurrenceDateTime = "2022-06-12T16:50:00+00:00"
        * performer
          * function = $KK_ELB_SGS#B
          * actor
            * type = #Organization
            * identifier
              * system = "http://fhir.de/sid/arge-ik/iknr"
              * value = "123456789"
            * display = "Sarah Schneider"
    * signature
      * type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.5
      * when = "2022-07-07T10:42:53.333208+02:00"
      * who.identifier
        * system = "http://fhir.de/sid/arge-ik/iknr"
        * value = "123456780"
      * sigFormat = #application/signature+xml
      * data = "TG9yZW0gaXBzdW0gZG9sciBzaXI="
* parameter[+]
  * name = "responseBundle"
  * resource
    * resourceType = "Bundle"
    * meta.profile = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_ResponseDocumentBundle"
    * identifier
      * system = "urn:ietf:rfc:3986"
      * value = "urn:uuid:385a9ea0-33f1-49c7-be05-976cab6ca066"
    * type = #document
    * timestamp = "2022-06-20T08:30:00Z"
    * entry[0]
      * fullUrl = "urn:uuid:d057c5c8-8a87-44dc-ac1d-636c290d8d63"
      * resource
        * resourceType = "Composition"
        * meta.profile = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_ResponseComposition"
        * status = #final
        * type = $dvmd-kdl#AM190107
        * date = "2022-06-19T08:00:00Z"
        * author.identifier
          * system = "http://fhir.de/sid/arge-ik/iknr"
          * value = "123456780"
        * title = "Elektronische Leistungsbestätigung"
        * section.entry.reference = "urn:uuid:d83534b6-17df-4e96-9a5d-e9faa9535e0a"
    * entry[+]
      * fullUrl = "urn:uuid:d83534b6-17df-4e96-9a5d-e9faa9535e0a"
      * resource
        * resourceType = "ChargeItem"
        * meta
          * profile = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_ChargeItem"
          * security = $KK_ELB_CS_Nutzungsbedingung_Version#1
        * extension
          * url = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_Payor"
          * valueIdentifier
            * system = "http://fhir.de/sid/arge-ik/iknr"
            * value = "101575519"
        * identifier
          * system = "urn:ietf:rfc:3986"
          * value = "urn:uuid:11122e3e-cb4a-55b6-77f8-dc9dbdb111c2"
        * status = #not-billable
        * code = $KK_ELB_ChargeItemCode#31600
        * subject.identifier
          * system = "http://fhir.de/sid/gkv/kvid-10"
          * value = "K121212345"
        * occurrenceDateTime = "2022-06-12T16:50:00+00:00"
        * performer
          * function = $KK_ELB_SGS#B
          * actor
            * type = "Organization"
            * identifier
              * system = "http://fhir.de/sid/arge-ik/iknr"
              * value = "123456722"
            * display = "Sabine Schuster"
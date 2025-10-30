//
// FHIR Example for KK ELB Billing Container Parameters
// Abrechnungsdatensatz für Hebammen 
//
Instance: example-KK-ELB-BillingContainerParameters-Hebammen-ID-0
InstanceOf: Parameters
Usage: #example
* meta.profile = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_BillingContainerParameters"
* parameter[0]
  * name = "emailContactPoint"
  * valueContactPoint
    * system = #email
    * value = "endpointmanager@example.org"
* parameter[+]
  * name = "esolFile"
  * valueBase64Binary = "bG9yZW0gaXBzdW0="
* parameter[+]
  * name = "invoice"
  * part[0]
    * name = "invoiceReference"
    * valueString = "20230001"
  * part[+]
    * name = "container"
    * resource
      * resourceType = "Bundle"
      * meta.profile = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_InvoiceContainerBundle"
      * identifier
        * system = "https://e-lb.de/fhir/sid/KK_ELB_Belegnummer"
        * value = #11
      * type = #collection
      * entry[0]
        * fullUrl = "urn:uuid:11122e3e-cb4a-55b6-77f8-dc7dbdb111c2"
        * resource
          * resourceType = "Bundle"
          * meta.profile = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_ResponseDocumentBundle"
          * identifier
            * system = "urn:ietf:rfc:3986"
            * value = "urn:uuid:4444d555-666e-77a8-999c-222222b2d33c"
          * type = #document
          * timestamp = "2022-06-20T08:30:00Z"
          * entry[0]
            * fullUrl = "urn:uuid:11122e3e-cb4a-55b6-77f8-dc7dbdb11199"
            * resource
              * resourceType = "Composition"
              * meta.profile = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_ResponseComposition"
              * status = #final
              * type = $dvmd-kdl#AM190107
              * date = "2022-06-19T08:00:00Z"
              * author.identifier
                * system = "http://fhir.de/sid/arge-ik/iknr"
                * value = #123456780
              * title = "Elektronische Leistungsbestätigung"
              * section.entry.reference = "urn:uuid:55522e3e-cb4a-55b6-77f8-dc9dbdb111c2"
          * entry[+]
            * fullUrl = "urn:uuid:55522e3e-cb4a-55b6-77f8-dc9dbdb111c2"
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
              * code = $KK_ELB_ChargeItemCode#0230
              * subject.identifier
                * system = "http://fhir.de/sid/gkv/kvid-10"
                * value = #K121212345
              * occurrencePeriod
                * start = "2022-06-12T16:50:00+00:00"
                * end = "2022-06-12T17:50:00+00:00"
              * performer
                * function = $KK_ELB_SGS#F
                * actor
                  * type = #Organization
                  * identifier
                    * system = "http://fhir.de/sid/arge-ik/iknr"
                    * value = #123456789
                  * display = "Sarah Schneider"
          * signature
            * type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.5
            * when = "2022-07-07T10:42:53.333208+02:00"
            * who.identifier
              * system = "http://fhir.de/sid/arge-ik/iknr"
              * value = #123456780
            * sigFormat = #application/signature+xml
            * data = "TG9yZW0gaXBzdW0gZG9sciBzaXI="
      * entry[+]
        * fullUrl = "urn:uuid:33322e3e-cb4a-55b6-77f8-dc7dbdb141c2"
        * resource
          * resourceType = "ServiceRequest"
          * meta.profile = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_ServiceRequest"
          * status = #unknown
          * intent = #order
          * quantityQuantity
            * value = 12
            * code = #1
            * system = "http://unitsofmeasure.org"
            * unit = "{Besuche}"
          * subject.identifier
            * system = "http://fhir.de/sid/gkv/kvid-10"
            * value = "K121212345"
          * authoredOn = "2022-12-09"
          * requester.identifier
            * system = "https://fhir.kbv.de/NamingSystem/KBV_NS_Base_ANR"
            * value = "222256789"
          * reasonReference
            * reference = "urn:uuid:44422e3e-cb4a-55b6-77f8-dc7dbdb141c2"
      * entry[+]
        * fullUrl = "urn:uuid:44422e3e-cb4a-55b6-77f8-dc7dbdb141c2"
        * resource
          * resourceType = "Condition"
          * meta.profile = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_Condition"
          * clinicalStatus = $condition-clinical#active
          * verificationStatus = $condition-ver-status#confirmed
          * code
            * coding
              * extension[0]
                * url = "http://fhir.de/StructureDefinition/icd-10-gm-mehrfachcodierungs-kennzeichen"
                * valueCoding = $icd-10-gm-mehrfachcodierungs-kennzeichen#* "*"
              * extension[+]
                * url = "http://fhir.de/StructureDefinition/icd-10-gm-diagnosesicherheit"
                * valueCoding = $KBV_CS_SFHIR_ICD_DIAGNOSESICHERHEIT#G
              * extension[+]
                * url = "http://fhir.de/StructureDefinition/seitenlokalisation"
                * valueCoding = $KBV_CS_SFHIR_ICD_SEITENLOKALISATION#R
              * system = $icd-10-gm
              * code = #Z39.1
              * version = #2023
            * text = "Wöchnerin benötigt 12 weitere Besuche"
          * subject.identifier
            * system = "http://fhir.de/sid/gkv/kvid-10"
            * value = #K121212345
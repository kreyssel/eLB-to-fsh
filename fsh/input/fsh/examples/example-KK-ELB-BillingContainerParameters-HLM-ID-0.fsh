//
// FHIR Example for KK ELB Billing Container Parameters
// Abrechnungsdatensatz für Heilmittel 
//
Instance: KK-ELB-BillingContainerParameters-HLM-ID-0
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
        * value = #1
      * type = #collection
      * entry[0]
        * fullUrl = "urn:uuid:308d698c-faae-4787-b57b-4f503d36a35f"
        * resource
          * resourceType = "Bundle"
          * meta.profile = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_ResponseDocumentBundle"
          * identifier
            * system = "urn:ietf:rfc:3986"
            * value = "urn:uuid:4444d555-666e-77a8-999c-222222b2d33c"
          * type = #document
          * timestamp = "2022-06-20T08:30:00Z"
          * entry[0]
            * fullUrl = "urn:uuid:765969d7-68ca-4c05-af50-6d33b8a9521b"
            * resource
              * resourceType = "Composition"
              * meta.profile = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_ResponseComposition"
              * status = #final
              * type
                * coding = $dvmd-kdl#AM190107
              * date = "2022-06-19T08:00:00Z"
              * author.identifier
                * system = "http://fhir.de/sid/arge-ik/iknr"
                * value = #123456780
              * title = "Elektronische Leistungsbestätigung"
              * section.entry
                * reference = "urn:uuid:5a7e1e02-805b-4a46-8d8a-d49921edf413"
          * entry[+]
            * fullUrl = "urn:uuid:5a7e1e02-805b-4a46-8d8a-d49921edf413"
            * resource
              * resourceType = "ChargeItem"
              * meta
                * profile = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_ChargeItem"
                * security = $KK_ELB_CS_Nutzungsbedingung_Version#1
              * extension
                * url = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_Payor"
                * valueIdentifier
                  * system = "http://fhir.de/sid/arge-ik/iknr"
                  * value = #101575519
              * identifier
                * system = "urn:ietf:rfc:3986"
                * value = "urn:uuid:11122e3e-cb4a-55b6-77f8-dc9dbdb111c2"
              * status = #billable
              * code
                * coding = $KK_ELB_ChargeItemCode#31600
              * subject.identifier
                * system = "http://fhir.de/sid/gkv/kvid-10"
                * value = #K121212345
              * occurrencePeriod
                * start = "2022-06-12T16:50:00+00:00"
                * end = "2022-06-12T17:50:00+00:00"
              * performer
                * function.coding = $KK_ELB_SGS#B
                * actor
                  * type = "Organization"
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
            * data = "RGFzIGlzdCBlaW4gQWJyZWNobnVuZyBpbSBFRElGQUNUIEZvcm1hdA=="
      * entry[+]
        * fullUrl = "urn:uuid:60415140-e385-4700-83c8-a7e11dcff234"
        * resource
          * resourceType = "Bundle"
          * meta.profile = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_HLM_VO_DocumentBundle"
          * identifier
            * system = "urn:ietf:rfc:3986"
            * value = "urn:uuid:4444d555-666e-77a8-222c-222222b2d33c"
          * type = #document
          * timestamp = "2022-06-20T08:30:00Z"
          * entry[0]
            * fullUrl = "urn:uuid:af8fb653-1eac-42af-b9aa-5dcbb1f893de"
            * resource
              * resourceType = "Composition"
              * meta.profile = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_HLM_VO_Composition"
              * extension
                * extension[0]
                  * url = "therapiebericht"
                  * valueBoolean = true
                * extension[+]
                  * url = "hausbesuch"
                  * valueBoolean = false
                * extension[+]
                  * url = "therapiefrequenz"
                  * valueRange
                    * low
                      * value = 1
                      * system = "http://unitsofmeasure.org"
                      * unit = "wk"
                    * high
                      * value = 2
                      * system = "http://unitsofmeasure.org"
                      * unit = "wk"
                * extension[+]
                  * url = "unterschrift"
                  * valueBoolean = true
                * url = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_EX_Zusatzinfos"
              * status = #final
              * type.coding.code = #e13A
              * date = "2022-06-19T08:00:00Z"
              * author.identifier
                * system = "http://fhir.de/sid/arge-ik/iknr"
                * value = #123456780
              * title = "Elektronische Verordnung Heilmittel"
              * section
                * title = "Elektronische Verordnung Heilmittel"
                * entry[0].reference = "urn:uuid:f253531a-97ba-432a-9d9b-789f2307540c"
                * entry[+].reference = "urn:uuid:03652da1-21f2-434d-b1e2-97c695022954"
          * entry[+]
            * fullUrl = "urn:uuid:f253531a-97ba-432a-9d9b-789f2307540c"
            * resource
              * resourceType = "ServiceRequest"
              * meta.profile = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_HLM_VO_ServiceRequest"
              * status = #unknown
              * intent = #order
              * category = $KK_ELB_CS_HLM_Section_Type#HLM "Vorrangiges Heilmittel"
              * code = $KK_ELB_HLM_Katalog#KG
              * quantityQuantity
                * value = 20
                * code = #1
                * system = "http://unitsofmeasure.org"
                * unit = "{Count}"
              * subject.identifier
                * system = "http://fhir.de/sid/gkv/kvid-10"
                * value = #K121212345
          * entry[+]
            * fullUrl = "urn:uuid:03652da1-21f2-434d-b1e2-97c695022954"
            * resource
              * resourceType = "ServiceRequest"
              * meta.profile = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_HLM_VO_ServiceRequest"
              * status = #unknown
              * intent = #order
              * category = $KK_ELB_CS_HLM_Section_Type#ergaenzendes_HLM "Ergänzendes Heilmittel"
              * code = $KK_ELB_HLM_Katalog#KG
              * quantityQuantity
                * value = 20
                * code = #1
                * system = "http://unitsofmeasure.org"
                * unit = "{Count}"
              * subject.identifier
                * system = "http://fhir.de/sid/gkv/kvid-10"
                * value = #K121212345
          * entry[+]
            * fullUrl = "urn:uuid:7fa8dc74-2895-463e-b2c3-6e286fcdc8e9"
            * resource
              * resourceType = "ServiceRequest"
              * meta.profile = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_HLM_LER_Zusatzinfos_ServiceRequest"
              * status = #unknown
              * intent = #order
              * code = $KK_ELB_CS_HLM_LER_Zusatzinfos#GT
              * subject.identifier
                * system = "http://fhir.de/sid/gkv/kvid-10"
                * value = #K121212345
          * entry[+]
            * fullUrl = "urn:uuid:cabc9b0e-99f0-47c2-a220-c1e9c12d0a7a"
            * resource
              * resourceType = "ServiceRequest"
              * meta.profile = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_HLM_LER_Zusatzinfos_ServiceRequest"
              * status = #unknown
              * intent = #order
              * code = $KK_ELB_CS_HLM_LER_Zusatzinfos#Freq
              * subject.identifier
                * system = "http://fhir.de/sid/gkv/kvid-10"
                * value = #K121212345
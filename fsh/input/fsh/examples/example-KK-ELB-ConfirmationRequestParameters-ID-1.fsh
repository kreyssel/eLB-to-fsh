//
// FHIR Example for KK_ELB_ConfirmationRequestParameters
// Beispiel einer Bestätigungsanfrage mit Callback-URL und zwei zu bestätigende Leistungen 
// im Bereich der Hebammen
//
Instance: KK-ELB-ConfirmationRequestParameters-ID-1
InstanceOf: Parameters
Usage: #example
* meta.profile = "https://e-lb.de/fhir/StructureDefinition/KK_ELB_ConfirmationRequestParameters"
* parameter[0]
  * name = "requestType"
  * valueCoding = $KK_ELB_RequestType#REQUEST_WITH_CALLBACK
* parameter[+]
  * name = "callbackUrl"
  * valueUrl = "https://example.de/fhir/callbackurl"
* parameter[+]
  * name = "emailContactPoint"
  * valueContactPoint
    * system = #email
    * value = "endpointmanager@example.org"
* parameter[+]
  * name = "softwareIdentifier"
  * valueString = "pvs.example.com"
* parameter[+]
  * name = "chargeItem"
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
    * status = #unknown
    * code = $KK_ELB_ChargeItemCode#31600
    * subject.identifier
      * system = "http://fhir.de/sid/gkv/kvid-10"
      * value = "K121212345"
    * occurrencePeriod
      * start = "2022-06-12T16:50:00+00:00"
      * end = "2022-06-12T17:50:00+00:00"
    * performer
      * function = $KK_ELB_SGS#F
      * actor
        * type = "Organization"
        * identifier
          * system = "http://fhir.de/sid/arge-ik/iknr"
          * value = "123456789"
        * display = "Sarah Schneider"
* parameter[+]
  * name = "chargeItem"
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
      * value = "urn:uuid:11122e3e-cb4a-55b6-77f8-dc9dbdb111c7"
    * status = #unknown
    * code = $KK_ELB_ChargeItemCode#31600
    * subject.identifier
      * system = "http://fhir.de/sid/gkv/kvid-10"
      * value = "K121212345"
    * occurrencePeriod
      * start = "2022-06-12T16:50:00+00:00"
      * end = "2022-06-12T17:50:00+00:00"
    * performer[0]
      * function = $KK_ELB_SGS#F
      * actor
        * type = "Organization"
        * identifier
          * system = "http://fhir.de/sid/arge-ik/iknr"
          * value = "123456789"
        * display = "Praxis Schneider und Co."
    * performer[+]
      * actor
        * type = "Practitioner"
        * display = "Sarah Schneider"

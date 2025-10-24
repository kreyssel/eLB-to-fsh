Invariant: Parameters-endpoint-request-with-callback
Description: "Im Falle einer 'REQUEST_WITH_CALLBACK'-Anfrage muss der 'callbackUrl'-Parameter vorhanden sein"
* severity = #error
* expression = "parameter.where(name = 'requestType' and (value as Coding).system = 'https://e-lb.de/fhir/CodeSystem/KK_ELB_RequestType' and (value as Coding).code = 'REQUEST_WITH_CALLBACK').exists() implies parameter.where(name = 'callbackUrl' and (value as url).exists()).exists()"
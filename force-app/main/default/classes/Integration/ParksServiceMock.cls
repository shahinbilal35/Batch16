public with sharing class ParksServiceMock implements WebServiceMock {
    public void doInvoke(Object stub, Object soapRequest, Map<String,Object> responseMap, String endpoint, String soapAction, String requestName, String responseNamespace, String responseName, String responseType) {
        ParksServices.byCountryResponse response_x = new ParksServices.byCountryResponse();
        List<String> parks = new List<String>{'Park1', 'Park2', 'Park3'};
        response_x.return_x = parks;
        responseMap.put('response_x', response_x);
    }
}
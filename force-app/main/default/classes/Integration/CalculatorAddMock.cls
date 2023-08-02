public with sharing class CalculatorAddMock implements WebServiceMock {
    public void doInvoke(Object stub, Object soapRequest, Map<String,Object> responseMap, String endpoint, String soapAction, String requestName, String responseNamespace, String responseName, String responseType) {
        CalculatorServices.doAddResponse response_x = new CalculatorServices.doAddResponse();
        response_x.return_x = 200;
        responseMap.put('response_x', response_x);
    }
}
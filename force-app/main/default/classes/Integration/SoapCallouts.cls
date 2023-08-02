public with sharing class SoapCallouts {
    public static String[] getParksByCountry(String country) {
        ParksServices.ParksImplPort parkService = new ParksServices.ParksImplPort();
        String[] parks = parkService.byCountry(country);
        System.debug(parks);
        return parks;
    }

    public static Double add(Double num1, Double num2) {
        CalculatorServices.CalculatorImplPort calcService = new CalculatorServices.CalculatorImplPort();
        Double result = calcService.doAdd(num1,num2);
        System.debug(result);
        return result;
    }

    public static Double multiply(Double num1, Double num2) {
        CalculatorServices.CalculatorImplPort calcService = new CalculatorServices.CalculatorImplPort();
        Double result = calcService.doMultiply(num1,num2);
        System.debug(result);
        return result;
    }
}
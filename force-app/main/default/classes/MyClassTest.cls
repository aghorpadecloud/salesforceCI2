@isTest
public with sharing class MyClassTest {
    
    @isTest static void testWarmTemp() {
        Decimal celsius = MyClass.FahrenheitToCelsius(70);
        System.assertEquals(21.11,celsius);
    }
    
    @isTest static void testFreezingPoint() {
        Decimal celsius = MyClass.FahrenheitToCelsius(32);
        System.assertEquals(0,celsius);
    }
    @isTest static void testBoilingPoint() {
        Decimal celsius = MyClass.FahrenheitToCelsius(212);        
        System.assertEquals(100,celsius,'Boiling point temperature is not expected.');
    } 
    
    @isTest static void testNegativeTemp() {
        Decimal celsius = MyClass.FahrenheitToCelsius(-10);
        System.assertEquals(-23.33,celsius);
    }
}

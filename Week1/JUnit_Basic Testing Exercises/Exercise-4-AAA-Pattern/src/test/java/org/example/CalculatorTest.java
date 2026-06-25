package org.example;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class CalculatorTest {

    private Calculator calculator;

    
    @Before
    public void setUp() {

        System.out.println("Setting up Calculator...");
        calculator = new Calculator();

    }

    
    @Test
    public void testAddition() {

        
        int num1 = 10;
        int num2 = 20;

        
        int result = calculator.add(num1, num2);

        
        assertEquals(30, result);

    }

    
    @After
    public void tearDown() {

        System.out.println("Cleaning up...");
        calculator = null;

    }
}
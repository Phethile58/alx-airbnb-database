#!/usr/bin/env python3
"""
Unit tests for the SimpleCalculator class.
Covers addition, subtraction, multiplication, and division operations.
"""

import unittest
from simple_calculator import SimpleCalculator


class TestSimpleCalculator(unittest.TestCase):
    """Test suite for the SimpleCalculator class."""

    def setUp(self):
        """Set up a calculator instance before each test."""
        self.calc = SimpleCalculator()

    # --- Tests for Addition ---
    def test_addition(self):
        """Test the add method with various inputs."""
        self.assertEqual(self.calc.add(2, 3), 5)
        self.assertEqual(self.calc.add(-1, 1), 0)
        self.assertEqual(self.calc.add(-2, -3), -5)
        self.assertEqual(self.calc.add(0, 5), 5)
        self.assertEqual(self.calc.add(2.5, 3.5), 6.0)

    # --- Tests for Subtraction ---
    def test_subtraction(self):
        """Test the subtract method with various inputs."""
        self.assertEqual(self.calc.subtract(5, 3), 2)
        self.assertEqual(self.calc.subtract(3, 5), -2)
        self.assertEqual(self.calc.subtract(-2, -3), 1)
        self.assertEqual(self.calc.subtract(0, 0), 0)
        self.assertEqual(self.calc.subtract(2.5, 1.2), 1.3)

    # --- Tests for Multiplication ---
    def test_multiplication(self):
        """Test the multiply method with various inputs."""
        self.assertEqual(self.calc.multiply(2, 3), 6)
        self.assertEqual(self.calc.multiply(-2, 3), -6)
        self.assertEqual(self.calc.multiply(-2, -3), 6)
        self.assertEqual(self.calc.multiply(0, 100), 0)
        self.assertEqual(self.calc.multiply(2.5, 2), 5.0)

    # --- Tests for Division ---
    def test_division(self):
        """Test the divide method with valid inputs."""
        self.assertEqual(self.calc.divide(6, 3), 2)
        self.assertEqual(self.calc.divide(-6, 3), -2)
        self.assertEqual(self.calc.divide(7.5, 2.5), 3.0)

    def test_division_by_zero(self):
        """Test division by zero returns None."""
        self.assertIsNone(self.calc.divide(5, 0))
        self.assertIsNone(self.calc.divide(0, 0))

    def test_division_result_type(self):
        """Ensure division result is a float."""
        result = self.calc.divide(5, 2)
        self.assertIsInstance(result, float)


if __name__ == "__main__":
    unittest.main()

#!/usr/bin/env python3
"""
robust_division_calculator.py

Provides a safe_divide function that handles:
- Non-numeric input (ValueError)
- Division by zero (ZeroDivisionError)

The function returns a user-friendly string describing the result or error.
"""

def safe_divide(numerator, denominator):
    """
    Attempt to divide numerator by denominator.

    Parameters:
    - numerator: value or string representing the numerator
    - denominator: value or string representing the denominator

    Returns:
    - str: either "The result of the division is X" or an error message.
    """
    try:
        num = float(numerator)
        den = float(denominator)
    except (ValueError, TypeError):
        return "Error: Please enter numeric values only."

    # check for zero denominator explicitly to avoid ZeroDivisionError
    if den == 0.0:
        return "Error: Cannot divide by zero."

    result = num / den
    return f"The result of the division is {result}"

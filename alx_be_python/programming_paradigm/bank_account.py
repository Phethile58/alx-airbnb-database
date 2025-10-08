#!/usr/bin/env python3
"""
Module: bank_account
Defines the BankAccount class demonstrating OOP encapsulation.
"""

class BankAccount:
    """A simple BankAccount class that encapsulates balance operations."""

    def __init__(self, initial_balance=0):
        """Initialize account balance with an optional initial amount."""
        self.__account_balance = initial_balance  # Private attribute for encapsulation

    def deposit(self, amount):
        """Deposit a specified amount into the account."""
        if amount > 0:
            self.__account_balance += amount
        else:
            print("Deposit amount must be positive.")

    def withdraw(self, amount):
        """Withdraw a specified amount if sufficient funds exist."""
        if amount <= 0:
            print("Withdrawal amount must be positive.")
            return False
        if amount <= self.__account_balance:
            self.__account_balance -= amount
            return True
        return False

    def display_balance(self):
        """Display the current balance."""
        print(f"Current Balance: ${self.__account_balance}")

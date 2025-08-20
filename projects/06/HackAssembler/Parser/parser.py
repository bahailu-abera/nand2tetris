#!/usr/bin/env python3
"""
Parser module for reading instruction line by line
and giving instruction type and instruction symbol
"""

class Parser:
    def __init__(self):
        pass

    def has_more_lines(self):
        """Checks if there is more work to do (boolean)"""
        pass

    def advance(self):
        """Gets the next instruction and makes it the current instruction (string)"""
        pass

    def instruction_type(self):
        """Returns the instruction type"""
        pass

    def symbol(self):
        """Returns the instruction's symbol (string)"""

    def dest(self):
        """Returns the instruction's dest field (string)"""

    def comp(self):
        """Returns the instruction's comp field (string)"""

    def jump(self):
        """Returns the instruction's jump field (string)"""
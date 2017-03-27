# --! coding: utf-8 --!

"""
Author: Maxim Britvin
GitHub: DarkwingDuck48
e-mail: maksbritvin@gmail.com

Dependence:
1. veryprettytable (run pip install veryprettytable in command line)
"""

# todo add metadata parser
from veryprettytable import VeryPrettyTable
import re


class GRSHFMrule:
    def __init__(self, rule_name, cl_indent=0, cl_separator='\t'):

        self.rule_name = rule_name
        self.cl_intendant = cl_indent
        self.cl_separator = cl_separator
        self.allrule = open(rule_name, 'r', encoding='cp1251').readlines()
        self.no_input_start = len(self.allrule) + 1
        self.no_input_end = 0
        self.log_start = len(self.allrule) + 1
        self.log_end = 0

# Working with functions
    @property
    def function_list(self):
        """
        Stores list of functions with their parametres.
        :return: Dictionary with functions names and parametres
        :rtype dict
        """
        func = {}
        for i in range(0, len(self.allrule)):
            if self.allrule[i].startswith("Sub"):
                line = self.allrule[i].strip()[4:]
                if re.match(r".*'.*", line):
                    result = re.split(r'[\t]', line, maxsplit=1)
                    line = result[0]
                line = line.split('(')
                line_dict = {}
                if len(line) > 1 and not line[1].startswith(')'):
                    if len(line[1]) > 1:
                        line_dict = {line[0]: line[1][:len(line[1])-1]}
                else:
                    line_dict = {line[0]: "None"}
                func.update(line_dict)
        return func

    @property
    def noinput_rule(self):
        """

        :return: start and end lines for NoInput rule
        :rtype: list
        """
        # todo add generator for noinput accounts
        no_input_rule = []
        for i in range(0, len(self.allrule)):
            if self.allrule[i].startswith("Sub NoInput"):
                self.no_input_start = i  # Start line for NoInput rule
            if self.allrule[i].startswith("End Sub") and i > self.no_input_start:
                self.no_input_end = i
                break
        self.no_input_end += 1  # End line for NoInput rule

        for i in range(self.no_input_start, self.no_input_end + 1):
            if not self.allrule[i].isspace() and not re.match(r"'.*", self.allrule[i].strip()):
                no_input_rule.append(self.allrule[i].strip())

        return no_input_rule

# Working with changelog
    @property
    def changelog(self):
        """
        You need to create in your rule table with next structure:

        Version     Reason  Author  Date    Comment

        separator for fields specified by cl_separator
        :return: table with changes
        :rtype VeryPrettyTable()
        """

        prettytable = VeryPrettyTable()
        changelog = []
        for i in range(0, len(self.allrule)):
            if self.allrule[i].lower().startswith('\'change log'):
                self.log_start = i
            if self.allrule[i].startswith('\'_') and i > self.log_start:
                self.log_end = i
                break
        self.log_start += self.cl_intendant  # intending from change log string to table
        for i in range(self.log_start, self.log_end):
            changelog.append([item for item in self.allrule[i][1:].strip().split(self.cl_separator) if item])
        prettytable.field_names = ["Version", 'Reason', 'Author', 'Date', 'Comment']
        prettytable.align['Comment'] = 'l'
        for change in changelog:
            prettytable.add_row(change)
        return prettytable

    def get_lastchange(self, number=1):
        """

        :param number: count of return rows
        :return: table with number last comments
        :rtype VeryPrettyTable()
        """
        self.changelog.get_string(sortby="Version")
        print(self.changelog[-number:])

rule = GRSHFMrule("GRSHFM_Rules_v17010301.rle", 6, '\t')

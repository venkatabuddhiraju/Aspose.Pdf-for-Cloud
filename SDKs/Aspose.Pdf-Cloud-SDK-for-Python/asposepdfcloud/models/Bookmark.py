#!/usr/bin/env python

class Bookmark(object):
    """NOTE: This class is auto generated by the swagger code generator program.
    Do not edit the class manually."""


    def __init__(self):
        """
        Attributes:
          swaggerTypes (dict): The key is attribute name and the value is attribute type.
          attributeMap (dict): The key is attribute name and the value is json key in definition.
        """
        self.swaggerTypes = {
            'Title': 'str',
            'Italic': 'bool',
            'Bold': 'bool',
            'Links': 'list[Link]',
            'Bookmarks': 'list[Link]'
        }

        self.attributeMap = {
            'Title': 'Title','Italic': 'Italic','Bold': 'Bold','Links': 'Links', 'Bookmarks' : 'Bookmarks'}       

        self.Title = None # str
        self.Italic = None # str
        self.Bold = None # str
        self.link = None # Link
        

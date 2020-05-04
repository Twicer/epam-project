#!/bin/bash

# task 4.9.13
# In the script using wget, download the document from the mail.ru server head page and redirect the received document to the links (lynx) input.

#   Getting a site page
wget mail.ru
lynx    index.html
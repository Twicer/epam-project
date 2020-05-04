#!/bin/bash

# task 4.9.13
# In the script using wget, download the document from the mail.ru server head page and redirect the received document to the links (lynx) input.

web=$(wget mail.ru)
echo `find *[Azaz]*.htmp $web`
#lynx $web

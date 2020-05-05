#!/bin/bash

# View processes in real time and display the ones that use the most memory.
# Lower the priority of the most resource-intensive process by 2.

ps -Fe --sort rss

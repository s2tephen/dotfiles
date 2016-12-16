#!/bin/bash

apm list --installed --bare | sed '$d' | sed '$d' > .atom/.atompkg

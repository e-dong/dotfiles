#!/bin/bash

docker run --pull always --name "silverbullet" -d -p 3000:3000 -v ~/share/Notes/space:/space zefhemel/silverbullet


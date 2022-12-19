#!bin/bash

cd ../

pwd

# mqsipackagebar -a demo.bar -k simple-demo -y esb.framework.lib esb.framework.java.lib
ibmint package --input-path workspace/source --output-bar-file bars/demo.bar

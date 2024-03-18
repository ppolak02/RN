#!/bin/bash
curl https://repo1.maven.org/maven2/com/facebook/react/react-native-artifacts/0.73.5/ | sed -n 's/.*href="\([^"]*\).*/\1/p' | sed -n '1!p' >> output.log
echo "******"
for i in $(cat output.log); do
    curl -O "https://repo1.maven.org/maven2/com/facebook/react/react-native-artifacts/0.73.5/$i"
done

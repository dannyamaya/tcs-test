#!/bin/bash
if ! command -v python3 &> /dev/null; then
  echo "Python 3 not found. Installing Python 3..."
  sudo apt-get update
  sudo apt-get install -y python3
fi

echo "Creating Python file..."
cat <<EOF > numbers.py
for i in range(1, 101):
    print(i)
EOF

echo "Executing Python file..."
python3 numbers.py
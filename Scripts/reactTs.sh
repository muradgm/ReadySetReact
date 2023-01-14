#!/bin/bash

# Purpose: A script to perform cleanup after installing the create-react-app to delete all unnecessery files

echo -n please enter a project name: 
read -e name
if [ $? -ne 0 ]; then
exit 1
elif [ -z "$name" ]; then
echo
echo "A project name Must be provided!"
elif [[ $name =~ ^[A-Z] ]]; then
echo
echo "Name should not start with a capital letter"
exit 1
fi

npx create-react-app $name --template typescript


# Delete all unnecessary files in Public Folder

# Access created folder
cd $name 


# Delete the README.md file contents.
sed -i '1,$d' ./README.md


# Delete all unnecessary files in Public Folder
cd public
rm logo192.png logo512.png manifest.json robots.txt favicon.ico


# Delete all unnecessary lines in index.html
sed -i '12,26d' ./index.html
sed -i '17,26d' ./index.html
sed -i '15d' ./index.html
sed -i '7,11d' ./index.html
sed -i '5d' ./index.html


# Adding the Compatibelity meta for IE
sed -i  '5 i <meta http-equiv="X-UA-Compatible" content="IE=edge">' ./index.html


sed -i '7d' ./index.html
sed -i "7 i <title>${name}</title>" ./index.html


# Delete all unnecessary files in src Folder
cd ../src
rm App.css App.tsx App.test.tsx index.css logo.svg reportWebVitals.ts setupTests.ts


# Delete unnecessary lines in index.js
sed -i '15,20d' ./index.tsx
sed -i '11,13d' ./index.tsx


# Adding the App component inside index.js
sed -i '11 i <App />,' ./index.tsx
sed -i '3,5d' ./index.tsx


# Adding the correct importing paths
sed -i  "3 i import App from './components/App'" ./index.tsx
sed -i  "3 i import './components/App.scss'" ./index.tsx


# Createing the components folder
mkdir components


cd ./components

# Populate App.jsx with general boilerplate
touch App.tsx
echo "export default function App() {
  return <main className='App'>One Command Create-React-App-Cleaner 🧽 </main>;
};" >> App.tsx

# creating and Populating the App.css file with general boilerplate
touch App.scss
echo "*
*:before,
*:after{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}" >> App.scss

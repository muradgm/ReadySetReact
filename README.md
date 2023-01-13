## ReadySetReact

### Purpose

#### The react.sh<sup>`Standard`</sup> or reactTs.sh<sup>`TypeScript`</sup> scripts, are designed to make it easy to set up a new React project using create-react-app and perform a basic cleanup of unnecessary files and folders

### How to Use

**1. Download the react.sh<sup>`Standard`</sup> or reactTs.sh<sup>`TypeScript`</sup> file to your computer.**

**2. Use the `mv` command to move the file from its current location to the `/usr/local/bin` directory.**

**`sudo mv /path/to/react.sh /usr/local/bin/`**

> **Note:** please make sure to add the correct file path

**3. Make sure you are in the `/usr/local/bin` directory, then make the script executable by running**
`sudo chmod +x ./react.sh` or `sudo chmod +x ./reactTs.sh`

**The script should now be executable.**
**You can create your React project by running** `react.sh` or `reactTs.sh` **in your terminal.**

### File Modifications

**This script will modify the following files/folders:**
**1. README file:**

- Delete the entire file contents.
  
**2. Public folder:**

- Delete logo192.png, logo512.png, `manifest.json`, robots.txt, and favicon.ico
- Delete unnecessary contents in `index.html`
- Add the Compatibility `<meta>` for IE into `index.html`
- The title in `index.html` will match the project name.
  
**3. Src folder:**

- Delete `App.css`, `App.js`, `App.test.js`, `index.css`, logo.svg, `reportWebVitals.js`, and `setupTests.js`
- Delete unnecessary contents in `index.js`
- Create the components folder, and move `App.jsx` and `App.scss` to the `./components` folder.
- Add `import App from './components/App'` and `import './components/App.scss'` in `./index.js`.
- Add basic styling in `App.scss`

  ```css
  *
  *:before,
  *:after{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  }
  ```
___

### License

[![License](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

This project is licensed under the [MIT License](LICENSE).


***

### Happy Coding 💻

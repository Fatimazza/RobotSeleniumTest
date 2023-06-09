<h1 align="center">Robot Selenium Test</h1></br>

<p align="center">
:sparkles: Web Automation Testing using Robot Framework with Selenium Library &amp; Python :sparkles:
</p>

## Preparation

What will be used on this project


| Item           | Source                                                         |
| -------------- | ------------------------------------------------------------ |
| Editor         | VS Code (https://code.visualstudio.com/download) |
| Package Manager| PIP (https://pip.pypa.io/en/stable/getting-started/) |
| UI Test Tools  | Robot Framework with Python (https://robotframework.org/#getting-started) |
|                | Selenium Library (https://github.com/robotframework/SeleniumLibrary/) |
|                | PyYaml (https://pypi.org/project/PyYAML/) |
| Design Pattern | Selenium POM or Page Object Model |
| Test Reporter  | Robot Framework with Python (https://robotframework.org/#getting-started)|
| Browser        | Latest version of Chrome / Firefox / Edge / Safari  |

## Pre-Requisite Installation

Install VS Code Editor, Python, and PIP

To check whether you already installed Python & PIP

```Bash
python --version
```
```Bash
python -m pip --version 
```

## Testing Tools Installation

Install Robot Framework

```Bash
python -m pip install robotframework
```

Install Selenium Library

```Bash
python -m pip install --upgrade robotframework-seleniumlibrary
```

Install PyYAML 

```Bash
python -m pip install pyyaml
```

## Setting up Project

### Clone

**👉 [Clone this Repository](https://github.com/Fatimazza/RobotSeleniumTest/)** through Terminal or Command Prompt

### Open the Project on Editor

Open this Automation Project using VS Code Editor.

### Run the Automation Project 

Change to Project directory on Terminal or Command Prompt

```Bash
cd RobotSeleniumTest
```

Run Specific Test Execution on Terminal

```Bash
robot --outputdir output/ step/test_login.robot
```

Run All Test Execution on Terminal

```Bash
robot --outputdir output/ .
```

> Note: Please wait until all test execution finished

> Default Browser used is Chrome

Run All Test on Various Browser

```Bash
robot --variable browser:chrome --outputdir output/chrome .
```

```Bash
robot --variable browser:firefox --outputdir output/firefox .
```

```Bash
robot --variable browser:safari --outputdir output/safari .
```

### Test Execution HTML Report

:white_check_mark: Report available on <b> RobotSeleniumTest/output/report.html </b> OR <br/><br/>
:white_check_mark: Report available on <b> RobotSeleniumTest/output/browser/report.html </b>

OSP-PBPK-Model-Library
================
Open Systems Pharmacology
2025-01-07

Library of released PBPK substance models and evaluation reports

## How to create evaluation reports

- Create a new branch from the `create-reports` branch (for instance,
  `my-reports`)
  - Define the appropriate OSP environment and tools by updating
    `tools.csv`
  - Define the models and projects by updating `models.csv`
  - Go to the Github Action: [Automated Evaluation Reports and
    Projects](https://github.com/Open-Systems-Pharmacology/OSP-PBPK-Model-Library/actions/workflows/create-reports.yaml)
    - Click on the button **Run workflow**
      - Select your branch (for instance, `my-reports`)
      - Click on the green button **Run workflow**

## What to do when reports are created

When the evaluation reports are created, a pull request is triggered
toward the `develop` branch. The pull request will allow users to review
the updates in the reports and adopt the new version.

<!-- README.md is generated from README.Rmd. Please edit that file -->

## Table of evaluated PBPK models

| Execute | Repository name | Released version | Snapshot name | Workflow name | Additional projects |
|:--------|:----------------|:-----------------|:--------------|:--------------|:--------------------|
| TRUE    | 7E3-Model       | 1.0              | 7E3           |               |                     |
| TRUE    | BAY794620-Model | 1.0              | BAY794620     |               |                     |

## Table of tools

| Tool                    | Version  |
|:------------------------|:---------|
| ospsuite-R              | 12.1.0   |
| Reporting Engine        | 2.2.367  |
| RUtils                  | 1.5.37   |
| TLF                     | 1.5.170  |
| rClr                    | NA       |
| rSharp                  | 1.0.0    |
| Qualification Runner    | 11.1     |
| Qualification Framework | 3.2      |
| PK-Sim                  | 11.3.208 |

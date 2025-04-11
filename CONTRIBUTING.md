# Contributing to our Package

First of all, we thank you for any and all contributions to this project! :tada:

##### Table of Contents

* [What to Know Before Starting](#what-should-i-know-before-i-get-started)
* [How to Contribute](#how-to-contribute)
* [Style Guide](#style-guide)
* [Code of Conduct](#code-of-conduct)

## What Should I Know Before I Get Started?

We appreciate suggestions to improve the code and resolve bug fixes, but please be respectful and follow the Code of Conduct.

## How to Contribute

### For Core Members

This applies to the following **core members of our group**: 
Heidi Lantz, Nazia Edroos, Jessica Luo, and Jade Chen.

If you notice a bug, or have a feature request,
please open up an issue [here](https://github.com/DSCI-310-2025/dsci-310-group-7-data-dudes/issues).

If you'd like to contribute a feature or bug fix,
you should work in the standard GitHub workflow
by creating a branch from the main project repo.
Once you are satisfied with your changes, you can open a pull request (PR), 
and get another core member to review your changes.

We will review pull requests within 7 days.

### For Others

If you notice a bug, or have a feature request,
please open up an issue [here](https://github.com/DSCI-310-2025/dsci-310-group-7-data-dudes/issues).

If you'd like to contribute a feature or bug fix:

**How to contribute**
1. On your GitHub account, fork the package repository.

2. Clone your fork of the repository to your local machine using a Command Line Interface tool.
    ```bash
    git clone https://github.com/PATH-TO-YOUR-FORKED-REPOSITORY
    ```
3. Navigate to the directory containing the R package on your machine.

4. Install the dependencies listed in DESCRIPTION.
    ```bash
    Rscript -e 'devtools::install_deps()'
    ```

5. Once your local environment is up-to-date, you can create a new git branch 
which will contain your contribution (always create a new branch instead of making changes to the main branch):
    ```bash
    git switch -c <your-branch-name>
    ```
6. Start contributing!

**Making a Pull Request**
1. Ensure your code runs correctly and is well documented.
2. Create a pull request.
    ```bash
    git add <modified-file>
    git commit -m "a descriptive message about your change"
    git push origin <your-branch-name>
    ```
3. Someone from our team will review your changes and decide whether to add this to the main code.
    - We will review pull requests within 7 days.
    - Please make sure to thoroughly explain the fixes you made in the description of the PR,
    so that when a core member reviews it they fully understand what changes you made.

## Style Guide

* **Code:**
  * Any R code should follow the (tidyverse style guide)<https://style.tidyverse.org/>

* **Naming Conventions:**
  * Variable names are a balance of short and interpretable, each new word is separated by `_`. For example: `alcohol_use`.

* **Git Commits:**
  * Limit the first line to 72 characters or less
  * Reference issues and pull requests liberally after the first line
  * Include thoughtfully-worded, well-structured descriptions.

* **Documentation:** 
  * Use [Markdown](https://daringfireball.net/projects/markdown).

## Code of Conduct

All contributors must abide by our [code of conduct](CODE_OF_CONDUCT.md).
By contributing to this project you agree to abide by its terms.

## Attribution
These contributing guidelines were adapted from the
[altair contributing guidelines](https://github.com/vega/altair/blob/5d9c0a9c4d69b9fbb1b30e91b85939750a464564/CONTRIBUTING.md).
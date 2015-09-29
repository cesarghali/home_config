Home Directory Configuration
============================

This repository contains my personal home directory configuration files for both Ubuntu and Mac OS.

Disclaimer
----------
Although the configuration files in this repo work on my own machines, it does not mean they should work on other machines without some tweaking. USE AT YOUR OWN RISK.

Usage
-----

To use this repo follow these steps (*read all of them first*):

1. Navigate to your home directory.

  ```
  $ cd
  ```

2. Initialize a new git repo.

  ```
  $ git init
  ```

3. Add a new remote for name `origin`.

  a. For HTTPS:
  ```
  $ git remote add origin https://github.com/cesarghali/home_config.git
  ```
  b. For SSH:
  ```
  $ git remote add origin git@github.com:cesarghali/home_config.git
  ```

4. Fetch the repo.

  ```
  $ git fetch
  ```

5. Checkout the desired branch based on your operating system.

  a. For Ubuntu:
  ```
  $ git checkout -t origin/ubuntu
  ```
  b. For Mac OS:
  ```
  $ git checkout -t origin/mac
  ```

6. Run the configuration script and follow its instructions.

  ```
  $ ./configure.sh
  ```

  This script is needed to set the following user-specific configurations:
    * Git author name.
    * Git author email address.

  **Note:** it might be necessary to grant the configuration script execution permissions using:
  ```
  $ chmod +x configure.sh
  ```

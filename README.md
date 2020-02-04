# CA-Google-Search-Ruby-Framework
A simple Ruby with Capybara Framework with a Google search + validations

## Requirements
* Ruby 2.6.5
* A BASH Compliant Terminal
* Ruby Bundler Gem
* The latest version of Google Chrome or Firefox installed
* ChromeDriver for Chrome or GeckoDriver for Firefox
* A stable internet connection

## How to install
To clone the repository run the command `git clone` [the HTTP or SSH](https://github.com/MoRUddin/CA-Google-Search-Ruby-Framework) within the terminal.

To install the Ruby Bundler Gem use the command `gem install bundler` in  ruby compliant bash terminal.

To install all the Ruby Gems required for this suite run the command `bundle` within the terminal. This will install all the required gems specified within the 'Gemfile'.

1. The project is using Chromedriver v79.0.3945.36. You can find the latest release [here](https://sites.google.com/a/chromium.org/chromedriver/downloads)
2. Move ChromeDriver to either this project's location or to one of your choice. Then right-click on the file, go to **Properties**, and copy the **Location** file path
3. Head to **Control Panel > Sysytem and Security > System** and **Advanced Systems Settings** (it might ask you for an admin password).
4. Open **Environment Variables**. In **System Variables**, open **Path** and click **New**. Paste in the path you copied with the ChromeDriver location.
5. Restart your terminal, and head back to the project directory. Now if you run `cucumber` the project should now run.
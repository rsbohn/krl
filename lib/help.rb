module KRL_CMD
  class Help
    def self.go
      puts
      puts "Kynetx Rule Language Commandline tool."
      puts "Authenticating / Connecting"
      puts "In order to connect to your Kynetx account you must first"
      puts "go through an OAuth ceremony.  This is a process that must "
      puts "be done on the web for now.  In order to connect run the "
      puts "following command:"
      puts "krl-connect"
      puts
      puts "Once connected, you will be able to run the following commands:"
      puts "Usage: krl <command> <args>"
      puts
      puts "Commands:"
      puts "apps".ljust(20) +     "Lists your apps"
      puts " ".ljust(20) +        "Example: krl apps"
      puts "checkout".ljust(20) + "Creates a directory structure with the application."
      puts " ".ljust(20) +        "you have checked out. "
      puts " ".ljust(20) +        "Example: krl checkout a1x2"
      puts "create".ljust(20) + "Creates a new application. Specify an app name and, optionally, a description."
      puts " ".ljust(20) +        "Example: krl create 'Hello World'"
      puts " ".ljust(20) +        "or: krl create 'Hello World' 'App that displays Hello World'"
      puts "info".ljust(20) +     "Displays general information about an application. If run from the "
      puts " ".ljust(20) +        "application directoy, no arguments are needed. Otherwise an app id "
      puts " ".ljust(20) +        "must be specified. (Note: you must have permission to view the app.)"
      puts " ".ljust(20) +        "Example (from app dir): krl info"
      puts " ".ljust(20) +        "or (from anywhere): krl info a1x2"
      puts ""
      puts "You must be in the root directory of your app to run the following commands:"
      puts "update".ljust(20) +   "Overwrites your current .krl file with the specified version."
      puts " ".ljust(20) +        "If no version is specified, then the latest version will be used."
      puts " ".ljust(20) +        "Example: krl update"
      puts " ".ljust(20) +        "or: krl update 10"
      puts "commit".ljust(20) +   "Uploads your .krl file as the latest version. "
      puts " ".ljust(20) +        "Example: krl commit"
      puts "deploy".ljust(20) +   "Deploys a version of your application. If no version is"
      puts " ".ljust(20) +        "specified then the latest version is deployed."
      puts " ".ljust(20) +        "Example: krl deploy"
      puts " ".ljust(20) +        "or: krl deploy 10  -- deploys version 10"
      puts "versions".ljust(20) + "Displays a list of all the versions of your app."
      puts " ".ljust(20) +        "Example: krl versions"
      puts " ".ljust(20) +        "You can also display just the last (n) versions by specifying a limit."
      puts " ".ljust(20) +        "Example: krl versions 10 -- shows only the previous 10 versions"
      puts "note".ljust(20) +     "Adds a note to a version."
      puts " ".ljust(20) +        "Example: krl note 10 'This is the deployed version'"
      puts " ".ljust(20) +        " -- Adds a note to version 10 of 'This is the deployed version'"
      puts "show".ljust(20) +     "Shows a specific version of the app."
      puts " ".ljust(20) +        "Example: krl show 10"
      puts "generate".ljust(20) + "Generates an endpoint and places it in the endpoints directory."
      puts " ".ljust(20) +        "Example: krl generate firefox"
      puts " ".ljust(20) +        "Available endpoints: "
      puts " ".ljust(20) +        "firefox name author description"
      puts " ".ljust(20) +        "chrome name author description"
      puts " ".ljust(20) +        "ie name author description"
      puts " ".ljust(20) +        "bookmarklet"
      puts " ".ljust(20) +        "infocard name datasets(optional)"
      puts "test".ljust(20) +     "Generates a test endpoint that always executes the latest version."
      puts " ".ljust(20) +        "The endpoint is saved in the test directory. If no endpoint is "
      puts " ".ljust(20) +        "specified a bookmarklet will be generated."
      puts " ".ljust(20) +        "Example: krl test"
      puts " ".ljust(20) +        "or: krl test infocard"
      puts " ".ljust(20) +        "Available test endpoints: "
      puts " ".ljust(20) +        "bookmarklet runtime(optional)"
      puts " ".ljust(20) +        "infocard name datasets(optional)"
      puts "check".ljust(20) +    "Performs a syntax check of your .krl file."
      puts
    end
  end
end
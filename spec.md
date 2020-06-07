# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app
    # Application Controller inherits from Sinatra::Base
- [x] Use ActiveRecord for storing information in a database
    # ActiveRecord database connection established in environment.rb
- [x] Include more than one model class (e.g. User, Post, Category)
    # User, UserInstrument, and Instrument models utilized
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts)
    # A User has many UserInstruments
- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)
    # A UserInstrument belongs to a User
- [x] Include user accounts with unique login attribute (username or email)
    # ActiveRecord validates uniqueness macro applied to email attribute in User class
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
    # Since this is a User-focused web app (directory-style), CRUD routes were applied to the User (as per suggestion of section leader)
- [x] Ensure that users can't modify content created by other users
    # Authorizion helper functions prevent users from editing other user profiles
- [x] Include user input validations
    # validates presence and uniqueness macros used in User model attributes used for sign up and login
- [x] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
    # Flash used to deliver specific user error messages using ActiveRecord errors, in addition to custom error messages
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code
    # Filled out README.md

Confirm
- [x] You have a large number of small Git commits
    # Minimum of 53 Git commits (and counting)
- [x] Your commit messages are meaningful
    # Commit messages relate to specific features
- [x] You made the changes in a commit that relate to the commit message
    # Commit messages are file-specific
- [x] You don't include changes in a commit that aren't related to the commit message
    # Commit messages are both file- and feature-specific
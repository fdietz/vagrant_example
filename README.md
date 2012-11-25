# Example Vagrant Setup

Setup initial virtual machine with lots of comments.

Provides an example cookbook and uses existing apache2 cookbook managed via librarian gem.

# Getting Started

## Requirements
* Virtualbox from https://www.virtualbox.org/wiki/Downloads.
* ruby
* vagrant and librarian gem

## Install Cookbooks

    librarian-chef install

## Create and Provision VM

    vagrant up
    
## Done

Access the index.html from your ./www directory at http://localhost:8080.




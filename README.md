# Ada Developer Academy Donation Site

A Sinatra app for the donation website donate.adadeveloperacademy.com.

## Installation
1. Install bundler
```
gem install bundler
```
1. Bundle required gems
```
bundle install
```
1. Puma is installed as the default, so to start the server, run
```
rackup
```
1. To simply test the site locally, run thin server. To see changes made to SCSS, you must restart the server
```
thin start
```

### Payment Notes
1. The donation button is set up through TSNE using paypal, any edits to the paypal workflow will need to be done on TSNE's end.

### To-Do
- Secure page(?)

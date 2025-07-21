// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "controllers"
import $ from "jquery"

$(document).ready(function () {
  console.log("jQuery подключился🐶");
});
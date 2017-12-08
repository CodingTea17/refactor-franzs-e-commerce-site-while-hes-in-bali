# README

E-commerce site. Uses `bcrypt` and `materialize`. There's a seed file. Set up your own admin. If you have questions, I'll be in Bali with no email. Ask someone else.

To set up:

* `rake db:setup` (don't do this, there wasn't a schema)

<s> Sorry, didn't get around to tests. It mostly works. There might be a few bugs. </s>

Record of Changes:

  * To Update Cart Quantity using AJAX

    * I created a new file 'index.js.erb' to target and replace the items in cart number in the navbar.
    * I changed 'order_items_controller' to respond to both html and javascript when a new order item is created.
    * I added a span around the element that displays the number of order items in the cart in application.html.erb.
    * In the product index.html.erb added `remote: true` to the form and made the number_field pickier.

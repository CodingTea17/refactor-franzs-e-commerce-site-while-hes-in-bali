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

  * To Show Product Details using AJAX

    * I created three files (`_product_details.html.erb`, `show.html.erb`, `show.js.erb`)
    * I modified the product index to have empty, hidden divs for each product that have an id equivalent to the product's id.
    * I then added a show to the products controller to determine whether it should the show.html.erb (if someone opens the product details in a new tab) or use the show.js.erb to use jQuery to show the product details on the product index page.
    * The jQuery targets the empty div for a given product and renders the product_details partial into it and toggles it show on the page.

# README

E-commerce site. Uses `bcrypt` and `materialize`. There's a seed file. <s>Set up your own admin. If you have questions, I'll be in Bali with no email. Ask someone else.</s>

To set up:

* `rake db:setup` (This fails when there isn't a schema. Try `rake db:create db:migrate db:seed`)

<s> Sorry, didn't get around to tests. It mostly works. There might be a few bugs. </s>

### Record of Changes:

  * ##### To Update Cart Quantity using AJAX

    * I created a new file `index.js.erb` to target and replace the items in cart number in the navbar.
    * I changed 'order_items_controller' to respond to both html and javascript when a new order item is created.
    * I added a span around the element that displays the number of order items in the cart in application.html.erb.
    * In the product index.html.erb added `remote: true` to the form and made the number_field pickier.


  * ##### To Show Product Details using AJAX

    * I created three files (`_product_details.html.erb`, `show.html.erb`, `show.js.erb`)
    * I modified the product index to have empty, hidden divs for each product that have an id equivalent to the product's id.
    * I then added a show to the products controller to determine whether it should the show.html.erb (if someone opens the product details in a new tab) or use the show.js.erb to use jQuery to show the product details on the product index page.
    * The jQuery targets the empty div for a given product and renders the product_details partial into it and toggles it show on the page.


  * ##### To Delete Cart Items using AJAX
    * I changed the cart page to render each order item through a partial (`_order_item.html.erb`) into a div with that order item's id.
    * I added a `remote: true` to the delete link for each item.
    * I created `destroy.js.erb` to remove the item from the page, recalculate the total price, and update the number of items in cart.
    * In the controller I setup the destroy route to render the jQuery when the incoming format matches js.


  ### Additional Features

  - [x] Ensure that users can't order a negative number of items.
      * I added a validation to the model as well as updated the form to have a min amount
  - [x] Add flash messages for signing up, signing in and signing out.
      * I added colored flash notices and alerts to the users controller (for sign ups) and to the sessions controller (for sign ins and sign outs)
  - [ ] Add product update and delete functionality for admins.
  - [ ] Add admin flash messages for adding, updating and deleting products.
  - [x] Add Paperclip for product image upload.
      * I added the `paperclip` gem, edited the product model to validate an image, changed the migration, tweaked the product details partial, and modified the new product form to accept images/
  - [x] Allow other than whole dollar amounts for admin product creation (for instance, 3.99).
      * I tweaked the form to allow a different step and a form minimum of 0.01
  - [x] Add product validations.
      * I added validations for name, description, price, and images in the products model.
  - [ ] Add Stripe so users can pay when finalizing orders.
  - [ ] Add password validations to ensure a user's password is sufficiently complex.
  - [ ] Add admin links to navbar so admins can easily add, update and delete products.
  - [ ] Fix the row height for products, which can quickly become uneven.
  - [ ] Add integration testing for AJAX functionality.
  - [ ] Add further AJAX functionality where it might be useful.

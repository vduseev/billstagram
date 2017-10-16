# Codename: Billstagram
A bill splitting App

![Starting Screen Prototype](https://image.ibb.co/bGPoBR/billstragram_feed.png)

## Root of the problem
After an evening in a bar a waiter brings you a single receipt for
the whole company.

<table width="100%">
    <tr><th>Scenario ID</th><th>Scenario Details</th><tr>
    <tr>
        <td rowspan="2">
            <b>Usual Scenario 1</b>
            </br>
            Someone pays, then splits amongst others
        </td>
        <td>
            <b>Use Case:</b>
            <ul>
                <li>Someone pays the whole amount.</li>
                <li>Takes the receipt.</li>
                <li>Later tells everyone how much they owe<./li>
            </ul>
        </td>
    </tr>
    <tr>
        <td>
            <b>Problems:</b>
            <ul>
                <li>There are always people not trusting the judgment of
                the person with the receipt and asking for a photo of
                the receipt or for the receipt itself as a proof.</li>
            </ul>
        </td>
    </tr>
    <tr>
        <td rowspan="2">
            <b>Usual Scenario 2</b>
            </br>
            Someone pays for everything
        </td>
        <td>
            <b>Use Case:</b>
            <ul><li>Someone pays the whole amount. End of story.</li></ul>
        </td>
    </tr>
    <tr>
        <td>
            <b>Problems:</b>
            <ul>
                <li>Usually, later someone asks for the photo of the receipt
                anyway, willing to repay their share no matter what.</li>
            </ul>
        </td>
    </tr>
    <tr>
        <td rowspan="2">
            <b>Usual Scenario 3</b>
            </br>
            Everyone pays for himself
        </td>
        <td>
            <b>Use Case:</b>
            <ul>
                <li>The whole squad starts to tear apart the receipt in an
                attempt to see what portion of the receipt has to be covered
                by them.</li>
                <li>Either everyone takes turns looking at the receipt and
                calculating the share.</li>
                <li>Or an individual copy of the receipt has to be sent
                to each group member.</li>
            </ul>
        </td>
    </tr>
    <tr>
        <td>
            <b>Problems:</b>
            <ul>
                <li>Useless waste of time. Instead of paying and leaving,
                people argue about concrete numbers they owe to
                each other.</li>
                <li>Everyone wants a copy of the receipt to confirm
                the numbers.</li>
            </ul>
        </td>
    </tr>
</table>

## Envisioned Scenario with the App
* Waiter brings a receipt
* Open the app and authenticate
* Take a photo of the receipt
    * App will ask if the photo is OK. And will suggest to delete it
      and retake.
* Specify the currency of the receipt (can be skipped)
    * By default currency from settings is used
    * If it's the first launch App tries to guess the currency
      based on user's location. If it can't do so, no particular currency is
      assigned to the receipt
    * (2.0) App guesses receipt's language and chooses correct currency
* Add a description (caption) to the receipt (can be skipped)
* Specify the location (can be skipped)
    * (2.0) App guesses the place based on Location Services
* App assigns current date and time to the receipt
    * It is possibly to modify it by clicking on date and time label
* Immediately share the receipt with people from contacts
    * Everyone receives an SMS (if user does not have the app installed)
      or a push notification about new receipt (if the app is installed)
    * Every added member is assigned a random distinct color for highlight
    * (2.0) Add a member who is not in your contacts.
      Other members, who have this person in contacts, can share the receipt
      with this person
* Highlight a position you have to pay for
    * Specify a price of the item (0 by default)
        * Other members see the price you assigned in real time
        * App displays a warning for everyone if the price for the same item
          is different for 2 or more users
    * Specify a quantity of the item (1 by default)
    * (2.0) Specify the kind of discount for this item (value or %)
      and the size of the discount (0 by default)
    * App automatically calculates the total price you have to pay
      for this position.
      * And Unless someone has highlighted the same item, it acquires your
        individual color
    * Everyone sees results of your highlight in real time
        * Items highlighted by 2 or more users use a special color palette
          indicating that this item is shared between multiple users
* The total amount of your share of the bill is displayed alongside
  of your name.
    * Total amount calculated by all users is displayed in receipt view
    * Total amount calculated by all users is displayed in receipt feed view
* Write a comment about the receipt

## The Benefits of the App
* Save time by allowing everyone to see the receipt simultaneously
* Provide calculating features to significantly simplify
  calculation process
* Speed up calculation process by parallelizing receipt data entering
  between users and sharing this data in real time
* Keep the receipts and discussions about them in one place

## Additional highlights of the App
* Store all questionable receipts in one App
* Let everyone discuss the bill splitting matters in a distinct
  thread dedicated to the receipts in question
* Unlike Instagram, share the receipt with an explicit list of people from
  contact book.

## Complete list of Feautres
nothing here

## Complete list of Functions

##Interactive UI Prototype
**Interactive prototype:** https://invis.io/VU9HRRRDQ

## Issues that are not taken into account
* Discounts
    * Receipts might apply a discount to the whole receipt at the end
    * Receipts might apply a discount to specific items only
      (rendered in the receipt and not)
    * Discount might not be specified at all, but it was applied to final sum
* Highlight and calculate for other people that can't use the app

## Super-duper features that might be implemented some day
* Receipt recognition through machine learning algorithm
    * Costs, discounts and quantities are automatically calculated
      for each position
* Keep the statistics of all the uploaded bills and all the data associated
  with them. Explore it later and mine some valuable insights from it
* Allow users to brag about their receipts somehow
* Send money to the person who payed for the whole bill

# Domain Model

### User:
The User model will buy Tickets through Orders.

- This model contains the following attributes:
- string: name
- string: last_name
- string: email
- string: password
- string: address
- string: phone

#### Relationships
User has many Orders


### Order:
The Order will associate the many Tickets that a single User <user_id> buys.

This model contains the following attributes:
- int: total_amount
- int: user_id

#### Relationships
Order has many Tickets
Order belongs to one User


### Ticket:
Each Ticket  is for one Event <event_id> only, each Ticket is unique and have one specific Category <category_id>. Each Ticket must belong to one Order <order_id>

This model contains the following attributes:
- Integer: price
- integer: event_id
- integer: order_id
- integer: category_id

#### Relationships
Ticket belongs to one Event
Ticket belongs to one Order
Ticket has one Category


### Category:
Each Event may have different categories for the User to select from such as {“Pacifico”, “Andes”, “Galeria”} This will be reflected in the Ticket of the Event.

This model contains the following attributes:
- string: category_type

#### Relationships
Category has and belongs to many Tickets


### Event:
Each Event will be hosted in specific Venue <venue_id> at a specific date and various Tickets will be sold for this Event.

This model contains the following attributes:
- string: name
- text: description
- datetime: start_date
- integer: venue_id

#### Relationships
Event has many Tickets
Event belongs to one Venue


### Venue:
The Venue will host many Events.

This model contains the following attributes:
- string: name
- string: address
- integer: capacity

#### Relationships
Venue has many Events

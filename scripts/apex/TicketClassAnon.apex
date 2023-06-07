TicketClass ticket = new TicketClass();
ticket.setTicketNumber(380);
string ticketType = ticket.getTicketType();
integer tickNum = ticket.getTicketNumber();
system.debug(ticketType);

ticket.setTicketNumber(450);
string ticketType1 = ticket.getTicketType();
system.debug(ticketType1);
list<integer> l1 = new list<integer>();
l1.add(77);//0
l1.add(15);//1
l1.add(21);//2
l1.add(99);//3
l1.add(77);//4
l1.add(77);//5
system.debug('l1 is ' + l1);

list<integer> l2 = new list<integer>();
l2.add(77);
l2.add(77);
l2.add(15);
l2.add(21);
l2.add(99);
l2.add(77);
system.debug('l2 is ' + l2);

boolean checkl1l2 = l1.equals(l2);
system.debug('l1 equals l2? ' + checkl1l2);
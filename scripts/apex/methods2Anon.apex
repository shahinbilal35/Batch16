MethodsDemo2 m3 = new MethodsDemo2();
boolean b1 = m3.nameContainsA('Vicky');
system.debug('Vicky contains a ? ' + b1);

system.debug('Christina contains a? ' +m3.nameContainsA('Christina'));
boolean b2 = m3.nameContainsA('BARCELONA');
system.debug('BAARCELONA contains a? ' + b2); 


MethodsDemo2 m2 = new MethodsDemo2();
integer xy = m2.returnMsj('Bill');
system.debug(xy);


string returnMsg = m2.returnMessage('Jenny');
system.debug(returnMsg);
list<string> kahramanlar = new list<string>{'super', 'bat', 'he', 'iron', 'spider', 'ant'};
list<string> hr = ListSetmap.heros(kahramanlar);
system.debug(hr);

List<integer> sayilar = new List<integer>{22, 11, 35, 5, 9, 63};
integer minNumber = ListSetMap.minNumber(sayilar);
System.debug('listenin en kucuk sayisi = ' + minNumber);

integer minNumber2 = ListSetMap.minNumber2(sayilar);
System.debug('listenin en kucuk sayisi(sort) = ' + minNumber2);

List<integer> numbers = new List<integer>{22, 33, 71, 99, 44, 26, 14, 11, 35, 5, 9, 63};
ListSetMap.tekCiftSayilar(numbers);
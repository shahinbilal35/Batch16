List<case> listCase = new list<case>();
for (Integer i = 0; i < 205; i++) {
    Case c = new Case(Subject = 'There is a bug ' + i, Origin ='Web', status = 'New', Description ='Resolve it.' );
    listCase.add(c);
}
insert listCase;
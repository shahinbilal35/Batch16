map<string, integer> marksObtainInMaths = new map<string, integer>();
    marksObtainInMaths.put('0111CE112', 40);
    marksObtainInMaths.put('0111CE102', 19);
    marksObtainInMaths.put('0111CE100', 33);
    marksObtainInMaths.put('0111CE098', 40);
    system.debug('This is first map ' + marksObtainInMaths);

    marksObtainInMaths.put('0111CE078', 44);
    marksObtainInMaths.put('0111CE122', 55);
    marksObtainInMaths.put('0111CE133', 66);
    system.debug('This is added map ' + marksObtainInMaths);

    for(string eachRollNumber : marksObtainInMaths.keySet()){
        system.debug('Student Roll Number :' + eachRollNumber);
    }

    for(integer eachMarks : marksObtainInMaths.values()){
        system.debug('The Mark is ' + eachMarks);
    }

    set<string> uniqueRollNumberSet = new set<string>();
        for(string eachUniqueRoll : marksObtainInMaths.keySet()){
            uniqueRollNumberSet.add(eachUniqueRoll);
        }
        system.debug('New Unique Roll Number ' + uniqueRollNumberSet);

    List<integer> marksObtainList = new List<integer>();
        
        for(string eachRolls : uniqueRollNumberSet){
            marksObtainList.add(marksObtainInMaths.get(eachRolls));

            if(marksObtainInMaths.get(eachRolls) < 20){
                system.debug(eachRolls + ' is not qualified for next class');
            }
        }
        system.debug('Marks Obtain List ' + marksObtainList);
    

    



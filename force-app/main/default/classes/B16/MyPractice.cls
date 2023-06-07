public class MyPractice {
    public decimal practiceSix(decimal kisaKenar, decimal uzunKenar, string hesaplama){
        decimal sonuc;
        switch on hesaplama {
            when 'Alan'{
                sonuc = kisaKenar * uzunKenar;        
            }
            when 'Cevre'{
                sonuc = 2*(kisaKenar + uzunKenar);    
            }
            when else{
                sonuc = 0;      
            }
        }
        return Math.round(sonuc);
    }
    public string practiceSeven (decimal kilo, decimal boy){
        string sonuc = '';
        decimal vki=(kilo/(boy*boy)).setScale(1);
        if(vki > 0 && vki <= 18.4){
            sonuc = 'Zayif';
        }else if (vki >= 18.5 && vki <= 24.9){
            sonuc = 'Normal';
        }else if(vki >= 25 && vki<=29.9){
            sonuc = 'Kilolu';
        }else {
            sonuc = 'Hatali';
        }
        return sonuc;
    }
    public integer practiceEight( integer sayi1, integer sayi2){
        integer sonuc=0;
        if( sayi1 == sayi2){
            sonuc = sayi1+sayi2;
        
        }else if(sayi1>sayi2){
            for (Integer i = sayi2; i <= sayi1; i++) {
                sonuc +=i;     
            }
        }else{
            for (Integer i = sayi1; i <= sayi2; i++){
            sonuc += i;   
            }  
        }
        return sonuc;
    }
    
}
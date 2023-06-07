public with sharing class Cicekler {
    //cicek adi ve cicek adedi tutan 2 tane class variable
    string cicekAdi;
    integer adet;
    //cicekleri isimleri ve adetleri ile beraber tutan static bir map olusturalim..
    public static Map<string, integer> cicekSepeti = new  Map<string, integer>();
    public Cicekler() {

    }
    public Cicekler(string cicekAdi, integer adet) {
        this.cicekAdi = cicekAdi;
        this.adet = adet;
        addCicek(cicekAdi, adet);
    }
    public void setCicekAdi(string cicekAdi) {
        this.cicekAdi = cicekAdi;
    }
    public void setAdet(integer adet) {
        this.adet = adet;
    }
    public string getCicekAdi() {
        return this.cicekAdi;
    }
    public integer getAdet() {
        return this.adet;
    }
    //Bir public static addCicek metodu olusturalim.. Bu metot bir cicek ve adet eklemek istedigimizde once mapi kontrol edecek bu cicekten var mi? varsa adeti ustune ekleyecek yoksa yeni bir deger olarak ekleyecek.
    public static void addCicek(string cicekAdi, integer adet) {
        if (cicekAdi != null) {
           Boolean isCheck = cicekSepeti.containsKey(cicekAdi);
           if (isCheck) {
               integer newAdet = cicekSepeti.get(cicekAdi) + adet;
               cicekSepeti.put(cicekAdi, newAdet);
           } else {
             cicekSepeti.put(cicekAdi, adet);
           }
            
        } else {
            System.debug('Lutfen bir cicek ismi girin..');
        }
    }
    //Bir public static salesCicek metodu olusturalim. Bu metot 2 parametre alacak. cicek adi ve adet, bu cicek elimizde varsa ve istenen adedi verebiliyorsak sepettten dusecegiz. yoksa olmadigini ifade edecegiz..
    public static void salesCicek(string cicekAdi, integer adet) {
        if (cicekAdi != null) {
            Boolean isCheck = cicekSepeti.containsKey(cicekAdi);
            if (isCheck) {
                if (cicekSepeti.get(cicekAdi) >= adet) {
                   integer newAdet = cicekSepeti.get(cicekAdi) - adet;
                   cicekSepeti.put(cicekAdi, newAdet);
                } else {
                    System.debug('Bu cicekten istediginiz adet elimizde bulunmamaktadir.');
                    System.debug('Bu cicekten elimizdeki adet = ' + cicekSepeti.get(cicekAdi) + ' Lutfen bu sayiya gore talebinizi yenileyin..');
                }
            } else {
                System.debug('Elimizde bu cicek bulunmamaktadir..');
            }
            
        } else {
            System.debug('Lutfen bir cicek ismi girin..');
        }
        
    }

    //sepetimizdeki stogu kontrol edecek public static stok diye bir metot olusturalim..
    public static void stok() {
        if (!cicekSepeti.isEmpty()) {
            integer stok = 0;
            for(string cicek : cicekSepeti.keySet()){ 
                System.debug(cicek + ' ciceginden sepetimizde ' + cicekSepeti.get(cicek)+ ' tane cicek vardir..');
                stok += cicekSepeti.get(cicek);  
            }
            System.debug('Elimizde toplam = ' + stok + ' adet cicek var..');
        } else {
            System.debug('Sepette cicek bulunmamaktadir');
        }
    }

}
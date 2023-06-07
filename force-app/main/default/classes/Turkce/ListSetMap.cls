public class ListSetMap {
    // {'super', 'bat', 'he', 'iron', 'spider', 'ant'} listenin her bir elemaninin sonuna 'man' ekleyin.. heman i he-man olarak yazsin
    public static List<string> heros(List<String> heroList) {
        List<string> updateHeroList = new List<string>();
        //gelen listem dolu ise islem yap
        if (!heroList.isEmpty()) {
            //listenin her elemanina tek tek ulasabilmem icin for each yapmam lazim
            for (string hero : heroList) {
                string addMan;
                if (hero == 'he') {
                    addMan =hero + '-man';
                } else {
                    addMan = hero + 'man';
                }
                updateHeroList.add(addMan);
            }      
        } 
        return updateHeroList;
    }

    public static Integer minNumber(List<Integer> sayiList) {
        //en kucuk sayiyi tutacak bir variable olusturalim..
        Integer minSayi;

        //listemizi kontrol edelim dolu ise islem yapalim..
        if (!sayiList.isEmpty()) {
            minSayi = sayiList.get(0);
            //listenin her elemanina ulasip karsilastirma yapalim..
            for (integer sayi : sayiList) {
                if (sayi<minSayi) {
                    minSayi = sayi;
                }
            }
        }
        //en kucuk sayiyi bulunca bunu return edelim
        return minSayi;
    }

    public static Integer minNumber2(List<Integer> sayiList) {
        Integer minSayi;
        if (!sayiList.isEmpty()) {
            System.debug('sayi List = ' + sayiList);
            sayiList.sort();
            System.debug('sayi List = ' + sayiList);
            minSayi = sayiList.get(0);
        }
        return minSayi;
    }

    //Parametre olarak integer bir list alan bir metot yazin. Bu metot tek sayilari ayri bir listede, cift sayilari ayri bir listede toplasin ve yazdirsin.. sonra tek sayilardan en kucuk olani ile cift sayilardan en kucuk olani yazdirsin..
    public static void tekCiftSayilar(List<Integer> sayiList) {
        //tek sayilar icin bos bir liste cift sayilar icin ayri bir bos liste olusturyorum..
        List<integer> tekSayilar = new List<integer>();
        List<integer> ciftSayilar = new List<integer>();
        //gelen listeyi kontrol et.. sonra icine gir her elemani tek tek kontrol et.. tek olanlari tek listeye, cift olanlari cift listeye ekle..
        if (!sayiList.isEmpty()) {
            for (integer sayi : sayiList) {
                integer kalan = Math.mod(sayi, 2);
                if (kalan == 1) {
                    tekSayilar.add(sayi);
                } else {
                    ciftSayilar.add(sayi);
                }
            }
            System.debug('tek sayilar listesi = ' + tekSayilar);
            System.debug('cift sayilar listesi = ' + ciftSayilar);

            integer minTek = minNumber(tekSayilar);
            System.debug('en kucuk tek sayi = ' + minTek);

            integer minCift = minNumber(ciftSayilar);
            System.debug('en kucuk cift sayi = ' + minCift);
        }
        
    }
}
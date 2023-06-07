public class RandomSayiClass {
    //4. Parametre olarak integer bir değer alan bir metot yazın. Bu metot içinde; Bilgisayar 1'den 10'a kadar rastgele bir sayı oluşturacak. bu metot parametre ile bilgisayarın oluşturduğu sayıyı karşılaştıracak, esitse  'dogru tahmin kazandiniz', degilse 'yanlis tahmin tekrar deneyin' mesaji dönecek.
    public static integer oyunSayisi = 0;
    public static integer skorum = 0;
    public static string random(integer sayi) {
        string message;
        integer bilgisayarSayisi = Math.round(Math.random()*10); 
        if (sayi>=0 && sayi<=10) {
            oyunSayisi++;
            System.debug('=========='+oyunSayisi +'. Oyun =============');
            if (bilgisayarSayisi == sayi) {
                skorum++;
                message = 'Dogru tahmin.. Kazandiniz..';
            } else {
                message = 'Yanlis tahmin.. tekrar deneyin..';
            }
        } else {
            message = 'Lutfen 1\'den 10\'a kadar bir sayi girin..';
        }
        System.debug('Bilgisyarin sayisi = ' + bilgisayarSayisi);
        System.debug('Benim sayim = '+ sayi);
        System.debug(oyunSayisi + ' oyun oynadiniz.. dogru tahmin sayiniz = ' + skorum);
        return message;
    }
}
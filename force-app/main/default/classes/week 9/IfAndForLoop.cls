public class IfAndForLoop {
    //1.	String olarak girilen istanbul telefon numaralarinin Avrupa yakasina mi Anadolu yakasina mi ait oldugunu donen bir metot yazin?
    public string phone(string phoneNumber) {
        string message;
        // gelen numara 10 haneli mi?
        integer haneSayisi = phoneNumber.length();
        if (haneSayisi == 10 && phoneNumber.isNumeric()) {
            string kod = phoneNumber.substring(0, 3);
            // 3 tane codition olacak
            if (kod == '212') {
                message = phoneNumber + ' numarasi Avrupa yakasina ait bir numaradir..';
            } else if (kod == '216') {
                message = phoneNumber + ' numarasi Anadolu yakasina ait bir numaradir..';
            } else {
                message = phoneNumber + ' numarasi istanbul\'a ait bir numara degildir.';
            }
        } else {
            message = 'Eksik & Fazla veya yanlis bir numara girdiniz. Girdiginiz telefon numarasi 10 haneli olmali ve basinda 0 olmamali';
        }
        return message;
    }
    //1 den n e kadar sayilarin toplamini veren ve integer bir parametre alan bir metot yazin.
    public void sum(integer n) {
        integer toplam = 0;
        for (Integer i = 1; i <= n; i++) {
            System.debug('for dongusu ' + i + ' defa dondu..');
            toplam += i;
            System.debug('ara toplam = ' + toplam);
        }
        System.debug('genel toplam = ' + toplam);
    }
    //string bir parametre alan bir metot yazin. Bu metot stringin uzunlugu kadar yan yana Hello mesaji yazdirsin..
    public string hello(string text) {
        string message = '';
        // text in length ini buluruz.
        integer uzunluk = text.length();
        // length e gore bir for loop yapariz..
        for (Integer i = 1; i <= uzunluk; i++) {
            message += ' hello ' + i;
            System.debug(message);
        }

        // olusturdugumuz mesaji return ederiz..
        return message;
    }
}
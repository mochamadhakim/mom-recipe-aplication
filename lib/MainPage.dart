import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:resepmakanan/detail.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _PageList());
  }
}

//class
class _PageList extends StatefulWidget {
  _PageStateListState createState() => _PageStateListState();
}

class _PageStateListState extends State<_PageList> {
  List<String> judul = [
    "Bubur Ayam",
    "Mie Goreng",
    "Mie Rebus",
    "Ayam geprek",
    "Ayam goreng",
    "Nasi Goreng",
    "Nugget Ayam",
    "Sosis Bakar",
    "Seblak"
  ];

  List<String> subjudul = [
    "Bubur yang hangat dengan paduan irisan ayam dan bumbu",
    "Mie Goreng yang rasanya enak dengan pembuatan yang mudah dan cepat",
    "Mie Rebus hangat dengan kaldunya yang membuat kita menjadi lebih segar",
    "Ayam geprek adalah makanan ayam goreng tepung khas Indonesia yang diulek",
    "Ayam goreng adalah hidangan yang dibuat dari daging ayam",
    "Nasi goreng adalah sebuah makanan berupa nasi yang digoreng dan diaduk dalam minyak goreng,",
    "Nugget ayam adalah salah satu makanan cepat saji yang populer di dunia.",
    "Sosis bakar adalah sosis panggang salah satu olahan makanan yang terbuat dari daging",
    "Seblak adalah makanan Indonesia yang dikenal berasal dari Bandung"
  ];

  List<String> gambar = [
    "images/buryam.jpg",
    "images/mie goreng.jpg",
    "images/mie rebus.jpg",
    "images/ayamgeprek.jpg",
    "images/ayamgoreng.jpg",
    "images/nasgor.jpg",
    "images/nugget.jpg",
    "images/sosisbakar.jpg",
    "images/seblak.jpg",
  ];

  List<String> bahan = [
    "-100 gr beras pulen, cuci dan tiriskan\n-1 liter air\n-1 sdt garam\n-50 gr daging ayam cincang\n-2 sdm minyak sayur\n-2 siung bawang putih cincang halus\n-250 gr daging ayam cincang\n-2 sdm kecap asin\n-1/2 sdt merica bubuk\n-1 sdt minyak wijen\n-2 batang daun bawang, iris kasar\n-2 sdm bawang merah goreng",
    "•	4 buah mie kuning\n•	Kecambah secukupnya\n•	Kol secukupnya\n•	2 kotak tahu putih\n•	6 siung bawang merah\n•	4 siung bawang putih\n•	Cabai merah\n•	1 potong gula merah\n•	Kecap manis\n•	Garam secukupnya\n•	Minyak goreng secukupnya",
    "•	500 gr mie basah\n•	3 sdm kecap manis \n•	2 butir telur, kocok lepas\n•	1 batang daun bawang, potong 1/2 cm\n•	1 buah tomat merah, potong-potong\n•	4 lembar kol, iris kasar\n•	4 tangkai caisim, potong-potong\n•	1 potong paha ayam atas bawah\n•	1 sdm garam\n•	1/2 sdt gula pasir\n•	1.8L air\n•	2 sdm minyak, untuk menumis\n•	1 tangkai daun seledri, iris halus\n•	1 sdm bawang merah goreng\n•	Minyak goreng secukupnya ",
    "4 pcs daging dada atau paha ayam\n2 butir jeruk nipis\n\nBahan pencelup:\n70 gr tepung terigu\n2 sdm tepung maizena\n2 siung bawang putih (cincang halus)\n½ sdt cabe bubuk\n½ sdt garam\n½ sdt kaldu ayam bubuk\nair es secukupnya\n\nBahan kering:\n100 gr tepung terigu\n3 sdm tepung maizena\n½ sdt lada hitam\n\nBahan sambal:\n10 cabe rawit merah\n3 siung bawang putih\n1 sdt garam\n2 sdm minyak sayur",
    "•	800 gr daging ayam tanpa kulit, potong delapan bagian\n•	125 gr lengkuas, parut kasar\n•	1 sdm air asam jawa\n•	500 ml air\n•	3 lembar daun salam\n•	2 batang serai\n•	1 sdm kaldu ayam\n•	3 sdm minyak, untuk menumis\n•	500 ml minyak, untuk menggoreng\nBahan bumbu halus:\n•	8 siung bawang merah\n•	5 siung bawang putih\n•	5 butir kemiri, sangrai\n•	1 sdm kunyit bubuk\n•	1 sdt ketumbar bubuk\n•	1 sdt gula pasir\n•	1 sdt garam",
    "•	600 gr nasi putih\n•	70 gr wortel, kupas, potong dadu kecil\n•	1 siung bawang putih, iris halus\n•	3 siung bawang merah, iris halus\n•	2 buah cabai merah, iris serong\n•	2 sdm kecap manis\n•	1 sdm kaldu ayam\n•	1 batang daun bawang\n•	2 sdm minyak, untuk menumis\n•	3 buah telur mata sapi",
    "•	300 gr daging dada ayam\n•	2 sdm tepung terigu\n•	1 butir telur ayam\n•	2 siung bawang putih, parut\n•	2 sdm bawang merah goreng, tumbuk halus\n•	50 gr wortel, serut halus, peras hingga kering\n•	1 sdm kaldu ayam/jamur bubuk\n•	1/2 sdt merica bubuk\n•	1 sdt garam\n•	2 putih telur ayam\n•	2 sdm tepung terigu\n•	200 gr tepung panir putih/kuning\n•	minyak goreng secukupnya",
    "•	15 buah sosis ayam atau sapi\n•	4 buah kentang (dipotong dadu lalu di kukus setengah matang)\n•	3 sdm mentega\n•	6 sdm saus tiram\n•	6 sdm saus tomat\n•	4 sdm saus sambal\n•	Bubuk merica dan garam secukupnya",
    "•	2 sdm minyak sayur\n•	2 sdm cabe merah giling\n•	2 siung bawang putih parut\n•	500 ml air\n•	2 sdm kerupuk aci rebus\n•	5 buah otak-otak rebus\n•	50 gr makaroni rebus\n•	2 buah sosis\n•	1/2 sdt gula pasir\n•	1/2 sdt merica bubuk\n•	1 sdt garam\n•	1 butir telur ayam, kocok"
  ];

  List<String> resep = [
    "• Taruh beras, air, dan garam dalam panci. Masak beras hingga mendidih.\n• Gunakan api sedang, masak beras hingga pecah, airnya susut dan agak kental.\n• Masukkan daging ayam, masak terus hingga ayam matang dan bubur benar-benar kental. Matikan api.\n• Saat menunggu bubur kental, tumis bawang putih hingga wangi.\n• Masukkan daging ayam cincang, aduk hingga berubah warna.\n• Tambahkan bumbu, aduk hingga rata. Angkat.\n• Taruh bubur di mangkuk saji.\n• Beri topping ayam tumis, daun bawang, dan bawang merah goreng.",
    "•	Cincang halus bawang merah, bawang putih, dan cabai merah.\n•	Panaskan minyak dan masukkan bahan bumbu yang sudah dicincang halus tadi.\n•	Setelah harum, masukkan gula jawa dan tahu yang sudah dipotong-potong.\n•	Masukkan mie kuning yang sudah direndam air dan ditiriskan.\n•	Masukkan juga kecambah dan kol yang sudah dipotong-potong.\n•	Aduk-aduk hingga semua merata, lalu tambahkan kecap manis dan garam sesuai selera lalu hidangkan.",
    "1.	Lumuri mie dengan Kecap Manis. Sisihkan.\n2.	Rebus paha ayam bersama air, 1 sendok teh bumbu halus, 1/2 sendok teh garam, dan 1 lembar daun salam sampai matang dan berkaldu. Angkat dan ukur 1500 ml kaldunya.\n3.	Goreng ayam dalam minyak yang sudah dipanaskan diatas api sedang sampai kuning kecokelatan. Angkat dan suwir-suwir. Sisihkan.\n4.	Panaskan minyak. Tumis bumbu halus sampai harum. Sisihkan ke pinggir wajan. Tambahkan telur. Aduk sampai berbutir.\n5.	Masukkan daun bawang, tomat, kol, dan caisim. Tumis sampai layu.\n6.	Tambahkan ayam suwir, garam, gula pasir, dan kaldu ayam bubuk. Aduk rata. Tuang air. Didihkan.\n7.	Masukkan mie. Aduk rata. Masak sampai mendidih.\n8.	Sajikan mie dengan taburan seledri dan bawang merah goreng.",
    "1.	Lumuri ayam dengan jeruk nipis, diamkan 10 menit\n2.	Campurkan semua bahan pencelup dalam mangkuk, aduk rata\n3.	Lumuri ayam yang sudah ditiriskan dari jeruk nipis ke dalam adonan bahan pencelup, kemudian diamkan dalam kulkas 15 menit\n4.	Campurkan semua bahan kering dalam mangkuk, aduk rata\n5.	Lumurkan dalam adonan bahan kering hingga merata, kemudian goreng dalam minyak panas dengan api kecil hingga matang\n6.	Ulek semua bahan sambal dan geprek ayam yang sudah digoreng dengan sambal yang sudah diulek, sajikan dengan lalapan",
    "1.	Bumbui daging ayam dengan bumbu halus, lengkuas, dan air asam jawa. Diamkan hingga meresap selama sekitar 30 menit.\n2.	Panaskan minyak, masukkan daging ayam beserta bumbunya. Masukkan air, daun salam, serai, dan kaldu ayam. Masak hingga air menyusut sambil sesekali diaduk agar daging ayam matang merata. Angkat.\n3.	Panaskan minyak, goreng daging ayam hingga kecokelatan. Angkat, tiriskan. Sisihkan.\n4.	Goreng sisa bumbu halus hingga kecokelatan. Angkat, tiriskan. Taburi bumbu lengkuas ke atas daging ayam. Sajikan.",
    "1.	Panaskan minyak, tumis bawang putih, bawang merah hingga harum.\n2.	Masukkan wortel dan cabai, aduk hingga tercampur rata. Masak hingga wortel mulai layu.\n3.	Tambahkan nasi, kaldu ayam, dan kecap manis, aduk rata.\n4.	Tambahkan daun bawang, aduk rata. Angkat dan sajikan telur mata sapi",
    "1.	Cincang halus daging ayam dengan pisau tajam atau food processor.\n2.	Campur daging ayam cincang dengan tepung terigu, telur, wortel, bawang putih, bawnag merah halus, merica, kaldu ayam, dan garam.\n3.	Aduk-aduk dengan tangan hingga benar-benar menyatu.\n4.	Siapkan wadah tahan panas, olesi minyak sayur.\n5.	Ratakan adonan ayam dalam wadah hingga rata.\n6.	Kukus dalam kukusan panas selama 30 menit hingga matang.\n7.	Angkat dan dinginkan.\n8.	Potong-potong adonan ukuran 2x3x1 cm atau ukuran lain sesuai selera.\n9.	Lapisi potongan adonan tipis-tipis dengan tepung terigu.\n10.	Celupkan dalam putih telur kocok lalu lapisi dengan tepung panir hingga rata. Diamkan beberapa saat hingga agak kering.\n11.	Goreng dalam minyak panas dan banyak hingga kuning keemasan.\n12.	Angkat dan tiriskan.",
    "1.	Campur beberapa bahan saus seperti saus tomat, saus sambal, saus tiram dengan bubuk merica dan garam lalu diaduk hingga rata.\n2.	Jika sudah benar-benar merata, sosis sapi atau ayam yang sudah dikerat dimasukkan kedalam adonan.\n3.	Tidak lupa potongan kentang juga harus dimasukkan bersama sosis. Agar bumbu-bumbu dapat meresap sempurna, sebaiknya sosis dan kentang dibiarkan dalam adonan selama kurang lebih 20 menit.\n4.	Jika bumbu-bumbu sudah meresap berikutnya adalah proses pemanggangan. Kita siapkan grill pan-nya yang sudah terlebih dulu dioles mentega. Kalau tidak punya grill pan bisa juga menggunakan teflon biasa.\n5.	Selanjutnya kita masukkan sosis dan kentang lalu kita panggang hingga matang (warnanya berubah kecoklatan). Setelah itu bisa langsung diangkat.",
    "1.	Tumis cabe merah dan bawang putih halus hingga wangi dan matang\n2.	Tuangkan air lalu didihkan\n3.	Masukkan kerupuk, otak-otak, makaroni, sosis, kemudian didihkan\n4.	Tambahkan garam, merica, dan gula\n5.	Tuangkan telur, aduk hingga kental\n6.	Angkat dan sajikan hangat"
  ];

  List<String> sampel = ["", "", "", "", "", "", "", "", ""];

  User user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                Text(
                  "Hello ",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                Text(
                  user.displayName.toString(),
                  style: TextStyle(color: Colors.orange, fontSize: 20),
                ),
              ],
            ),
            SizedBox(
              height: 2,
            ),
            Divider(
              height: 1,
              color: Colors.black,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Daftar Resep",
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 5,
            ),
            Flexible(
              child: Container(
                child: ListView.builder(
                  itemCount: judul.length,
                  itemBuilder: (BuildContext contex, int index) {
                    final title = judul[index].toString();
                    final subTitle = subjudul[index].toString();
                    final img = gambar[index].toString();
                    final sample = sampel[index].toString();
                    final bahanbahan = bahan[index].toString();
                    final resepmakanan = resep[index].toString();
                    return Container(
                      height: 250,
                      padding: EdgeInsets.all(8),
                      child: GestureDetector(
                        child: Stack(
                          children: <Widget>[
                            backgroundImage(img),
                            Container(
                              child: topContent(title, subTitle, sample),
                            )
                          ],
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailPage(
                                        itemJudul: title,
                                        itemImage: img,
                                        itemSub: subTitle,
                                        bahan: bahanbahan,
                                        qty: resepmakanan,
                                      )));
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

backgroundImage(String gambar) {
  return new Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.luminosity),
            image: AssetImage(gambar))),
  );
}

topContent(String nama, String deskripsi, String sample) {
  return new Container(
    height: 200,
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text(
            nama,
            style: bigHeaderText,
          ),
          Container(
            height: 1,
            width: 100,
            color: Colors.redAccent,
          ),
          Text(
            deskripsi,
            style: descHeaderText,
          ),
          Text(
            sample,
            style: footerHeaderText,
          )
        ],
      ),
    ),
  );
}

final baseTextStyle = const TextStyle(fontFamily: 'arial');

final bigHeaderText = baseTextStyle.copyWith(
    fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white);

final descHeaderText = baseTextStyle.copyWith(
    fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white);

final footerHeaderText = baseTextStyle.copyWith(
    fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white);

final detailstyle = baseTextStyle.copyWith(
    fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black);

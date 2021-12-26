import 'package:flutter/material.dart';
import 'package:pemesanan/config/pallete.dart';
import 'package:pemesanan/models/items.dart';
import 'package:pemesanan/widgets/listViewAlat.dart';

class DetailAlat extends StatelessWidget{
  final List<Item> items = [
    Item(name: 'Tenda Pavillo Montana', img: 'https://images.tokopedia.net/img/cache/900/product-1/2019/10/29/7054251/7054251_125c4817-6e84-499e-bcec-ab2bbb3d58b2_1000_1000.jpg',
    desc: 'Tenda dirancang memiliki kapasitas 4 orang. Kapasitas yang cukup ideal dalam formasi mendaki gunung. Ukuran tenda 210cm x 240cm x 130cm + 100cm (teras tenda). Frame tenda dibuat dari fiberglass sehingga lebih ringan dibawa ketika mendaki gunung. Meskipun ringan, bahan fiberglass relatif kuat. Memiliki teras tenda sehingga air hujan tidak dapat masuk ke tenda secara langsung. Tidak hanya itu, teras tenda dapat memuat alas kaki sekaligus lokasi memasak. Cara memasang tenda praktis. Bentuk tenda dirancang mudah untuk segera didirikan. Banyak ventilasi udara sehingga saat cuaca panas, tenda tidak terasa pengap. Meskipun memiliki ventilasi, semua ventilasi dilapisi kelambu sehingga tidak mudah dimasuki oleh serangga.',
    ),
    Item(name: 'Tenda Great Outdoor Java 4' , img: 'https://images.tokopedia.net/img/cache/900/VqbcmM/2021/1/20/8b915f24-ee6a-4d04-9b0b-0ee3a114a3b1.jpg',
    desc: 'Tenda dirancang memiliki kapasitas 4-6 orang. Ukuran tenda (210+100) x 240 x 130cm. Memiliki Inner 190T Polyester Breathable PA Coated. Dengan Floor 10x10, 110g/M2 berbahan PE Polyethylene Terpal. Frame tenda dibuat dari Fiberglass 8,5mm x 3set warna Hitam. Berat tenda mencapai 4.1 kg dengan ukuran pasak ±4mm x 18cm x 15-18pcs dan menggunakan tali Galvanized Steel n 3mm GuyRope.',
    ),
    Item(name: 'Tenda Great Outdoor Camp 4' , img: 'https://lavenduraoutdoor.com/wp-content/uploads/2021/05/greatoutdoorindonesia_20201104_234838_0.jpg',
    desc: 'Memiliki spesifikasi Ukuran tenda (260 200) x 200 x140cm. Memiliki Lapisan luar olyster PU2500mm dan Lapisan dalam olyster Breathable. Untuk Alas bawah dari bahan olyethylene. Pintu dalam terbuat dari bahan polyster PA&Mesh. Untuk alasnya sendiri menggunakan PE Floor Waterproof. Berat tenda sendiri adalah 3,4kg (Saat Di Packing Jadi 3,6kg). Kapasitas tenda bisa muat 4-5 orang. Tenda ini merupakan tenda double layer.',
    ),
    Item(name: 'Kompor Windproof' , img: 'https://s4.bukalapak.com/img/45952422342/s-330-330/Kompor_Camping_Windproof_Kovar__anti_badai__.jpg.webp',
    desc: 'Kompor portable ini sangat cocok digunakan untuk kegiatan outdoor yang tidak memungkinkan membawa tabung gas/LPG. Ukurannya yang kecil juga memudahkan untuk dibawa kemana mana. Dengan tameng pelindung angin yang dapat di kembangkan sehingga tidak masalah walau memasak di daerah yang memiliki cuaca berangin, alat ini mempermudah kegiatan anda dan terbebas dari repotnya tiupan angin yang membuat proses memasak menjadi terganggu.',
    ),
    Item(name: 'Kompor Standard' , img: 'https://s1.bukalapak.com/img/6330294092/large/Kompor_Portable_2IN1_Gas_Kaleng_Dan_Gas_LPG_Elpiji.jpg',
    desc: 'Kompor portable ini sangat cocok digunakan untuk kegiatan outdoor yang tidak memungkinkan membawa tabung gas/LPG. Ukurannya yang kecil juga memudahkan untuk dibawa kemana mana. Dengan tameng pelindung angin yang dapat di kembangkan sehingga tidak masalah walau memasak di daerah yang memiliki cuaca berangin, alat ini mempermudah kegiatan anda dan terbebas dari repotnya tiupan angin yang membuat proses memasak menjadi terganggu.',
    ),
    Item(name: 'Tas Carrier 60L' , img: 'https://blogunik.com/wp-content/uploads/2020/04/Tas-Gunung-Terbaik-Buatan-Lokal.jpg',
    desc: 'Jenis tas carrier ini memang didesain secara khusus untuk mendukung kegiatan outdoor. Memiliki volume yang lebih banyak antara 40 hingga 120 liter. Selain itu, tas ini dirancang supaya anda dapat dengan mudah melewati medan yang cukup terjal walaupun membawa beban berat. Punggung anda pun juga tidak begitu pegal karena desain tas carrier ini sangat ergonomis. Tas dengan kapasitas 60 liter mempunyai banyak kompartemen supaya anda dapat menyimpan barang yang akan dibawa secara terpisah. Bahkan jenis tas ini dilengkapi pula dengan penutup dan pelindung dari hujan.',
    ),
    Item(name: 'Tas Carrier 35-45L' , img: 'https://img.my-best.id/press_component/images/13faa6ac0d71b62c3729096b1076a87a.jpg?ixlib=rails-4.2.0&q=70&lossless=0&w=690&fit=max',
    desc: 'Tenda dirancang memiliki kapasitas 4-6 orang. Ukuran tenda (210+100) x 240 x 130cm. Memiliki Inner 190T Polyester Breathable PA Coated. Dengan Floor 10x10, 110g/M2 berbahan PE Polyethylene Terpal. Frame tenda dibuat dari Fiberglass 8,5mm x 3set warna Hitam. Berat tenda mencapai 4.1 kg dengan ukuran pasak ±4mm x 18cm x 15-18pcs dan menggunakan tali Galvanized Steel n 3mm GuyRope.',
    ),
    Item(name: 'Cooking Set DS-301' , img: 'https://s4.bukalapak.com/img/9145368901/large/cooking_set_ds_301_Harga_Spesial_.jpg',
    desc: 'Tenda dirancang memiliki kapasitas 4-6 orang. Ukuran tenda (210+100) x 240 x 130cm. Memiliki Inner 190T Polyester Breathable PA Coated. Dengan Floor 10x10, 110g/M2 berbahan PE Polyethylene Terpal. Frame tenda dibuat dari Fiberglass 8,5mm x 3set warna Hitam. Berat tenda mencapai 4.1 kg dengan ukuran pasak ±4mm x 18cm x 15-18pcs dan menggunakan tali Galvanized Steel n 3mm GuyRope.',
    ),
    Item(name: 'Cooking Set DS-200' , img: 'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//98/MTA-4209766/garmentmarts_cooking_set_nesting_ds_200_untuk_outdoor_camping_full04_f3s9z66f.jpg',
    desc: 'Tenda dirancang memiliki kapasitas 4-6 orang. Ukuran tenda (210+100) x 240 x 130cm. Memiliki Inner 190T Polyester Breathable PA Coated. Dengan Floor 10x10, 110g/M2 berbahan PE Polyethylene Terpal. Frame tenda dibuat dari Fiberglass 8,5mm x 3set warna Hitam. Berat tenda mencapai 4.1 kg dengan ukuran pasak ±4mm x 18cm x 15-18pcs dan menggunakan tali Galvanized Steel n 3mm GuyRope.',
    ),
    Item(name: 'Sleeping Bag Polar' , img: 'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2021/1/7/a396bf28-57d4-4eba-aeb4-5792be44540f.jpg',
    desc: 'Tenda dirancang memiliki kapasitas 4-6 orang. Ukuran tenda (210+100) x 240 x 130cm. Memiliki Inner 190T Polyester Breathable PA Coated. Dengan Floor 10x10, 110g/M2 berbahan PE Polyethylene Terpal. Frame tenda dibuat dari Fiberglass 8,5mm x 3set warna Hitam. Berat tenda mencapai 4.1 kg dengan ukuran pasak ±4mm x 18cm x 15-18pcs dan menggunakan tali Galvanized Steel n 3mm GuyRope.',
    ),
    Item(name: 'Sleeping bag Tipis' , img: 'https://ceklist.id/wp-content/uploads/2020/06/Deuter-Dreamlite-500L.jpg',
    desc: 'Tenda dirancang memiliki kapasitas 4-6 orang. Ukuran tenda (210+100) x 240 x 130cm. Memiliki Inner 190T Polyester Breathable PA Coated. Dengan Floor 10x10, 110g/M2 berbahan PE Polyethylene Terpal. Frame tenda dibuat dari Fiberglass 8,5mm x 3set warna Hitam. Berat tenda mencapai 4.1 kg dengan ukuran pasak ±4mm x 18cm x 15-18pcs dan menggunakan tali Galvanized Steel n 3mm GuyRope.',
    ),
    Item(name: 'FlySheet' , img: 'https://apollo-singapore.akamaized.net/v1/files/hiqj6cpy6qt41-ID/image',
    desc: 'Tenda dirancang memiliki kapasitas 4-6 orang. Ukuran tenda (210+100) x 240 x 130cm. Memiliki Inner 190T Polyester Breathable PA Coated. Dengan Floor 10x10, 110g/M2 berbahan PE Polyethylene Terpal. Frame tenda dibuat dari Fiberglass 8,5mm x 3set warna Hitam. Berat tenda mencapai 4.1 kg dengan ukuran pasak ±4mm x 18cm x 15-18pcs dan menggunakan tali Galvanized Steel n 3mm GuyRope.',
    ),
    Item(name: 'Matras' , img: 'https://cdn.siplah.pesonaedu.id/uploads/d8d1cdd83e8f3b1329f389379ec193aaa5a628797fdef3236d7ec554f7becd50/47839/image.png',
    desc: 'Tenda dirancang memiliki kapasitas 4-6 orang. Ukuran tenda (210+100) x 240 x 130cm. Memiliki Inner 190T Polyester Breathable PA Coated. Dengan Floor 10x10, 110g/M2 berbahan PE Polyethylene Terpal. Frame tenda dibuat dari Fiberglass 8,5mm x 3set warna Hitam. Berat tenda mencapai 4.1 kg dengan ukuran pasak ±4mm x 18cm x 15-18pcs dan menggunakan tali Galvanized Steel n 3mm GuyRope.',
    ),
    Item(name: 'HeadLamp' , img: 'https://img.my-best.id/press_component/item_part_images/ae0b87b45c9d44da39bb86e608eb2f37.jpg?ixlib=rails-4.2.0&q=70&lossless=0&w=640&h=640&fit=clip',
    desc: 'Tenda dirancang memiliki kapasitas 4-6 orang. Ukuran tenda (210+100) x 240 x 130cm. Memiliki Inner 190T Polyester Breathable PA Coated. Dengan Floor 10x10, 110g/M2 berbahan PE Polyethylene Terpal. Frame tenda dibuat dari Fiberglass 8,5mm x 3set warna Hitam. Berat tenda mencapai 4.1 kg dengan ukuran pasak ±4mm x 18cm x 15-18pcs dan menggunakan tali Galvanized Steel n 3mm GuyRope.',
    ),
    Item(name: 'Tracking Pole' , img: 'https://www.ultralightoutdoorgear.co.uk/images/products/1576755173-34800400.jpg',
    desc: 'Tenda dirancang memiliki kapasitas 4-6 orang. Ukuran tenda (210+100) x 240 x 130cm. Memiliki Inner 190T Polyester Breathable PA Coated. Dengan Floor 10x10, 110g/M2 berbahan PE Polyethylene Terpal. Frame tenda dibuat dari Fiberglass 8,5mm x 3set warna Hitam. Berat tenda mencapai 4.1 kg dengan ukuran pasak ±4mm x 18cm x 15-18pcs dan menggunakan tali Galvanized Steel n 3mm GuyRope.',
    ),
    Item(name: 'Lampu Tenda' , img: 'https://inkuiri.net/i/large/http%2Fcf.shopee.co.id%2Ffile%2Fec28f76a9d393c2989b107f192a45003',
    desc: 'Tenda dirancang memiliki kapasitas 4-6 orang. Ukuran tenda (210+100) x 240 x 130cm. Memiliki Inner 190T Polyester Breathable PA Coated. Dengan Floor 10x10, 110g/M2 berbahan PE Polyethylene Terpal. Frame tenda dibuat dari Fiberglass 8,5mm x 3set warna Hitam. Berat tenda mencapai 4.1 kg dengan ukuran pasak ±4mm x 18cm x 15-18pcs dan menggunakan tali Galvanized Steel n 3mm GuyRope.',
    ),
    Item(name: 'Hammock' , img: 'https://cdn.shopify.com/s/files/1/0334/5730/7785/products/eagles-nest-outfitters-inc-hammock-orange-charcoal-supersub-ultralight-hammock-31574886416533.png?v=1627992488',
    desc: 'Tenda dirancang memiliki kapasitas 4-6 orang. Ukuran tenda (210+100) x 240 x 130cm. Memiliki Inner 190T Polyester Breathable PA Coated. Dengan Floor 10x10, 110g/M2 berbahan PE Polyethylene Terpal. Frame tenda dibuat dari Fiberglass 8,5mm x 3set warna Hitam. Berat tenda mencapai 4.1 kg dengan ukuran pasak ±4mm x 18cm x 15-18pcs dan menggunakan tali Galvanized Steel n 3mm GuyRope.',
    ),
    Item(name: 'Gas Portable' , img: 'https://i2.wp.com/harga.web.id/wp-content/uploads/Gas-Portable.jpg?fit=680%2C300&ssl=1',
    desc: 'Tenda dirancang memiliki kapasitas 4-6 orang. Ukuran tenda (210+100) x 240 x 130cm. Memiliki Inner 190T Polyester Breathable PA Coated. Dengan Floor 10x10, 110g/M2 berbahan PE Polyethylene Terpal. Frame tenda dibuat dari Fiberglass 8,5mm x 3set warna Hitam. Berat tenda mencapai 4.1 kg dengan ukuran pasak ±4mm x 18cm x 15-18pcs dan menggunakan tali Galvanized Steel n 3mm GuyRope.',
    ),
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Pallete.backgroundColor,
      appBar: AppBar(
        title: Text('Detail Alat', 
          style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue[400], Colors.blue[100]],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(30)
        ),
        margin: EdgeInsets.all(8),
        child: ListviewAlat(items: items),
      ),
    );
  }
}





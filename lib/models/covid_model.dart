class CovidModel {
  String images;
  String text;

  CovidModel({required this.images, required this.text});
}

List<CovidModel> covidModel = [
  CovidModel(
      images: 'assets/images/covid1.png',
      text: 'Diskon Spesial 25% Untuk Pelanggan Baru'),
  CovidModel(
      images: 'assets/images/covid2.png',
      text: 'Bebas Kuota Akses Layanan Kesehatan'),
  CovidModel(
      images: 'assets/images/covid3.png', text: 'Telkomsel #TerusBergerakMaju'),
  CovidModel(
      images: 'assets/images/covid4.png', text: '#DiRumahTerusProduktif'),
];

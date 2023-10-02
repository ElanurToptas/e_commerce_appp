class AssetsImages {
  static AssetsImages instance = AssetsImages();

  static const String _imagesPath = "assets/images";
  /* _imagesPath resimlerin yolunu saklar.
   Bu yolu kullanarak bu dizin içindeki resimlere erişebilirsiniz.
   */

  final String welcomeImage = "$_imagesPath/welcome.png";
  final String GoogleLogo = "$_imagesPath/google.png";

}

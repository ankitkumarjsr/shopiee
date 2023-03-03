
import "package:shopiee/constants/images_constants.dart";

class MensFormal{
  final String images;

  MensFormal(
      {
        required this.images,
      });
}
List<MensFormal>mensformal=[
  MensFormal(images: imgbg126),
  MensFormal(images: imgbg62),
  MensFormal(images: imgbg127),

];

class MensFootSize{
  final String number;
  final String status1;
  final String status2;

  MensFootSize(
 {
    required this.number,
    required this.status1,
   required this.status2,


});
}
List<MensFootSize>mensfootsize=[
  MensFootSize(number: "5 UK", status1: "   Currently Unavaliable", status2: "."),
  MensFootSize(number: "6 UK", status1: " -56%", status2: "\u{20B9}699"),
  MensFootSize(number: "7 UK", status1: "    Currently Unavaliable", status2: "."),
  MensFootSize(number: "8 UK", status1: "    Currently Unavaliable", status2: "."),
  MensFootSize(number: "9 UK", status1: "    Currently Unavaliable", status2: "."),
  MensFootSize(number: "10 UK", status1: "   Currently Unavaliable", status2: "."),
];

class DscShoes{
  final String images;

  DscShoes({
   required this.images,
});
}
List<DscShoes>dscshoes=[
  DscShoes(images: imgbg59),
  DscShoes(images: imgbg132),
  DscShoes(images: imgbg131),
  DscShoes(images: imgbg133),
];
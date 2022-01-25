import 'package:dart_base/dart_base.dart' as dart_base;

void main(List<String> arguments) {
  // print('Hello world: ${dart_base.calculate()}!');
  inSoChanTongDuoi400(maxNum: 1000); // 0
  demSoChiaHetCho3va5(maxNum: 10000); // 1

  List list5 = [4, 3, 10, 9, 15, 7, 6, 5, 8];
  tongCacSoChiaHetCho3(listNum: list5); // 2

  var classInformation = {
    "id": 12,
    "name": "Báo Flutter 1.2",
    "description": "Lớp học lập trình Flutter, hot line: 0349582808"
  };
  List<String> strSplit =
      classInformation['description'].toString().split(', ');
  print(strSplit[1]);
}

// bai 0
inSoChanTongDuoi400({required int maxNum}) {
  print("Cac so chan tu 1 den 1000 co tong nho hon 400:");
  var sum = 0;
  for (var i = 1; i <= maxNum; i++) {
    if (sum > 400) break;
    if (i % 2 == 0) {
      sum += i;
      print("$i");
    }
  }
}

// bai 1
demSoChiaHetCho3va5({required int maxNum}) {
  var soCacSoChiaHetCho3 = 0;
  var soCacSoChiaHetCho5 = 0;
  for (var i = 1; i <= maxNum; i++) {
    if (i % 3 == 0) soCacSoChiaHetCho3++;
    if (i % 5 == 0) soCacSoChiaHetCho5++;
  }
  print(
      "So luong cac so chia het cho 3 tu 1 den 10000 la: $soCacSoChiaHetCho3");
  print(
      "So luong cac so chia het cho 5 tu 1 den 10000 la: $soCacSoChiaHetCho5");
}

// bai 2
tongCacSoChiaHetCho3({required List listNum}) {
  var sumOdd = 0;
  for (int num in listNum) {
    if (num % 3 == 0) {
      sumOdd += num;
    }
  }
  print("Tong cac so chia het cho 3 trong danh sach la: $sumOdd");
}

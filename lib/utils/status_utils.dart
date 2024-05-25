import 'package:dusty_dust/const/status_lavel.dart';
import 'package:dusty_dust/model/stat_model.dart';
import 'package:dusty_dust/model/status_model.dart';

class StatusUtils{
  static StatusModel getStatusModelFromStat({
    required StatModel statModel,
}) {
    final itemCode = statModel.itemCode;

    final index = statusLevels.indexWhere(
        (e) {
          switch (itemCode) {
            case ItemCode.PM10:
              return statModel.stat < e.minPM10;
            case ItemCode.PM25:
              return statModel.stat < e.minPM25;
            case ItemCode.CO:
              return statModel.stat < e.minCO;
            case ItemCode.NO2:
              return statModel.stat < e.minPM10;
            case ItemCode.O3:
              return statModel.stat < e.minPM10;
            case ItemCode.S02:
              return statModel.stat < e.minPM10;
            default:
              throw Exception('존재하지 않는 데이터 입니다.');
          }
        },
    );

    if(index < 0) {
      throw Exception('index를 찾지 못했습니다.');
    }

    final status = statusLevels[index - 1];

    return status;
  }
}
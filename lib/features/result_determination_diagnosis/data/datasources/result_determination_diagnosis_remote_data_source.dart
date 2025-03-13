import '../../../../core/network/rest_client.dart';
import '../../../../injection_container.dart';

abstract class ResultDeterminationDiagnosisRemoteDataSource {
  // Future<ResultDeterminationDiagnosisModel> getResultDeterminationDiagnosis();
}

class ResultDeterminationDiagnosisRemoteDataSourceImpl
    implements ResultDeterminationDiagnosisRemoteDataSource {
  final DioClient dioClient = sl<DioClient>();

  ResultDeterminationDiagnosisRemoteDataSourceImpl();
}

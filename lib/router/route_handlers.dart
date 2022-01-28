import 'package:bases_web/ui/views/counter_provider_view.dart';
import 'package:bases_web/ui/views/counter_view.dart';
import 'package:bases_web/ui/views/view_404.dart';
import 'package:fluro/fluro.dart';

final counterHandler = Handler(handlerFunc: (context, params) {
  return CounterView(
    base: params['base']?.first ?? '5',
  );
});

final providerHandler = Handler(handlerFunc: (context, params) {
  return CounterProviderView(base: params['q']?.first ?? '10');
});

final dashboardUserrHandler = Handler(handlerFunc: (context, params) {
  return View404();
});

//404
final pageNotFoundHandler = Handler(handlerFunc: (_, __) => View404());

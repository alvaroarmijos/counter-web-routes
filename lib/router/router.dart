import 'package:bases_web/router/route_handlers.dart';
import 'package:fluro/fluro.dart';

class Flurorouter {
  static final FluroRouter router = new FluroRouter();

  static void configureRoutes() {
    //aqui poner un loading
    router.define('/',
        handler: counterHandler, transitionType: TransitionType.fadeIn);

    //Stateful
    router.define('/stateful',
        handler: counterHandler, transitionType: TransitionType.fadeIn);
    router.define('/stateful/:base',
        handler: counterHandler, transitionType: TransitionType.fadeIn);

    //Provider
    router.define('/provider',
        handler: providerHandler, transitionType: TransitionType.fadeIn);

    router.define('/dashboard/users/:userid/:roleid',
        handler: dashboardUserrHandler, transitionType: TransitionType.fadeIn);

    router.notFoundHandler = pageNotFoundHandler;
  }

  //Handlers

}

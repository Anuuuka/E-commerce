import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import "./ScopeManage.dart";
import 'Activities/Home.dart';
import 'Activities/Details.dart';
import 'Activities/Cart.dart';
import 'Activities/add_products.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  runApp(Main());

}
// ignore: must_be_immutable
class Main extends StatelessWidget{

  AppModel appModel = AppModel();

  final routes = <String,WidgetBuilder>{
    Home.route:(BuildContext context)=>Home(),
    Details.route:(BuildContext context)=>Details(),
    Cart.route :(BuildContext context)=>Cart(),
    AddProduct.route :(BuildContext context)=> AddProduct(),
  };

  @override
  Widget build(BuildContext context) {
    return ScopedModel<AppModel>(
      model: appModel,
      child: MaterialApp(
        home: Home(appModel: appModel,),
        routes: routes,
        theme: ThemeData(
            primaryColor: Colors.indigo
        ),
      ),
    );
  }
}



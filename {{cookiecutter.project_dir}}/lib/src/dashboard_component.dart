import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

//Add dashboard
import 'package:angular_components/material_button/material_button.dart';

import 'hero.dart';
import 'hero_service.dart';

@Component(
  selector: 'my-dashboard',
  templateUrl: 'dashboard_component.html',
  directives: const [CORE_DIRECTIVES, ROUTER_DIRECTIVES, MaterialButtonComponent],
  styleUrls: const ['dashboard_component.css'],
)

class DashboardComponent implements OnInit {
  List<Hero> heroes;

  final HeroService _heroService;

  DashboardComponent(this._heroService);

  Future<Null> ngOnInit() async {
    heroes = (await _heroService.getHeroes()).skip(1).take(4).toList();
  }

  var content = 'Click Me';
  
  void click() {
    content = (content == 'Click Me' ? 'Good' : "Click Me");   
  }
}
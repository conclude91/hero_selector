import 'package:hero_selector/hero_selector.dart' as hero_selector;

void main(List<String> arguments) {
  // init value row, col 2D array
  int maxRow = 3;
  int maxCol = 4;

  // init array 2D
  List<List<String>> heroes = List.generate(
      maxRow, (i) => List.filled(maxCol, "", growable: false),
      growable: false);

  // inital array of hero
  heroes = [
    ["Riki", "Medusa", "Viper", "Abadon"],
    ["Crystal Maiden", "Lina", "Luna", "Ogre Magi"],
    ["Juggernaut", "Warlock", "Nyx", "Tiny"],
  ];

  // set default index coordinate hero (Luna)
  List<int> currentCoor = [1, 2];

  // init move case 1
  print("Initializing move case 1...");
  // set move case 1
  List<String> moves = [
    "left",
    "left",
    "top",
    "right",
    "right",
    "bottom",
    "bottom",
  ]; // output Nyx
  // expected hero
  String expectedHero = "Nyx";
  // call method case 1
  String selectedHero = hero_selector.selectHero(heroes, currentCoor, moves);
  // result validation
  bool result = hero_selector.resultValidation(expectedHero, selectedHero);
  print("Result : $result");

  // separator
  print("=================================================");

  // init move case 1
  print("Initializing move case 2...");
  // set move case 2
  List<String> moves2 = [
    "left",
    "top",
    "left",
    "bottom",
    "bottom",
  ]; // output Juggernaut
  // expected hero
  String expectedHero2 = "Juggernaut";
  // call method case 2
  String selectedHero2 = hero_selector.selectHero(heroes, currentCoor, moves2);
  // result validation
  bool result2 = hero_selector.resultValidation(expectedHero2, selectedHero2);
  print("Result : $result2");
}
import 'package:hero_selector/hero_selector.dart';
import 'package:test/test.dart';

void main() {
  test(
    'selecthero',
    () {
      List<List<String>> heroes = [
        ["Riki", "Medusa", "Viper", "Abadon"],
        ["Crystal Maiden", "Lina", "Luna", "Ogre Magi"],
        ["Juggernaut", "Warlock", "Nyx", "Tiny"],
      ];
      // set default index coordinate hero (Luna)
      List<int> currentCoor = [1, 2];
      // set move case
      List<String> moves = [
        "left",
        "left",
        "top",
        "right",
        "right",
        "bottom",
        "bottom",
      ]; // expected output Nyx
      expect(selectHero(heroes, currentCoor, moves), "Nyx");
    },
  );

  test(
    'resultValidation',
    () {
      expect(resultValidation("Juggernaut", "Juggernaut"), true);
    },
  );
}

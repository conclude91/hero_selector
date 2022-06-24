String selectHero(
    List<List<String>> heroes, List<int> currentCoor, List<String> moves) {
  // init var array 2D
  int currentRow = currentCoor[0];
  int currentCol = currentCoor[1];
  int maxRow = heroes.length - 1;
  int maxCol = heroes[0].length - 1;

  print(
      "Default hero [$currentRow][$currentCol] : ${heroes[currentRow][currentCol]}");
  print("Moves : $moves");

  // watch moves
  for (var move in moves) {
    if (move == "left") {
      currentCol != 0 ? currentCol-- : currentCol;
    } else if (move == "right") {
      currentCol != maxCol ? currentCol++ : currentCol;
    } else if (move == "top") {
      currentRow != 0 ? currentRow-- : currentRow;
    } else if (move == "bottom") {
      currentRow != maxRow ? currentRow++ : currentRow;
    }
  }

  print(
      "Selected hero [$currentRow][$currentCol] : ${heroes[currentRow][currentCol]}");

  return heroes[currentRow][currentCol];
}

bool resultValidation(String expectedHero, String selectedHero) {
  return expectedHero == selectedHero ? true : false;
}
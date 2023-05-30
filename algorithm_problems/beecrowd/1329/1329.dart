import 'dart:io';

void main(List<String> args) {
  int rounds = -1;
  while (true) {
    final String roundInput = stdin.readLineSync() ?? "0";
    rounds = int.parse(roundInput);
    if (rounds == 0) break;
    String plays = stdin.readLineSync() ?? '';
    final int maryWinTimes =
        plays.replaceAll("1", "").replaceAll(" ", "").length;
    print(
        "Mary won $maryWinTimes times and John won ${rounds - maryWinTimes} times");
  }
}

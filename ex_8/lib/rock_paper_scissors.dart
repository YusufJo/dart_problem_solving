enum GameState { draw, playerOneWon, playerTwoWon }
enum Choice { rock, paper, scissors }

GameState checkState(Choice playerOneChoice, Choice playerTwoChoice) {
  if (playerOneChoice == playerTwoChoice) return GameState.draw;
  if (playerOneChoice == Choice.rock) {
    if (playerTwoChoice == Choice.paper) return GameState.playerTwoWon;
    return GameState.playerOneWon;
  } else if (playerOneChoice == Choice.paper) {
    if (playerTwoChoice == Choice.scissors) return GameState.playerTwoWon;
    return GameState.playerOneWon;
  } else {
    // player one chose scissors
    if (playerTwoChoice == Choice.rock) return GameState.playerTwoWon;
    return GameState.playerOneWon;
  }
}

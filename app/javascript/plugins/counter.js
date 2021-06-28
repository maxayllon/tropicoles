const counter = () => {
  const teamOneCounter = document.querySelector(".teamone_counter")
  const teamTwoCounter = document.querySelector(".teamtwo_counter")
  const pointGame = document.querySelector(".point_game")

  console.log(teamOneCounter.innerText)
  console.log(teamTwoCounter.innerText)
  console.log(pointGame.innerText)

  pointGame.addEventListener('click', () => {
    teamTwoCounter.innerText === pointGame.innerText
    console.log("hello")
  })
}

export { counter };

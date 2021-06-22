const plusButton = () => {
  const plusOne = document.querySelector(".plus-one");
  const playerPlusOne = document.querySelector(".playerone-add");

  plusOne.addEventListener('click', () => {
    playerPlusOne.classList.toggle('no-display')
  })

  const plusTwo = document.querySelector(".plus-two");
  const playerPlusTwo = document.querySelector(".playertwo-add");

  plusTwo.addEventListener('click', () => {
    playerPlusTwo.classList.toggle('no-display')
  })
};

export { plusButton };

const submitButton = () => {
  const submit = document.querySelectorAll(".disappear");
  submit.forEach((button) =>{
    button.addEventListener('click', () => {
      button.classList.add('no-display')
    })
  })
};

export { submitButton };

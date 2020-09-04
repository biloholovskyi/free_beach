const inputForm = (event) => {
  const current = $(event.currentTarget);

  if(current.val()) {
    current.parent('.subscribe__form').addClass('input-wrapper--input');
  } else {
    current.parent('.subscribe__form').removeClass('input-wrapper--input');
  }
};

export {inputForm}
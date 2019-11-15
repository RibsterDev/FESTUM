import $ from 'jquery';
import select2 from 'select2/dist/js/select2';



const categories = ["Théatre", "Musique", "Cinéma"];

const initSelect2 = () => {
  // Turn on js-selectable class so that it becomes SELCT 2 tag
  $('.js-searchable').select2({
    theme: "bootstrap",
    data: categories,
    width: '100%'
    // If you are using Bootstrap, please add　`theme: "bootstrap"` too.
  });
};

export { initSelect2 };


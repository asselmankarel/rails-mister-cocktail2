import 'select2';
// import $ from 'jquery';

const initSelect2 = () => {
  document.querySelectorAll('select').select2({ width: '100%' });
  // $('select').select2({ width: '100%' });
};

export { initSelect2 };
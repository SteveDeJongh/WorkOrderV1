document.addEventListener('DOMContentLoaded', e => {
  let detailsEls = [document.getElementById('detailsTab'), document.getElementById('detailsDiv')];
  let itemsEls = [document.getElementById('itemsTab'), document.getElementById('itemsDiv')]
  let workOrdersEls = [document.getElementById('workOrdersTab'), document.getElementById('workOrdersDiv')];
  let collection = [detailsEls, itemsEls, workOrdersEls];

  [detailsEls, itemsEls, workOrdersEls].forEach(arr => {
    arr[0].addEventListener('click', e => {
      cleanup(collection);
      arr[0].classList.toggle('active');
      arr[1].style.removeProperty('display');
    })
  });

  function cleanup(collection) {
    collection.forEach(arr => {
      arr[0].classList.remove('active');
      arr[1].style.display = 'none';
    })
  };
})
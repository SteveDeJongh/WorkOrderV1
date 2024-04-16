document.addEventListener("turbo:load", e => {
  // Tab controls
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

  //

  document.getElementById("cust_items_table").addEventListener('click', e => {
    if (e.target.tagName !== "TD") return;
    let cust_item_id = Number(e.target.closest('TR').id.split(' ')[1]);
    window.location.replace(`http://localhost:3000/cust_items/${cust_item_id}`);
  })
})
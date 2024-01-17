import counter from './counter.js';

const moreButton = document.querySelector('#more');
const lessButton = document.querySelector('#less');
const countText = document.querySelector('#count');

moreButton.addEventListener('click', () => {
    counter.add(1);
    countText.innerText = counter.getCount();
});

lessButton.addEventListener('click', () => {
    counter.sub(1);
    countText.innerText = counter.getCount();
});

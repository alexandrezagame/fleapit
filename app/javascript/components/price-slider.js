import noUiSlider from 'nouislider';


const slider = document.getElementById('slider');

const createSlider = () => {
    noUiSlider.create(slider, {
    start: [20, 80],
    connect: true,
    range: {
        'min': 0,
        'max': 1000
    }
});
    slider.noUiSlider.on('set', updateInput); {
      slider.innerHTML = values[handle];
    }
}

const updateInput = () => {
const maxPriceInput = document.getElementById('item_max_price');
const minPriceInput = document.getElementById('item_min_price');
const priceValue = slider.noUiSlider.get();
maxPriceInput.value = parseInt(priceValue[1], 10);
minPriceInput.value = parseInt(priceValue[0], 10);
console.log(maxPriceInput.value);
console.log(minPriceInput.value);
updatePrice(minPriceInput.value, maxPriceInput.value);
}

const updatePrice = (minPrice, maxPrice) => {
  const minPriceHTML = document.getElementById("lowerPrice");
  const maxPriceHTML = document.getElementById("upperPrice");
  minPriceHTML.innerHTML = `<p>${parseInt(minPrice, 10).toFixed()}</p>`
  maxPriceHTML.innerHTML = `<p>${parseInt(maxPrice, 10).toFixed()}</p>`
}

export { createSlider };
// Binding signature





import noUiSlider from 'nouislider';


const slider = document.getElementById('slider');

const createSlider = () => {
    noUiSlider.create(slider, {
    start: [20, 80],
    connect: true,
    range: {
        'min': 0,
        'max': 100
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
}

export { createSlider };
// Binding signature



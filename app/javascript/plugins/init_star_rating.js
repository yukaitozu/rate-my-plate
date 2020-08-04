import "jquery-bar-rating";
import $ from 'jquery';

const initStarRating = () => {
  $('#restaurant_rating').barrating({
    theme: 'css-stars'
  });
};

export { initStarRating };

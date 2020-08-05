import "jquery-bar-rating";
import $ from 'jquery';

const initStarRatingRestaurant = () => {
  $('#restaurant_rating').barrating({
    theme: 'css-stars'
  });
};

const initStarRatingPlate = () => {
  $('#plate_rating').barrating({
    theme: 'css-stars'
  });
};

export { initStarRatingRestaurant };
export { initStarRatingPlate };

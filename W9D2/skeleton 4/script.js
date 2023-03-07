document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });

  // adding SF places as list items

  // --- your code here!

  const FavoritePlaceSubmit = document.querySelector(".favorite-submit");

  FavoritePlaceSubmit.addEventListener("click", (e) => {
    e.preventDefault();

    const favPlaceInput = document.querySelector(".favorite-input");
    const favPlaceName = favPlaceInput.value;
    favPlaceInput.value = "";

    const li = document.createElement("li");
    li.textContent = favPlaceName;
    const ul = document.getElementById("sf-places");
    ul.appendChild(li);
  });
  // adding new photos

  // --- your code here!
});

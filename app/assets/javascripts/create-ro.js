window.onload = function() {
  
  const hideRo = document.querySelector("#ro-create").style.display = "none";
  toggleRO();
  cancelRO();
  
};

function toggleRO() {
  document.querySelector("#create-ro-button").addEventListener("click", function (event) {
    event.preventDefault();
    document.querySelector("#ro-create").style.display = "block";
  });
  
}

function cancelRO() {
  document.querySelector("#cancel-ro").addEventListener("click", function (event) {
    event.preventDefault();
    document.querySelector("#ro-create").style.display = "none";
  });
}


// window.onload = function() {
//   newRo = document.getElementById("ro-create").style.display = 'none'
//   this.document.getElementById("create-button").onClick=function() {
    
//     newRo.toggle()
//   }
// };

// document.getElementById("ro-search").style.display = 'none'
// document.querySelectorAll("ro-search-btn").forEach(function(item) {
//   item.addEventListener("click", function(event) {
//     event.preventDefault()
//     document.querySelector("ro-search").id.display= 'block'
//   })
// })

window.onload = function() {
  const hideNewRo = document.querySelector("#ro-create").style.display = "none";

  document.querySelector("#create-ro-button").addEventListener("click", function(event) {
    event.preventDefault();
    document.querySelector("#ro-create").style.display = 'block'
  })
}

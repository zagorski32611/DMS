document.addEventListener("turbolinks:load", function() {

    const hideNewVeh = document.querySelector("#new-vehicle-form").style.display = "none";
    toggleVehicle();
    cancelVehicle();
});

function toggleVehicle() {
    document.querySelector("#new_vehicle_button").addEventListener("click", function(event){
        event.preventDefault();
        document.querySelector("#new-vehicle-form").style.display = "block";
    });
}

function cancelVehicle() {
    document.querySelector("#cancel_vehicle").addEventListener("click", function(event) {
        event.preventDefault();
        document.querySelector("#new-vehicle-form").style.display = "none";
    });
}
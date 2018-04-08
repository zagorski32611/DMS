document.addEventListener("turbolinks:load", function() {
    const hideCustomer = document.querySelector("#add-customer-form").style.display = "none";
    hideCustomer;
    hideCustomerForm();
    cancelCustomerForm();
});

function hideCustomerForm() {
    document.querySelector("#add-customer-button").addEventListener("click", function(event) {
        event.preventDefault;
        document.querySelector("#add-customer-form").style.display = "block";
    });
}

function cancelCustomerForm() {
    document.querySelector("#cancel-customer-button").addEventListener("click", function(event) {
        event.preventDefault;
        document.querySelector("#add-customer-form").style.display = "none";
    });
}
function getTotal(quantities) {
    var total = 0;
    $.each(quantities, function() {
        total += parseFloat($(this).closest('.item').find('.price').attr('data-price')) * parseInt($(this).val());
    });
    $("#total-price").html("$" + total + " USD");
}

var quantity = $('.quantity');
getTotal(quantity); // So the total is calculated on page load.

quantity.blur(function() {
    getTotal(quantity);
});

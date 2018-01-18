const giftsId = 'gifts';
const invId = 'invitations';

const urls = {
    gifts: "/manage-gifts.html",
    invitations: "/manage-invitations.html"
};

$(document).ready(function () {
    load(giftsId);
});

function load(id) {
    $.ajax({
        url: urls[id],
        success: function (data) {
            $('#admin-tab').html(data);
            $('.admin-nav.active').toggleClass('active');
            $('#' + id).toggleClass('active');
        }
    });
}

function phase1(id) {
    $('.p1-' + id).show();
    $('.p2-' + id).hide();
}

function phase2(id) {
    $('.p1-' + id).hide();
    $('.p2-' + id).show();
}

function deleteGift(id) {
    $.ajax({
        url: urls[giftsId] + "/" + id + "/delete",
        success: function (data) {
            $('#admin-tab').html(data);
        }
    });
}

function changeReservation(id) {
    $.ajax({
        url: urls[giftsId] + "/" + id + "/changeReservation",
        success: function (data) {
            $('#admin-tab').html(data);
        }
    });
}

function deleteInvitation(id) {
    $.ajax({
        url: urls[invId] + "/" + id + "/delete",
        success: function (data) {
            $('#admin-tab').html(data);
        }
    });
}

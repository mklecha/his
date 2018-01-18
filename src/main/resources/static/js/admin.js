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
        }
    });
}
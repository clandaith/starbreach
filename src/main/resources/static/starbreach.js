var soldierJSON = null;
var relicsJSON = null;
var specialRulesJSON = null;

$(document).ready(function () {
    $.getJSON("/api/soldier/", function (data) {
        soldierJSON = data;
    });

    $("#soldier_add_button").click(function () {
        loadSoldierRow($("#soldier_select option:selected").val());
    });
});

$(document).on('click', 'i.deletebtn', function () {
    $(this).closest('tr').remove();
    return false;
});

function getSoldier(soldierId) {
    return soldierJSON.filter(soldier => soldier.id == soldierId)
        .reduce((x, soldier) => soldier, 0);
}

function loadSoldierRow(soldierId) {
    var soldier = getSoldier(soldierId);
    var rowId = new Date().getTime();

    var newRowContent = "";
    newRowContent += "<tr id=" + rowId + ">";
    newRowContent += "  <td></td>";
    newRowContent += "  <td>" + soldier.name + "</td>";
    newRowContent += "  <td>" + soldier.move + "</td>";
    newRowContent += "  <td>" + soldier.initiative + "</td>";
    newRowContent += "  <td>" + soldier.health + "</td>";
    newRowContent += "  <td>" + soldier.armor + "</td>";
    newRowContent += "  <td>" + soldier.cost + "</td>";
    newRowContent += "  <td><i class=\"fas fa-backspace deletebtn\"></i></td>";
    newRowContent += "</tr>";

    $("#soldier_table tbody").append(newRowContent);
}

function deleteSoldierRow(rowId) {
    alert("Row id to delete: " + rowId);
}
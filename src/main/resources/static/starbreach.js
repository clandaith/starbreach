var soldierJSON = null;

$(document).ready(function () {
    $.getJSON("/api/soldier/", function (soldierData) {
        //alert("Data Loaded: " + soldierData);

        soldierJSON = soldierData;
    });


    $("#soldier_add_button").click(function () {
        var soldierName = $("#soldier_select option:selected").text();
        var soldierId = $("#soldier_select option:selected").val();
        // alert(soldierId + " " + soldierName);

        blork(soldierId);
    });
});

function getSoldier(soldierId) {
    var soldier1;
    // soldierJSON.filter(soldier => soldier.id == soldierId)
    //   .forEach(soldier => {console.log(soldier.id + " :: " + soldier.name); soldier1 = soldier;});

    soldier1 = soldierJSON.filter(soldier => soldier.id == soldierId)
        .reduce((x, soldier) => );

    return soldier1;
}

function blork(soldierId) {

    var soldier = getSoldier(soldierId);

    var newRowContent = "";
    newRowContent += "<tr>";
    newRowContent += "<td></td>";
    newRowContent += "<td>" + soldier.name + "</td>";
    newRowContent += "<td>" + soldier.move + "</td>";
    newRowContent += "<td>" + soldier.initiative + "</td>";
    newRowContent += "<td>" + soldier.health + "</td>";
    newRowContent += "<td>" + soldier.armor + "</td>";
    newRowContent += "<td>" + soldier.cost + "</td>";
    newRowContent += "<td>X</td>";
    newRowContent += "</tr>";

    $("#soldier_table tbody").append(newRowContent);
}
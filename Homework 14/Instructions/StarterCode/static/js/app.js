// // from data.js
// var tableData = data;

// // YOUR CODE HERE!
// From data.js
var tableData = data;

var tbody = d3.select("#tbody");

var filterBtn = d3.select("#filter-btn");

var inputField = d3.select("#datetime");

var submit = d3.select("#filter-btn"); 

var inputDate = d3.select("#datetime");


function loadTableData(dataRows) {
  document.getElementById('table-content').innerHTML="";

  d3.select("tbody")
  
    .selectAll("tr")
  
    .data(dataRows)
  
    .enter()
  
    .append("tr")
  
    .html(function(d) {
  
      return `<td>${d.datetime}</td> <td>${d.city}</td> <td>${d.state}</td> <td>${d.country}</td>
  
              <td>${d.shape}</td> <td>${d.durationMinutes}</td> <td>${d.comments}</td>     `;
  
    });
  
   
  }

loadTableData(tableData);

submit.on("click", function() {

  d3.event.preventDefault();

  var inputValue = inputDate.property("value");
  console.log("checksubmit1")
  console.log(inputValue);
  console.log("checksubmit2")

  if (inputValue) {
  var filterdata = tableData.filter(onerec => onerec.datetime === inputValue);}
  console.log('Filtering Data');
  console.log(filterdata);

  tbody.html("");
  loadTableData(filterdata);
});


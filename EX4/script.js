const list = () => {
  const val = document.getElementById("sentence").value;
  const arr = val.split(" ");
  let lenarr = [];
  arr.map((a) => (a.length == 3 ? lenarr.push(a) : null));

  alert("The words length is 3: " + lenarr);
};

const numlist = () => {
  const n = prompt("Enter number of inputs");
  let arr = [];
  for (let i = 0; i < n; i++) {
    arr.push(prompt("Enter " + (i + 1) + " values"));
  }
  arr.sort((a, b) => a - b);
  alert("Second Largest Element is: " + arr[n - 2]);
};

const area = () => {
  const r = prompt("Enter the radius: ");
  alert("The area of the circle is: " + Math.PI * r * r);
  alert("The perimeter of the circle is: " + 2 * Math.PI * r);
};

const greetings = () => {
  const name = prompt("Enter Your name");
  alert("Welcome " + name);

  const date = new Date();
  const curdate = date.getDate();

  document.createElement("p");
  document.createTextNode("");
};

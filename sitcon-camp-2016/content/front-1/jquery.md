write less, do more.   
![jq logo](./assets/jquery/logo.png)

---

## Pros of jQuery

^^^

### CSS 選擇器

Before
```js
var id = document.getElementById('elementID');
var class = document.getElementsByClassName('elementClass');
```
After
```js
var id = $('#elementID');
var class = $('.elementClass');
```

選擇器的寫法就跟 CSS 沒兩樣 d(`･∀･)b

^^^

### 鏈式函數 chaining functions

Before
```js
var element = document.getElementById('myDiv');
element.innerHTML = foobar;
element.classList.add('tangoClass');
```
After
```js
$("#myDiv").html('foobar').addClass('tangoClass');
```

^^^

### 更簡單的事件監聽器

Before
```js
var element = document.getElementById('myDiv');
element.addEventListener('click', function() {
  // code
})
```
After
```js
$('#myDiv').on('click', function() {
  // code
})
```

^^^

### 更簡單的動畫

```js
$('#myDiv').on('click', function() {
  $(this).fadeOut()
})
```
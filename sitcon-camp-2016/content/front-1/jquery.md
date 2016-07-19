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

---

## Cons of jQuery
http://youmightnotneedjquery.com/

^^^

## 速度很慢，效能很差

^^^

### DOM 選擇器效能
<img src="./assets/jquery/performance/dom-selecting.png" width="70%">

^^^

你可以這樣寫原生
```js
var element = document.querySelectorAll('#myDiv')
```

^^^

### 迴圈
![looping](./assets/jquery/performance/loop.png)

^^^

你可以這樣寫原生
```js
[2, 5, 9, 7, 10].forEach(function(element){
	// code
})
```

^^^

### 動畫
* jQuery 使用 JavaScript 控制 CSS 屬性
	* 效能很差，但支援很舊的瀏覽器 (F**k IE!)
* CSS3 原生動畫（transition, keyframe)
	* 效能好，但要新一點的瀏覽器才支援
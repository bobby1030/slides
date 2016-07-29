# SITCON Summer Camp
# 前端分流課程 #2
<br>
2016-08-04 By BobbyHo

---

write less, do more.   
![jq logo](./assets/jquery/logo.png)

---

## Pros of jQuery

^^^

### CSS 選擇器

Before

```js
var id = document.getElementById('elementID');
var selectClass = document.getElementsByClassName('elementClass');
```

After

```js
var id = $('#elementID');
var selectClass = $('.elementClass');
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
* jQuery 動畫
	* 使用定時器不斷調整 CSS 屬性的值
	* 效能很差，但支援很舊的瀏覽器 (F**k IE!)
* CSS3 原生動畫（transition, keyframe)
	* 效能好，但要新一點的瀏覽器才支援

^^^

講了這麼多   
為了好講解、理解   
所以本課程仍然以 jQuery 為主，特此下跪道歉(?   
<(\_ \_)> 

---

## 常用 API

^^^

### DOM 操作

```js
$('#myElement').方法()
```

|                         |                             |
|:-----------------------:|:---------------------------:|
| `.each()`               | 遍歷 array 中的數值，搭配 `$(this)`|
| `.append()`             | 在 `#myElement` 元素內的尾端插入     |
| `.prepend()`            | 在 `#myElement` 元素內的前端插入     |
| `.remove()`             | 從 DOM 中移除 `#myElement` 元素    |
| `.replaceWith(content)` | 用 content 取代 `#myElement`      |
| `.html()`               | `#myElement` 內部的 HTML 內容     |

^^^

### 元素 HTML 屬性

```js
$('#myElement').方法()
```

|                         |                                           |
|:-----------------------:|:-----------------------------------------:|
| `.attr(屬性名稱)`         | 取得 `#myElement` 的某個屬性的值               |
| `.attr(屬性名稱, 值)`     | 設定 `#myElement` 的某個屬性的值               |
| `.removeAttr(屬性名稱)`   | 刪除 `#myElement` 的某個屬性                  |
| `.val()`                | 取得 `#myElement` 的 value 屬性的值（常用在表單）|
| `.val(值)`              | 設定 `#myElement` 的 value 屬性的值           |

^^^

### 取得元素 CSS 樣式

```js
$('#myElement').方法()
```

|                        |                                        |
|:----------------------:|:--------------------------------------:|
| `.css(color)`          | 取得 `#myElement` 元素 color 屬性的值      |
| `.addClass(class)`     | 對 `#myElement` 增加 class              |
| `.removeClass(class)`  | 對 `#myElement` 刪除 class              |
| `.toggleClass(class)`  | 若 class 存在則刪除，反之增加 class         |

^^^

### jQuery 的事件監聽器
監聽事件：

```js
$('.element').on('事件', callback)
```

觸發事件：

```js
$('.element').trigger('事件')
```

^^^

|事件    | 名稱         |
|:-----:|:-----------:|
|數值改變 | `change`    |
|獲得焦點 | `focus`     |
|失去焦點 | `blur`      |
|選取文字 | `select`    |
|鼠標進入 | `mouseover` |
|表單提交 | `submit`    |
|鼠標點擊 | `click`     |
|鼠標雙擊 | `dblclick`  |
|按鍵釋放 | `keyup`     |

^^^

### jQuery 的動畫
|說明    | 方法            |
|:-----:|:--------------:|
|顯示    | `show()`       |
|隱藏    | `hide()`       |
|切換    | `toggle()`     |
|淡入    | `fadeIn()`     |
|淡出    | `fadeOut()`    |
|向上滑出 | `slideUp()`    |
|向下滑入 | `slideDown()`  |
|滑入切換 | `slideToggle()`|
# SITCON Summer Camp
# 前端分流課程 #2
<br>
2016-08-04 By BobbyHo

---

## HTML 中的使用者互動
使用者與頁面互動的常用元件

^^^

### 按鈕
```html
<button name="button">Click me</button>
```
<button>Click me</button>

^^^

### 單行輸入框
```html
<input type="text" name="firstname" value="Mickey">
```
<input type="text" name="firstname" value="Mickey">

^^^

### 下拉選單
```html
<select name="select">
  <option value="value1">Value 1</option> 
  <option value="value2" selected>Value 2</option>
  <option value="value3">Value 3</option>
</select>
```
<select name="select">
  <option value="value1">Value 1</option> 
  <option value="value2" selected>Value 2</option>
  <option value="value3">Value 3</option>
</select>

^^^

### 單選
`name`屬性相同會被歸在同一類
```html
<input type="radio" name="radiogroup" value="Radio1" checked>Radio1</input>
<input type="radio" name="radiogroup" value="Radio2">Radio2</input>
<input type="radio" name="radiogroup" value="Radio3">Radio3</input>
<input type="radio" name="radiogroup2" value="Radio4" checked>Radio4</input>
```
<input type="radio" name="radiogroup" value="Radio1" checked>Radio1</input>
<input type="radio" name="radiogroup" value="Radio2">Radio2</input>
<input type="radio" name="radiogroup" value="Radio3">Radio3</input>
<input type="radio" name="radiogroup2" value="Radio4" checked>Radio4</input>

^^^

### 表單
總和各種互動元件
```html
<form action="submit.php">
	Name:</br>
		<input type="text" name="firstname" value="Mickey"><br>
	Gender:<br>
		<input type="radio" name="gender" value="male" checked>Male</input>
		<input type="radio" name="gender" value="female">Female</input>
		<input type="radio" name="gender" value="others">Others</input>
	<input type="submit" value="Submit">
</form>
```

<form>
	Name:</br>
		<input type="text" name="firstname" value="Mickey"><br>
	Gender:<br>
		<input type="radio" name="gender" value="male" checked>Male</input>
		<input type="radio" name="gender" value="female">Female</input>
		<input type="radio" name="gender" value="others">Others</input></br>
	<input type="submit" value="Submit">
</form>

^^^

### 表單的 Submit 行為 #1
```html
<form action="submit.php" method="get">
	<input type="text" name="name" value="">
	<input type="radio" name="vegetarian" value="true">Vegetarian</input>
	<input type="radio" name="vegetarian" value="false" checked>Non Vegetarian</input>
</form>
```
`method`：submit 後的行為，可為 `get` 或 `post`

Result: `submit.php?name=ㄗㄑ&vegetarian=false`

^^^

### 表單的 Submit 行為 #2
用 jQuery 監聽 `submit` 事件，並避免表單採取預設行為（對目前頁面發送 `get`）
```html
<form id="form">
	<!-- Form Data -->
</form>
```
```js
$('#form').on('submit', function(){
	// 處理資料
	return false;
})
```

---

## AJAX
### 異步 JavaScript 與 XML
![AJAX](./assets/ajax/logo.jpg)

^^^

> 在不重新載入網頁的前提下   
使用者與伺服器進行資料交換

^^^

### 傳統網頁的互動
<img src="./assets/ajax/headfirst/trad_site.png" width="70%">

^^^

### AJAX 網頁的互動
<img src="./assets/ajax/headfirst/ajax_site.png" width="70%">

^^^

### 傳統網頁的資訊交換
![](./assets/ajax/progress/trad progress.png)

^^^

### AJAX 網頁的資訊交換
![](./assets/ajax/progress/ajax progress.png)

---

## 使用 jQuery 送出 AJAX 請求

^^^

### `$.ajax` 基本結構

```js
$.ajax({
	url: "http://example.com/api/v2/login",
	data: $('form').serialize(),
	type:"POST"
})
```
* `url`: 要請求的網址
* `data`: 要送出的資料
	* `type` 如果是 `"GET"` 就會自動附加到網址後
* `type`: HTTP請求類型 (ex. `GET`, `POST`, `PUT`)

^^^

### Response Handler

```js
$.ajax({
	// 省略
})
	.done(function(data) {
			// AJAX Success
	})
	.fail(function(jqXHR, textStatus, errorThrown) {
			// AJAX Fail
	})
```
* `.done`: 請求成功的 callback
	* `data`: 伺服器回應
* `.fail`: 請求失敗的 callback
	* `textStatus`: 簡易版的錯誤訊息
	* `errorThrown`: HTTP 錯誤訊息

^^^

### Make It Easier
```js
$.get(url [,data][,success])
$.post(url, [,data][,success])
```

^^^

### `.serialize()`

```html
<form action="submit.php" method="get">
	<input type="text" name="name" value="ㄗㄑ"></input>
	<input type="radio" name="vegetarian" value="true">Vegetarian</input>
	<input type="radio" name="vegetarian" value="false" checked>Non Vegetarian</input>
</form>
```
```js
$('form').serialize()
// name=%E3%84%97%E3%84%91&vegetarian=false
```
# SITCON Summer Camp
# 前端分流課程 #3
<br>
2016-08-04 By BobbyHo

---

# Live Chat
http://webchat.freenode.net/?channels=sitcon-camp-2016-front

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
<input type="radio" name="radiogroup" value="Radio1" checked><label>Radio1</label>
<input type="radio" name="radiogroup" value="Radio2"><label>Radio2</label>
<input type="radio" name="radiogroup" value="Radio3"><label>Radio3</label>
<input type="radio" name="radiogroup2" value="Radio4" checked><label>Radio4</label>
```
<input type="radio" name="radiogroup" value="Radio1" checked><label>Radio1</label>
<input type="radio" name="radiogroup" value="Radio2"><label>Radio2</label>
<input type="radio" name="radiogroup" value="Radio3"><label>Radio3</label>
<input type="radio" name="radiogroup2" value="Radio4" checked><label>Radio4</label>

^^^

### 表單
總和各種互動元件
```html
<form action="submit.php">
	Name:</br>
		<input type="text" name="firstname" value="Mickey"><br>
	Gender:<br>
		<input type="radio" name="gender" value="male" checked><input>Male</input>
		<input type="radio" name="gender" value="female"><input>Female</input>
		<input type="radio" name="gender" value="others"><input>Others</input>
	<input type="submit" value="Submit">
</form>
```

<form>
	Name:</br>
		<input type="text" name="firstname" value="Mickey"><br>
	Gender:<br>
		<input type="radio" name="gender" value="male" checked><label>Male</label>
		<input type="radio" name="gender" value="female"><label>Female</label>
		<input type="radio" name="gender" value="others"><label>Others</label></br>
	<input type="submit" value="Submit">
</form>

^^^

### 表單的 Submit 行為 #1
```html
<form action="submit.php" method="get">
	<input type="text" name="name" value="ㄗㄑ">
	<input type="radio" name="vegetarian" value="true"><label>Vegetarian</label>
	<input type="radio" name="vegetarian" value="false" checked><label>Non Vegetarian</label>
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
### 非同步 JavaScript 與 XML
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
	type:"POST",
	dataType: "json"
})
```
* `url`: 要請求的網址
* `data`: 要送出的資料
	* `type` 如果是 `GET` 就會自動附加到網址後
* `type`: HTTP 請求類型 (ex. `GET`, `POST`, `PUT`)
* `dataType`: HTTP 回傳的資料格式，若不符合，即判斷為 error

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
$.post(url [,data][,success])
```

^^^

### `.serialize()`

```html
<form action="submit.php" method="get">
	<input type="text" name="name" value="ㄗㄑ">
	<input type="radio" name="vegetarian" value="true"><label>Vegetarian</label>
	<input type="radio" name="vegetarian" value="false" checked><label>Non Vegetarian</label>
</form>
```
```js
$('form').serialize()
// name=%E3%84%97%E3%84%91&vegetarian=false
```

---

## Practice #3
![](./assets/practice/practice-3.png)

^^^

運用所學的 jQuery 與 AJAX 知識，設計一個表單吧！

* 表單內容沒有限制
* 發送 GET 請求給 https://httpbin.org/get
	* 網站會自動把你的 request 用 JSON 格式包在 response 裡 
* 把回傳的 JSON Object 在頁面上稍加美化，並呈現出來
* 在收到回傳後顯示提示訊息，告訴使用者資訊已經成功交換
* 簡陋的範例 https://jsfiddle.net/bobby1030/qyootvuw/
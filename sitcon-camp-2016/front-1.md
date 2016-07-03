<!-- Page 1 -->

# SITCON Summer Camp
# 前端分流課程 #1
<br>
2016-08-03 By BobbyHo

<!-- // Page 1 -->

---

<!-- Page 2 -->
# Who Am I ?
* 何雨忻 BobbyHo
* 106 會考生 QAQ
* 魯宅國中生
* http://about.bobbyrealms.info
* angela.bobby@gmail.com

<!-- // Page 2 -->

---

<!-- Page 3-1 -->
# 風起雲湧的前端世界
<!-- // Page 3-1 -->

^^^

<!-- Page 3-2 -->
## 純 HTML 時代
寫出來的網頁什麼樣式都沒有，相當簡陋
<!-- // Page 3-2 -->

^^^

<!-- Page 3-3 -->
## CSS & JS
* CSS 的概念在 1994 年被提出
* JavaScript 在 1995 年面世

<!-- // Page 3-3 -->

^^^

<!-- Page 3-4 -->
## HTML + CSS + JS   
前端的三巨頭到齊，可以召喚神龍了(X
![神龍](./assets/神龍.gif)
<!-- // Page 3-4 -->

^^^

<!-- Page 3-5 -->
## 收個信還要一直 F5 很煩欸 (#`Д´)ﾉ
<!-- // Page 3-5 -->

^^^

<!-- Page 3-6 -->
## AJAX is here!
#### 應用情境
* Gmail
* 填表單
* ~~全自動掛機打掉別人的網站~~

<!-- // Page 3-6 -->

^^^

<!-- Page 3-7 -->
## JavaScript UI 框架
<img src="assets/JS_library_timeline.png" width="90%">
<!-- // Page 3-7 -->

^^^

<!-- Page 3-8 -->
## CSS 框架
<img src="assets/css_library_timeline.jpg" width="90%">
<!-- // Page 3-8 -->

^^^

## 學前端真的很可憐

---

<!-- Page 4 -->
# 進階 CSS
<!-- // Page 4 -->

---

<!-- Page 5 -->
## CSS 選擇器
<!-- // Page 5 -->

^^^

<!-- Page 5-1 -->
```
.class
#id
*   //所有元素
div   //所有 div 元素
div, p   //所有 div 及所有 p 元素
div > p   //直屬 div 的 p 元素（ p 為 div 的直屬子元素）
div p   //所有在 div 底下的 p 元素（不論是否直屬 div）
div + p   //與 div 相鄰的所有 p 元素
```

<!-- // Page 5-1 -->

^^^

<!-- Page 5-2 -->

## Example 1
選擇器： `.intro, p`

```
<div class="intro"> <!-- 選到了 -->
	<h1>I'm h1</h1>
	<div>
		<p>I'm p element</p> <!-- 選到了 -->
	</div>
	<p>I'm p element 2</p> <!-- 選到了 -->
</div>
<p>I'm p element 3</p> <!-- 選到了 -->

```

<!-- Page 5-2 -->

^^^

<!-- Page 5-3 -->

## Example 2
選擇器： `.intro > p`

```
<div class="intro"> <!-- 我"沒"被選到QAQ -->
	<h1>I'm h1</h1>
	<div>
		<p>I'm p element</p> <!-- 我"沒"被選到QAQ -->
	</div>
	<p>I'm p element 2</p> <!-- 選到了 -->
</div>
<p>I'm p element 3</p> <!-- 我"沒"被選到QAQ -->

```

<!-- Page 5-3 -->

^^^

<!-- Page 5-4 -->

## Example 3
選擇器： `.intro p`

```
<div class="intro"> <!-- 我"沒"被選到QAQ -->
	<h1>I'm h1</h1>
	<div>
		<p>I'm p element</p> <!-- 選到了 -->
	</div>
	<p>I'm p element 2</p> <!-- 選到了 -->
</div>
<p>I'm p element 3</p> <!-- 我"沒"被選到QAQ -->

```

<!-- Page 5-4 -->

^^^

<!-- Page 5-5 -->

## Example 4
選擇器： `.intro + p`

```
<div class="intro"> <!-- 我"沒"被選到QAQ -->
	<h1>I'm h1</h1>
	<div>
		<p>I'm p element</p> <!-- 我"沒"被選到QAQ -->
	</div>
	<p>I'm p element 2</p> <!-- 我"沒"被選到QAQ -->
</div>
<p>I'm p element 3</p> <!-- 選到了 -->

```

<!-- Page 5-5 -->

^^^

<!-- Page 5-6 -->

## CSS 優先級
> 規則越具體，優先度越高

<!-- Page 5-6 -->

^^^

<!-- Page 5-7 -->

```
<div class="intro">
	<div>
		<p>I'm p element 1</p>
	</div>
	<p>I'm p element 2</p>
</div>
```
```
.intro {
	background-color: white;
	color: black
}

.intro p {
	color: red
}

.intro div > p {
	color: blue
}

```
結果：
<div style="background: white;">
	<div>
		<p style="color: blue;">I'm p element 1</p>
	</div>
	<p style="color: red;">I'm p element 2</p>
</div>


<!-- Page 5-7 -->
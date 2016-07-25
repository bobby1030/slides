
# SITCON Summer Camp
# 前端分流課程 #1
<br>
2016-08-03 By BobbyHo


---

# Who Am I ?
* 何雨忻 BobbyHo
* 106 會考生 QAQ
* 魯宅國中生
* ReactJS 廚
* http://about.bobbyrealms.info
* https://github.com/bobby1030


---

# 風起雲湧的前端世界

^^^

## 純 HTML 時代
寫出來的網頁什麼樣式都沒有，相當簡陋

^^^

## CSS & JS
* CSS 的概念在 1994 年被提出
* JavaScript 在 1995 年面世


^^^

## HTML + CSS + JS   
前端的三巨頭到齊，可以召喚神龍了(X
![神龍](./assets/神龍.gif)

^^^

## 收個信還要一直 F5 很煩欸 (#`Д´)ﾉ
![F5](./assets/f5-crack.jpg)

^^^

## AJAX is here!
#### 應用情境
* Gmail
* 送出表單
* ~~全自動掛機打掉別人的網站~~


^^^

## JavaScript UI 框架
<img src="./assets/JS_library_timeline.png" width="90%">

^^^

## CSS 框架
<img src="./assets/css_library_timeline.jpg" width="90%">

^^^

## 學前端真的很可憐
◢▆▅▄▃崩╰(〒皿〒)╯潰▃▄▅▇◣

---

# 開發者的四次元口袋
![Doraemon Pocket](./assets/doraemon_pocket.jpg)

^^^

## JSFiddle
https://jsfiddle.net/
* 前端遊樂場
* 內建各種 JS Library
* 匯入外部資源
* 公開協作

^^^

## Gist (By GitHub)
https://gist.github.com/
![Gist](./assets/gist.png)   
片段程式碼共享、支援版本控制

^^^

## moqups
https://moqups.com/   
![moqups](./assets/moqups.png)   
建構網站雛形、記錄佈局靈感

^^^

## Mozilla Developer Network
https://developer.mozilla.org/
![mdn](./assets/mdn.jpg)   
網頁開發者的百科全書   
By developers, for developers.

^^^

## Google
https://www.google.com/
![Google](./assets/google.jpg)
The MOST Important Thing. 沒有之一


---

# 進階 CSS

---

## CSS 選擇器

^^^

```css
.class
#id
*   /* 所有元素 */
div   /* 所有 div 元素 */
div, p   /* 所有 div 及所有 p 元素 */
div > p   /* 直屬 div 的 p 元素（ p 為 div 的直屬子元素） */
div p   /* 所有在 div 底下的 p 元素（不論是否直屬 div） */
div + p   /* 所有與 div 相鄰 p 元素 */
div ~ p   /* 所有在 div 後，與 div 同級的 p 元素 */
```


^^^


## Example 1
選擇器： `.intro, p`

```html
<div class="intro"> <!-- 選到了 -->
	<h1>I'm h1</h1>
	<div>
		<p>I'm p element</p> <!-- 選到了 -->
	</div>
	<p>I'm p element 2</p> <!-- 選到了 -->
</div>
<p>I'm p element 3</p> <!-- 選到了 -->

```


^^^


## Example 2
選擇器： `.intro > p`

```html
<div class="intro"> <!-- 我"沒"被選到QAQ -->
	<h1>I'm h1</h1>
	<div>
		<p>I'm p element</p> <!-- 我"沒"被選到QAQ -->
	</div>
	<p>I'm p element 2</p> <!-- 選到了 -->
</div>
<p>I'm p element 3</p> <!-- 我"沒"被選到QAQ -->

```


^^^


## Example 3
選擇器： `.intro p`

```html
<div class="intro"> <!-- 我"沒"被選到QAQ -->
	<h1>I'm h1</h1>
	<div>
		<p>I'm p element</p> <!-- 選到了 -->
	</div>
	<p>I'm p element 2</p> <!-- 選到了 -->
</div>
<p>I'm p element 3</p> <!-- 我"沒"被選到QAQ -->

```

^^^

## Example 4
選擇器： `.intro + p`

```html
<div class="intro"> <!-- 我"沒"被選到QAQ -->
	<h1>I'm h1</h1>
	<div>
		<p>I'm p element</p> <!-- 我"沒"被選到QAQ -->
	</div>
	<p>I'm p element 2</p> <!-- 我"沒"被選到QAQ -->
</div>
<p>I'm p element 3</p> <!-- 選到了 -->
<p>I'm p element 4</p> <!-- 我"沒"被選到QAQ -->

```

^^^

## Example 5
選擇器： `.intro ~ p`

```html
<div class="intro"> <!-- 我"沒"被選到QAQ -->
	<h1>I'm h1</h1>
	<div>
		<p>I'm p element</p> <!-- 我"沒"被選到QAQ -->
	</div>
	<p>I'm p element 2</p> <!-- 我"沒"被選到QAQ -->
</div>
<p>I'm p element 3</p> <!-- 選到了 -->
<p>I'm p element 4</p> <!-- 選到了 -->
<p>I'm p element 5</p> <!-- 選到了 -->

```

^^^

## CSS Pseudo Classes
CSS 偽類別 - CSS 世界的奇技淫巧

^^^

```css
div p:nth-child(2)  /* 是 div 中的第二個子元素 且 必須為 p 元素 */
div p:nth-of-type(2) /* div 中的第二個 p 元素 */
div p:first-of-type /* div 中的第一個 p 元素 */
div :first-of-type /* div 中任何種類元素的第一個 */

div:hover /* 滑鼠懸浮在 div 上時 */
a:link  /* a 元素中，沒訪問過的連結 */
a:active  /* a 元素中，按下滑鼠到釋放滑鼠的期間 */
a:visited  /* a 元素中，訪問過的連結 */

input:focus /* 當輸入焦點在 input 元素上時 */
```

^^^

## CSS 優先級
> 規則越具體，優先度越高

^^^

```html
<div class="intro">
	<div>
		<p>I'm p element 1</p>
	</div>
	<p>I'm p element 2</p>
</div>
```
```css
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

^^^

## Practice #1
> CSS 選擇器   
> 吃點東西吧！   
> http://flukeout.github.io/

---

## CSS 數值與單位

^^^

### 長度單位

```css
px /* ≒ 1/96 inch */
pt /* ≒ 1/72 inch */
% /* 佔母元素的百分比 */
em /* 1em 為「1倍的母元素字體大小」*/
rem /* 1rem 為「1倍的 html 元素字體大小(預設16px)」 */
vw, vh /* 代表螢幕可視範圍的百分比 */
```

^^^

### 時間單位
* ms -- 毫秒
* s -- 秒

^^^

### 顏色
```css
rgb(r, g, b), rgba(r, g, b, alpha)
	/* 白色為 rgb(255,255,255) */
Hex
	/* 16進位 白色為 #FFFFFF 也可寫為 #FFF */
Transparent /* 透明 */
currentColor /* 引用 color 屬性的值 */
Keyword /* black, yellow, etc. */
```

實用工具：[MDN Color Picker](https://mdn.io/color_picker)


---

## CSS 屬性

---

## Size
```css
div {
	width: /* 元素寬度 */;
	height: /* 元素高度 */;
	max-width: /* 限制元素最大寬度 */;
	min-width: /* 限制元素最小寬度 */;
	max-height: /* 限制元素最大高度 */;
	min-height: /* 限制元素最小高度 */;
}
```

^^^

## What's Different 
```html
<div class="width">
	<p>我是 width: 500px</p> 
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quasi dicta sapiente, dolorum nisi aliquam amet impedit earum laborum consectetur sunt. Culpa aperiam 	ducimus itaque officiis iste dolores. Fugit, aperiam, labore.</p>
</div> 
<br>
<div class="max-width">
	<p>我是 max-width: 500px</p>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quasi dicta sapiente, dolorum nisi aliquam amet impedit earum laborum consectetur sunt. Culpa aperiam ducimus itaque officiis iste dolores. Fugit, aperiam, labore.</p>
</div> 
```
```css
.width {
  width: 500px;
}

.max-width {
  max-width: 500px;
}
```

JSFiddle：https://goo.gl/PGYXKA

^^^

在螢幕尺寸大於 500px 時，兩者沒有不同
![](./assets/css/width-min-width/01.png)

^^^

在螢幕尺寸小於 500px 時：   
![](./assets/css/width-min-width/02.png)   
`width: 500px` 堅守寬度為 500px！   
`max-width: 500px` 退縮了，寬度隨著螢幕變化   
（別忘了還有 min-width 可以讓它不要變太小 >_<）

---

## Color & Background
```css
div {
	color: /* 文字顏色 */;
	opacity: /* 不透明度，0完全透明 1完全不透明 */;
	
	background-color: /* 背景顏色（常搭配 div 做色塊） */;
	background-image: url("位置") /* 背景圖片 位置可以是相對或絕對 */;
	background-size: /* 背景圖片尺寸 */;
		/* 絕對寬、高 */
		/* 母元素百分比 */
		/* contain 按比例放大，但仍保持全圖可見 */
		/* cover 按比例放大，圖片滿足寬或高需求，可能會切圖 */
}
```

---

## Box Model

![Box Model](./assets/css/box-model/box-model.gif)

^^^

## Box Model 如何計算元素寬度？
```css
div {
	width: 200px;
	margin: 10px;
	padding: 20px;
	box-sizing: content-box; <!-- 我是預設值 -->
}
```
元素寬度 = 200 + 20 + 10 = 230 px

```css
div {
	width: 200px;
	margin: 10px;
	padding: 20px;
	box-sizing: border-box;
}
```
元素寬度 = 200px   
內容物寬度 = 200 - 10 - 20 = 170 px

---

## Border
```css
div {
	border: width style color;
	/*
	width -> 寬度
	style -> dotted, dashed, solid, double, etc.
	color -> 顏色
	*/
	border-radius: /* 半徑 */
	/* 圓角效果 */  
}
```

---

## Margin & Padding
```css
div {
	margin: 上 右 下 左;
	margin: 上 左右 下;
	margin: 上下 左右;
	margin: 四周;
	padding-top: 上;
	padding-right: 右;
	padding-bottom: 下;
	padding-left: 左;
}
```

---

## Position
```css
div {
  position: static; <!-- 我是預設值 -->
}
```
↑ static 下，如何排版交由瀏覽器決定

```css
div {
	position: relative;
}
```
↑ relative 一般來說表現會跟 static 一樣，   
但你可以加入一些屬性 ↓
```css
div {
	position: relative;
	top: 50px;
	left: -100px;
}
```
↑ 以預設位置為基礎，往下 50px，往左 100px

^^^

```css
div {
	position: fixed;
	bottom: 30px;
	right: 30px;
}
```
↑ fixed 以瀏覽器的視圖(viewport)來定位   
常用在頑固煩人的廣告、回頁首按鈕等等
```css
.parent > div {
	position: absolute;
	top: 30px;
	left: 30px;
}
```
↑ absolute 以母元素左上角為基準的相對位置   
此例：距左上方向右30px，並向下 30px

---

## Fonts & Text Decoration
```css
div {
	font-size: <!-- 字體大小 -->;
	font-weight: <!-- 字重 -->;
	font-family: 'Noto Sans CJK TC', sans-serif <!-- 字型 -->;
	line-height: <!-- 行高 -->;
	text-decoration: underline | line-through | none
		<!-- none 可以拿來消除預設樣式（連結的底線） -->
}
```

---

## Shadow
《格雷的五十道陰影》   
![](./assets/fifty-shades-of-grey.jpg)

^^^

```css
div {
	box-shadow: x軸位移 Y軸位移 [模糊半徑] 顏色;
	text-shadow: x軸位移 Y軸位移 [模糊半徑] 顏色;
}
```

^^^

不管多麼單調的東西，加上陰影就變漂亮了呢！   
｡:.ﾟヽ(*´∀`)ﾉﾟ.:｡

---

## Display

^^^

```css
div {
	display: none // 把元素藏起來，完全不要顯示，也不要保留空位;
	visibility: hidden // 把元素藏起來，但保留空位（可以想像成變透明）;
}
```

^^^
block, inline, inline-block
![Display block, inline, inline-block](./assets/css/display/block.png)

^^^

# 基礎 CSS 技能點完了！
## 是時候開始打副本了~

---

## CSS Advanced - transform

^^^

* 在 CSS Level 3 被提出
* 仍然在實驗中，尚未成為標準
	* 使用時務必參考相容性表格
	* 記得加上供應商前綴
		* -webkit-
		* -moz-
		* -ms-
* 用純 CSS 來解決平移、旋轉、縮放、傾斜的需求
	* No More Photoshop & Images!

^^^

### translate() & rotate()
```html
<p>Transformed element</p>
```
```css
p {
	transform: translate(100px, 100px) rotate(10deg);
			<!-- XY軸位移100px --> <!-- 順時鐘旋轉20度 -->
	
	transform-origin: 0 -250px;
			<!-- 旋轉軸心 -->
}
```
<p style="border: solid red; transform:translate(100px, 100px) rotate(10deg);color: black;background-color: white;">Transformed element</p>

^^^

### skew()
```html
<p class="transformed">bar</p>
```
```css
.transformed {
	transform: skew(10deg);
	/* 跟 skewX(10deg); 有一樣的效果 */
}
```
<p style="background-color: white;color: black;transform: skew(10deg);width: 60px;height: 60px;margin: 0 auto;">bar</p>

^^^

### scale()

![scale()](./assets/css/scale/scale.png)

^^^

### scale()
```html
<p>我沒被放大</p>
<p class="scale">我被放大了</p>
```

```css
.scale {
	transform: scale(1, 2)
	<!-- X放大1倍，Y放大3倍 -->
}
```
<p style="background-color: white;color: black;">我沒被放大</p>
<br>
<p style="background-color: white;color: black;transform: scale(1, 3);">我被放大了</p>

---

## CSS Advanced - Animation

^^^

### CSS 中的過渡效果
透明度   
![opacity](./assets/css/transition/opacity.gif)

^^^

### It's Simple
```html
<div class="transition"></div>
```

```css
div.transition {
	width: 100px;
	height: 100px;
	background: black;
	opacity: 0.1;
	transition: opacity 1s;
}
div.transition:hover {
	opacity: 1
}
```
<video src="./assets/css/transition/result.ogv" autoplay loop></video>   
https://jsfiddle.net/bobby1030/bsb71d1L/1/

^^^

width, height 等等屬性也都可以套用 transition 喔！
https://mdn.io/transition

---

## CSS Advanced - RWD
![RWD Intro](./assets/css/rwd/intro.jpg)

^^^

![RWD Meaning](./assets/css/rwd/detailed.jpg)

^^^

```css
@media not/only (裝置類型) and (media feature) and (media feature) and ... {
  /* 當符合查詢時套用的 CSS 規則 */
  div {
  	width: 100px;
  }
}
```

https://mdn.io/media_queries

^^^

### 常用 media feature

```css
min-width // 超過查詢中指定寬度
max-width // 未超過查詢中指定寬度
min-height // 超過查詢中指定高度
max-height // 未超過查詢中指定高度
orientation=portrait // 高度大於或等於寬度(例：手機直立)
orientation=landscape // 寬度大於高度(例：手機橫放)
```

^^^

### Example

```css
@media (max-width: 600px) {
  .sidebar {
    display: none;
  }
}
```

^^^

我在電腦上可以成功，但怎麽拿到手機上就爛掉了   
(#`Д´)ﾉ

^^^

### Viewport

```html
<head>
	<meta name="viewport" content="width=device-width">
</head>
```

瀏覽器渲染畫面時會以「裝置寬度」為根據   
「如果網頁沒有 RWD 就不需要也不建議加」

更多 Viewport 屬性：https://goo.gl/ZlklPW

---

## CONGRATULATIONS
恭喜各位鄉民探索完 CSS 的世界   
讓我們繼續往 JavaScript 的小宇宙前進吧   
｡:.ﾟヽ(*´∀`)ﾉﾟ.:｡

---

## Q&A

---

## Thanks For Listening
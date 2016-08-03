# SITCON Summer Camp
# 前端分流課程 #1
<br>
2016-08-03 By BobbyHo

---

# Live Chat
http://webchat.freenode.net/?channels=sitcon-camp-2016-front

---

# Who Am I ?
* 何雨忻 BobbyHo
* 106 會考生 QAQ
* 魯宅國中生
* ReactJS 廚
* http://about.bobbyrealms.info
* https://github.com/bobby1030


---

## 風起雲湧的前端世界
![Front-end](./assets/front-end.jpg)

^^^

## 純 HTML 時代
寫出來的網頁什麼樣式都沒有，相當簡陋

<div style="margin: 0 auto;width:50%;background: white;padding: 5px;color: black;">Hello World Lorem ipsum dolor sit amet, est laborum.</div>

^^^

## 可以稍微漂亮一點嗎？

^^^

## CSS 的誕生

* CSS 的概念在 1994 年被提出
* 早期設計師喜歡用 `table` 來做 Layout
	* 很醜很髒很亂
	* CSS 解決了大部分的排版問題
   
![Table Layout](./assets/css/table-layout.gif)

^^^

## ECMAScript
* 可以理解為 JavaScript 的標準化根基
* 1997 年被提出
* 最新正式版本是 ECMAScript 6 (2015)

^^^

## HTML + CSS + JS   
前端的三巨頭到齊，可以召喚神龍了(X
![神龍](./assets/神龍.gif)

^^^

## [瀏覽器大戰](https://zh.wikipedia.org/wiki/%E6%B5%8F%E8%A7%88%E5%99%A8%E5%A4%A7%E6%88%98)

*IE vs. Netscape*

* 這是 Web 出現最多新奇（詭異）功能的時期
* 增加新功能的優先度遠大於修 Bug
* 為了商業利益，使用專屬格式，不尊重公開標準
* IE 的勝出導致多數人屏棄公開標準
	* 創造許多噁心的標準
	* VBScript
	* ActiveX
	* DHTML
	* Silverlight

Note: 郵局 -> ActiveX

^^^

### 收個信、搶個票還要一直 F5 很煩欸 (#`Д´)ﾉ
![F5](./assets/f5-crack.jpg)

^^^

## AJAX is here!
### 由 M$ 跟 Google 最早採用此技術
* Gmail
* 送出表單
* ~~全自動掛機打掉別人的網站~~

^^^

<img src="./assets/JS_library_timeline.png" width="90%">
Note: Angular 後 -> 資料自動綁定 React -> 有些人喜歡，有些人不喜歡，因為 React 有一種潮味

^^^

<img src="./assets/css_library_timeline.jpg" width="90%">

^^^

## 學前端真的很可憐
◢▆▅▄▃崩╰(〒皿〒)╯潰▃▄▅▇◣

Note: 今年的書，明年可以當泡麵蓋

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
** Don't use w3school **

^^^

## Lorem Ipsum 假文產生器
需要廢文填版面嗎？
http://www.lipsum.com/feed/html
![lorem](./assets/lorem.png)

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
<div class="intro"> <!-- X -->
	<h1>I'm h1</h1>
	<div>
		<p>I'm p element</p> <!-- X -->
	</div>
	<p>I'm p element 2</p> <!-- 選到了 -->
</div>
<p>I'm p element 3</p> <!-- X -->

```


^^^


## Example 3
選擇器： `.intro p`

```html
<div class="intro"> <!-- X -->
	<h1>I'm h1</h1>
	<div>
		<p>I'm p element</p> <!-- 選到了 -->
	</div>
	<p>I'm p element 2</p> <!-- 選到了 -->
</div>
<p>I'm p element 3</p> <!-- X -->

```

^^^

## Example 4
選擇器： `.intro + p`

```html
<div class="intro"> <!-- X -->
	<h1>I'm h1</h1>
	<div>
		<p>I'm p element</p> <!-- X -->
	</div>
	<p>I'm p element 2</p> <!-- X -->
</div>
<p>I'm p element 3</p> <!-- 選到了 -->
<p>I'm p element 4</p> <!-- X -->

```

^^^

## Example 5
選擇器： `.intro ~ p`

```html
<div class="intro"> <!-- X -->
	<h1>I'm h1</h1>
	<div>
		<p>I'm p element</p> <!-- X -->
	</div>
	<p>I'm p element 2</p> <!-- X -->
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

|       |                      |
|:-----:|:--------------------:|
| `px`  | ≒ 1/96 inch          |
| `pt`  | ≒ 1/72 inch          |
| `%`   | 佔母元素的百分比         |
| `em`  | 母元素字體大小的倍率      |
| `rem` | `html` 元素字體大小的倍率 |
| `vw`  | 螢幕可視寬度的百分比      |
| `vh`  | 螢幕可視高度的百分比      |

^^^

### 時間單位

* `ms` -- 毫秒 
* `s` -- 秒  

^^^

### 顏色

|               |                       |
|:-------------:|:---------------------:|
|`rgb(r,g,b)`   | 三原色表示法             |
|`rgba(r,g,b,a)`| 透明度 `0`~`1`,`1`為不透明|
| `Hex`         | 16進位 白色為 `#FFFFFF`  |
| `Transparent` | 完全透明~~公開~~         |
| `currentColor`| 繼承 `color` 屬性的值    |
| `關鍵字`        |   black, yellow, etc. |

實用工具：[MDN Color Picker](https://mdn.io/color_picker)


---

## CSS 屬性

---

## Practice
![](./assets/practice/practice-2.png)   

^^^

我們將運用所學的 CSS，一步一步創作一張簡單的名片！

* 讓卡片寬度自動適應螢幕大小
* 運用 Transform 屬性
* 套用 Transition 效果，讓畫面更活潑一些
* 簡陋的範例 https://jsfiddle.net/bobby1030/ongb3hsu/

---

## Size

|              |              |
|:------------:|:------------:|
| `width`      | 元素寬度       |
| `height`     | 元素高度       |
| `max-width`  | 限制元素最大寬度 |
| `min-width`  | 限制元素最小寬度 |
| `max-height` | 限制元素最大高度 |
| `min-height` | 限制元素最小高度 |

^^^

## What's Different 
`max-width` & `width`
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

在螢幕尺寸大於 `500px` 時，兩者沒有不同
![](./assets/css/width-min-width/01.png)

^^^

在螢幕尺寸小於 `500px` 時：   
![](./assets/css/width-min-width/02.png)   
`width: 500px` 堅守寬度為 `500px`！   
`max-width: 500px` 退縮了，寬度隨著螢幕變化   
（別忘了還有 `min-width` 可以讓它不要變太小 >_<）

---

## Color & Background

|                                 |              |
|:-------------------------------:|:------------:|
| `color`                         | 文字顏色       |
| `opacity`                       | 不透明度，0~1  |
| `background-color`              | 背景顏色（常搭配 div 做色塊） |
| `background-image: url("")`  | 背景圖片 位置可以是相對或絕對 |
| `background-size`               | 背景圖片尺寸 |

^^^

|  background-size 選項   |     說明                |
|:----------------------:|:---------------------: |
| `x y`                  |`px`, `%`, etc.         |
| `contain`              | 按比例放大，但仍保持全圖可見  |
| `cover`                | 圖片滿足寬或高需求，可能會切圖|

---

## Box Model

![Box Model](./assets/css/box-model/box-model.gif)

^^^

## Box Model 如何計算元素寬度？
```css
div {
	width: 200px;
	padding: 20px;
	border: 5px;
	margin: 10px;
	box-sizing: content-box; <!-- 我是預設值 -->
}
```
元素寬度 = 200 + 20 + 5 + 10 = `235px`

```css
div {
	width: 200px;
	margin: 10px;
	border: 5px;
	padding: 20px;
	box-sizing: border-box;
}
```
元素寬度 = `200px`   
內容物寬度 = 200 - 10 - 5 - 20 = `170px`

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

## Border
```css
div {
	border: width style color;
	border-radius: /* 半徑 */
	/* 圓角效果 */  
}
```

|  border 選項 |     說明                             |
|:-----------:|:-----------------------------------:|
| `width`     | 寬度                                 |
| `style`     | dotted, dashed, solid, double, etc. |
| `color`     | 顏色                                 |

---

## Shadow
《格雷的五十道陰影》   
![](./assets/fifty-shades-of-grey.jpg)

^^^

|  shadow 陰影    |     說明                    |
|:--------------:|:--------------------------:|
| `box-shadow`   | x軸位移 Y軸位移 [模糊半徑] 顏色  |
| `text-shadow`  | x軸位移 Y軸位移 [模糊半徑] 顏色  |

^^^

不管多麼單調的東西，加上陰影就變漂亮了呢！   
｡:.ﾟヽ(*´∀`)ﾉﾟ.:｡

---

## Q&A

---

## Thanks For Listening
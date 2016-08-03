# SITCON Summer Camp
# 前端分流課程 #2
<br>
2016-08-04 By BobbyHo

---

# Live Chat
http://webchat.freenode.net/?channels=sitcon-camp-2016-front

---

## Display

^^^

![假的！](./assets/css/display/jiade.png)

^^^

### 把東西藏起來，阿彌陀佛

|                        |                                  |
|:----------------------:|:--------------------------------:|
| `display: none`        | 不要顯示、也不要保留空位               |
| `visibility: hidden`   | 不要顯示、但保留空位（可以想像成變透明）   |


^^^

### `display: block, inline, inline-block`
![Display block, inline, inline-block](./assets/css/display/block.png)

---

## Position
```css
div {
  position: static; <!-- 我是預設值 -->
}
```
↑ `static` 下，如何排版交由瀏覽器決定

```css
div {
	position: relative;
}
```
↑ `relative` 一般來說表現會跟 `static` 一樣，   
但你可以加入一些屬性 ↓
```css
div {
	position: relative;
	top: 50px;
	left: -100px;
}
```
↑ 以預設位置為基礎，往下 `50px`，往左 `100px`

^^^

```css
div {
	position: fixed;
	bottom: 30px;
	right: 30px;
}
```
↑ `fixed` 以瀏覽器的視圖(viewport)來定位   
常用在頑固煩人的廣告、回頁首按鈕等等
```css
.parent > div {
	position: absolute;
	top: 30px;
	left: 30px;
}
```
↑ `absolute` 以母元素左上角為基準的相對位置   
此例：由左上方向右`30px`，並向下 `30px`

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

## CSS Advanced - transform

^^^

* 在 CSS Level 3 被提出
* 仍然在實驗中，尚未正式成為標準
	* 使用時務必參考相容性表格
	* 記得加上供應商前綴
		* -webkit-
		* -moz-
		* -ms-
		* https://leaverou.github.io/prefixfree/
* 用純 CSS 來解決平移、旋轉、縮放、傾斜等等需求
	* No More Photoshop & Images!

^^^

### `translate()` & `rotate()`
```html
<p>Transformed element</p>
```
```css
p {
	transform: translate(100px, 100px) rotate(10deg);
			<!-- XY軸位移100px --> <!-- 順時鐘旋轉20度 -->
	
	transform-origin: 0 -250px;
			<!-- 變形基準點（此處等於旋轉軸心） -->
}
```
<p style="border: solid red; transform:translate(100px, 100px) rotate(10deg);color: black;background-color: white;">Transformed element</p>

^^^

### `skew()`
```html
<p class="skewed">bar</p>
```
```css
.skewed {
	transform: skew(10deg);
	/* 跟 skewX(10deg); 有一樣的效果 */
}
```
<p style="background-color: white;color: black;transform: skew(10deg);width: 60px;height: 60px;margin: 0 auto;">bar</p>

^^^

### `scale()`

![scale()](./assets/css/scale/scale.png)

^^^

### scale()
```html
<p>我沒被放大</p>
<p class="scaled">我被放大了</p>
```

```css
.scaled {
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
https://jsfiddle.net/bobby1030/bsb71d1L/

^^^

width, height 等等 相當多的屬性也都可以套用 transition 喔！
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

|                         |                             |
|:-----------------------:|:---------------------------:|
| `min-width`             | >指定寬度              |
| `max-width`             | ≤指定寬度            |
| `min-height`            | >指定高度              |
| `max-height`            | ≤指定高度            |
| `orientation=portrait ` | 高度≥寬度(例：手機直立)   |
| `orientation=landscape` | 寬度>高度(例：手機橫放)       |

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
	<meta name="viewport" content="width=device-width, initial-scale=1">
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
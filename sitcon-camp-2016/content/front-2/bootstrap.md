## Bootstrap 3 深入探究
不知道 v4 要 alpha 到什麼時候只好講 v3

---

## Grid System

^^^

### 基本結構
Container > Row > Column > 元素   
**前三個都是 div 套上 class**

^^^

### Container
包裹著要使用 Bootstrap 的所有元素
* `.container` 固定寬度
* `.container-fluid` 滿版（全寬度）
```html
<div class="container">
  ...
</div>
```

^^^

### Row
包裹著 Column，用來對 Column 橫向分組

```html
<div class="container">
	<div class="row">
		<!-- columns -->
	</div>
	<div class="row">
		<!-- columns -->
	</div>  
</div>
```

^^^

### Column
所有元素都應該放在 column 裡   
只有 column 能成為 row 的直系子元素

^^^

### 定義 Column 佔據的空間
Bootstrap 把網頁寬度切割成12等份   
利用 column 來定義元素要佔據多少等份

|    寬度     |  <768px  |  ≥768px  |  ≥992px  |  ≥1200px  |
|-----------:|:--------:|:--------:|:--------:|:---------:|
|Class prefix|`.col-xs-`|`.col-sm-`|`.col-md-`|`.col-lg-` |
|# of columns|    12    |    12    |    12    |     12    |
|  Nestable  |   Yes    |   Yes    |   Yes    |    Yes    |

^^^

```html
<div class="container">
	<div class="row">
		<div class="col-md-6"></div>
		<div class="col-md-6"></div>
	</div>
	<div class="row">
		<div class="col-xs-12"></div>
		<div class="col-xs-12"></div>
		<div class="col-xs-12"></div>
	</div>
	<div class="row">
		<div class="col-sm-8"></div>
		<div class="col-sm-4"></div>
	</div>
</div>
```

^^^

### Responsive utilities
`.hidden`
骯髒但是好用

```html
<div class="container">
	<div class="row">
		<div class="col-md-6 col-sm-12 hidden-xs">Non Essential</div>
		<div class="col-md-6 col-sm-12">I'm Essential</div>
	</div>
</div>
```

^^^

### Text Alignment Classes

![](./assets/css_framework/bootstrap_textalignment.png)

```html
<p class="text-left">Left aligned text.</p>
<p class="text-center">Center aligned text.</p>
<p class="text-right">Right aligned text.</p>
<p class="text-justify">Justified text.</p>
<p class="text-nowrap">No wrap text.</p>
```

^^^

### Components

|           |              |
|:---------:|:------------:|
| Dropdowns | 下拉選單       |
| Buttons   | 按鈕          |
| Navbar    | 導航選單       |
| Label     | 標籤          |
| Badges    |   未讀計數     |
| Jumbotron | HUUUGE入口界面 |
| Thumbnail |    圖片卡片    |
| Alert     |    警告訊息    |
|ProgressBar|    進度條     |
| Panels    |     區段      |

---

## Practice #4
### 排版練習

^^^

利用 Bootstrap 等框架，製作一個部落格頁面吧！

* 內容可用靜態資料，也可以用 AJAX 存取遠端內容
* 一個部落格通常具有的元素
	* 頂部導航爛
	* 文章區塊 
		* 回應欄
	* 側邊欄
		* 社群網站連結
		* 最新、熱門文章
	* 頁腳
		* 版權資訊
		* Email 訂閱文章

最最最重要的，一定要支援 RWD 喔！

---

## Q&A

---

## Thanks For Listening
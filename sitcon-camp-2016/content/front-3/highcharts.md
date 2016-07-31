## HighCharts 深入介紹
~~讓你嗨翻的圖表框架~~

^^^

![](./assets/dv/warm-water.jpg)

一定要配 Sample Code   
https://goo.gl/b5cHVQ

---

### Initialize

^^^

```js
$("DOM Element").highcharts({
	// configs here
})
```

^^^

### Configs

```js
$('#column').highcharts({
    // 在 ID 為 column 的元素上畫圖表
    title: {
        text: '國家粗死亡率'// 標題
    },
    chart: {
        // 圖表選項
    },
    xAxis: {
        // X軸相關設定
    },
    series: [
		// 資料
    ]
})
```

^^^

### Chart Configs

```js
$('#column').highcharts({
	chart: {
        type: 'column', // 類型：直條圖
        type: 'line', // 類型：線圖
        type: 'pie', // 類型：派圖
        zoomType: 'x', // 縮放模式：僅X軸
        zoomType: 'y', // 縮放模式：僅Y軸
        zoomType: 'xy', // 縮放模式：XY軸
    },
})
```

^^^

### xAsis Configs

```js
$('#column').highcharts({
	xAsis: {
		/* catagory */
		type: 'category', // 類型：類別
        categories: ['2011年', '2012年', '2013年'], // X軸類別清單

        /* datetime */
		type: 'datetime',
	},
})
```

^^^

### Data Series

```js
$('#column').highcharts({
	series: [{ // 資料系列
        name: '台灣', // 欄位名稱
        data: [6.6, 6.6, 6.7] // 資料
    }, {
        name: '日本',
        data: [9.9, 10.0, 10.1]
    }, {
        name: '南非',
        data: [11.3, 11.0, 10.7]
    }]
})
```

注意！ ** `name` 屬性不等於 X 軸的項目！**   
X 軸項目名稱可以在 `xAsis` 或 `data` 的第一個欄位指定

^^^

### Data Situation #1 (Most Common)

```js
data: [0, 5, 3, 5]
```
這些值會被視為 y 值   
每個 array element 會分別對應到一個 X 軸項目 

^^^

### Data Situation #2

```js
data: [
    [Date.UTC(2013, 1, 1), 6], 
    [Date.UTC(2014, 1, 1), 2], 
    [Date.UTC(2015, 1, 1), 5]
]
```

在此例中，日期時間會被視為 X 值，另一個視為 Y 值

^^^

`HighCharts.setOptions`   
為每個圖表套用共同的 config

```js
Highcharts.setOptions({
    // 為全部圖表設定選項
    credits: false // 關閉所有圖表右下方的版權訊息
});
```

---

## Data Update
Not Windows Update   
不用等到天荒地老   
![Windows Update](./assets/dv/update-meme.jpg)

^^^

### Method #1
1. 更改資料集中的資料
2. 取得圖表的 DOM
3. 強制重繪圖表
	* （無比較資料新舊差別，故沒有動畫）

^^^

### Method #2
1. 取得圖表的 DOM
2. 取得圖表中的資料數值
3. 用 `update` 方法直接更新圖表 DOM 的數值
	* （會比較新舊資料差別，有動畫）

---

## Practice #5

* 試著用 HighCharts 搭配任何統計數字，畫出任何形式的圖表吧！
    * 推薦資料來源：http://data.taipei/
        * 捷運進出站 http://goo.gl/FoZyP4
* 或者你也可以選擇用自己的方式，將數據漂亮的呈現出來！
#set text(lang: "ja") // 言語を日本語に設定
#set text(font: ("Harano Aji Mincho","New Computer Modern"),size: 10pt,) // フォントを設定
#set table(inset: 7pt) // 表の余白を設定
// 表のキャプションを上部に表示するよう設定
#show figure.where(
  kind: table
): set figure.caption(position: top)

// 見出しの設定
#show heading: set text(font: ("Harano Aji Gothic"),weight:500 )
#set heading(numbering: "1.1.")


#align(center)[
    #v(200pt)
    #text(
        size: 18pt,
    )[
        タイトル
    ]
    #v(10pt)
    #text(
        size: 12pt,
    )[
        氏名 \
        所属1 \
        所属2 \
        学籍番号 0000000 \
        \
        #datetime.today().display("[year]年[month]月[day]日")
    ]
]
#pagebreak()
#set page(numbering: "1/1")
#counter(page).update(1)


= 図

#figure(
    image("./apple.jpg",width: 50%),
    caption: "リンゴの画像",
)<apple>

@apple はリンゴの画像です。

= 表

#figure(
  table(
    columns: 3,
    [これは],[テーブル],[です],
    [これは],[テーブル],[です],
    [これは],[テーブル],[です],
  ),
  caption: "テーブル",
)<table>

@table はテーブルです。

= リンク
\
#link("https://oucrc.net")[岡山大学電子計算機研究会: OUCRC]

#link("https://oucrc.net")


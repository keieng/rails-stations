# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
require "time"

for row in "a".."c"
  for num in 1..5
    Sheet.create({
      column: num,
      row: row,
    })
  end
end

movies = Movie.create([{
  name: "Pekora Ch. 兎田ぺこら",
  year: "2022",
  description: "こんぺこ！こんぺこ！こんぺこー！
  ホロライブ3期生の兎田ぺこら（Usada Pekora)ぺこ👯‍♀️

  ⋈ ---------------------------------------------------------------------------- ⋈

  🥕 Twitter 🥕
  https://twitter.com/usadapekora

  🥕 youtube 🥕
  https://www.youtube.com/channel/UC1DC...

  🥕 ハッシュタグ 🥕
  イラスト：#ぺこらーと
  生放送関連：#ぺこらいぶ
  ファンネーム：#野うさぎ同盟

  ⋈ ---------------------------------------------------------------------------- ⋈

  🥕 ぺこらへのお手紙はこちら 🥕

  〒173-0003
  東京都板橋区加賀1丁目6番1号
  ネットデポ新板橋
  カバー株式会社 ホロライブ プレゼント係分
  兎田ぺこら宛まで

  ∇（プレゼントするときのお約束）∇
  ※ https://www.hololive.tv/contact
  ",
  image_url: "https://yt3.ggpht.com/ytc/AMLnZu9QrCPT5A0zE49EHvoS_gs2XBxzXSLs_OkIoTawkw=s900-c-k-c0x00ffffff-no-rj",
  is_showing: true,
},
                       {
  name: "【ド初見】ポケットモンスター スカーレットやる…！【ポケモンSV】",
  year: "2022",
  description: "Play Game : ポケットモンスター スカーレット ( switch )
    タグ #生神もんざえもん​​​​​​​​​​​

    -------------------------------------------

    ころねTwitter▶https://twitter.com/inugamikorone

    -------------------------------------------

    ころモンTシャツ発売中！
    → https://booth.pm/ja/items/1908655

    -------------------------------------------

    ころねオリジナル曲、配信中☆
    → https://korone.streamlink.to/WANDERFUL

    -------------------------------------------

    サムネ：タクミンDX(@ takumi_ha_DX）様
    ありがとうございます！

    -------------------------------------------

    この放送は株式会社ドワンゴの実施するニコニコ生放送の出張版放送として配信しております。
    ",
  image_url: "http://img.youtube.com/vi/J6j6Tt1BXDw/mqdefault.jpg",
  is_showing: true,
},
                       {
  name: "兎田ぺこら👯‍♀️ポケモン本日13時から!!",
  year: "2022",
  description: "ホロライブ所属のうさ耳ぺこぺこ娘、兎田ぺこらぺこ！ 🎀#野うさぎ同盟 ▶️#ぺこらいぶ 🎨#ぺこらーと ✂️#ひとくちぺこら 🥕はぐれマッマ（
    @yuukihagure
    ）
    ",
  image_url: "https://pbs.twimg.com/profile_images/1556588504263819265/nrcFZpjV_400x400.jpg",
  is_showing: true,
},
                       {
  name: "🎶🥕⚔️ララララビット！！⚔️🥕🎶",
  year: "2022",
  description: "3rdオリジナルソング

    🎶🥕⚔️ララララビット！！⚔️🥕🎶

    たった今！配信開始ぺこです🐰❣️
    https://cover.lnk.to/RaRaRaRabbit",
  image_url: "https://pbs.twimg.com/media/FX4KIOYakAAgEmM?format=jpg&name=small",
  is_showing: true,
},
                       {
  name: "映画5",
  year: "2022",
  description: "説明",
  image_url: "http://img.youtube.com/vi/WE8sLu5JKhg/mqdefault.jpg",
  is_showing: false,
},
                       {
  name: "映画6",
  year: "2022",
  description: "説明",
  image_url: "http://img.youtube.com/vi/WxtGSwSG-G0/mqdefault.jpg",
  is_showing: false,
},
                       {
  name: "映画7",
  year: "2022",
  description: "説明",
  image_url: "http://img.youtube.com/vi/vZIUf98Q_Lk/mqdefault.jpg",
  is_showing: false,
},
                       {
  name: "映画8",
  year: "2022",
  description: "説明",
  image_url: "http://img.youtube.com/vi/Qcjfxzpl3qI/mqdefault.jpg",
  is_showing: false,
},
                       {
  name: "映画9",
  year: "2022",
  description: "説明",
  image_url: "http://img.youtube.com/vi/s6s-kQhZtrY/mqdefault.jpg",
  is_showing: false,
}])

st = Time.parse("21:00")
et = Time.parse("22:00")
5.times do |n|
  schedules = Schedule.create([
    {
      movie_id: 1,
      start_time: st,
      end_time: et,
    },
  ])
end

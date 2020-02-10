class HomeController < ApplicationController
  def top
    quote = [
      "『マラソンという競技は努力を積み重ねていけば何とかなる。努力によってマラソンを極めたいんです。』（藤田敦史：男子マラソン元日本記録保持者）",
      "『スタートの時点で、本当は結果がほとんどわかるんです』（有森裕子さん：バルセロナ五輪銀メダル)",
      "『努力は裏切らない。走った距離もそうですけど、毎日の積み重ねがすごくものを言う。』（野口みずきさん：アテネ五輪金メダル）",
      "『マラソンというのは自信で走るものだから、やっていないと、どうしても怖くなってしまう。その不安を取り除くのはやはり練習しかない。』（瀬古利彦さん：元陸上競技選手）",
      "『努力の成果なんて目には見えない。しかし、紙一重の薄さも重なれば本の厚さになる。』（君原健二さん：陸上競技選手）",
      "『出来るときに、出来ることを、出来る範囲で、出来るだけやる』（有森裕子さん)",
      "『他人を超えるには自分独自のやり方、考え方を実行しなければならない』（小出義雄さん）",
      "『走り始めるには動機づけが必要だが、走り続けるには習慣が必要だ。』（ジム・ライアン：アメリカ合衆国の陸上競技選手）",
      "『いままでに、いったいどれだけ走ったか。残すはたった４２キロ』（高橋尚子さん）",
      "『今日できないものは明日もできない。いつもそう思って毎日を大切にしていきたい』（三宅宏実：重量挙げのロンドン五輪銀メダリスト）",
      "『弱い自分を受け入れると、強い自分が生まれる。この世界はパラドックスだ』（元総合格闘家：須藤元気）",
      "『どんな誤ちも犯さない人は何事も成さない人』（水泳選手：マイケル・フェルプス）",
      "『意識を繰り返し、繰り返し、繰り返しやっていくと、それは反射になる』（柔道選手：野村忠宏）",
      "『今あれこれ考えるよりそのちょっとの間に腹筋とか何かをしたほうが良い』（マラソン選手：高橋尚子）",
      "『何も犠牲にしてません。何かを犠牲にしてたら続けることなんて無理です！ただ泳ぐのが好きだからできただけです』（水泳選手：北島康介）",
      "『ムダが必要だと思うんだ。いろいろ練習をして、自分の体に合ったものを見つける。』（競輪選手：中野浩一）",
      "『成功とは、自分の達成度だ。 他人を気にする必要はまったくない。』（水泳選手：イアン・ソープ）",
      "『反省することは反省する。でも一度寝たら忘れる。』（野球選手：古田敦也）",
      "『私、誰よりも練習してるよ。他の子がみんな帰っても、ひとりで練習してるよ。』（卓球選手：福原愛）",
      "『他人は失ったものに目を向けますが、僕は得たのものに目を向けます。』（野球：桑田真澄）",
      "『練習場に何をしに来たのか！を自分に問いかけながら練習に取り組む』（レスリング：吉田沙保里）",
      "『自分にコントロールできないことは、いっさい考えない。考えても仕方ないことだから。自分にできることだけに集中するだけです。』(野球：松井秀喜)",
      "『もっと上に行こう、という欲を失ったら終わり。努力とか根性とかよりも欲ですよ』（競馬：武豊）",
      "『試合に“負けた”ことは一度も無い。ただ時間が足りなくなっただけだ。』（バスケットボール選手：マイケル・ジョーダン）",
      "『カッコ悪くても、勝つことが一番大事』（テニス選手：錦織圭）",
      "『普段から、自分がガッツポーズして喜んでいる姿とかをイメージしている。』（水泳：北嶋康介）",
      "『「 勝つ意欲」はたいして重要ではない。そんなものは誰もが持ち合わせている。重要なのは勝つために準備する意欲である。』（バスケットボール：ボビー・ナイト）",
      "『勝ったメダルよりも負けたメダルのほうがアスリートとして大きく成長していける』（清水宏保：スピードスケート 長野五輪金メダリスト)",
      "『特待生には絶対に負けたくないと思った』（サッカー：今野泰幸）",
      "『不可能とは、現状に甘んじる言い訳にすぎない』（ボクシング：モハメド・アリ）",
      "『決して諦めない者を打ち負かすのは困難です』（野球：ベーブ・ルース）",
      "『サッカーが簡単だったことは一度もない。』（サッカー：ジネディーヌ・ジダン）",
      "『志の低い人間は、それよりさらに低い実績しかあげられない』（野球：落合博満）",
      "『新しい本田をゼロから作る。挑戦を続ける。限界をつくらずに常に前進していく。』（サッカー：本田圭祐）",
      "『ちょっとでもチャンスをつかんだと思ったら、少々無理をしても思いきっていくことだ。そうしないと、チャンスはものにできない。完璧なチャンスなんてないんだから。』（ボクシング：輪島巧一）",
      "『練習を楽しみ、技の開発を楽しみ、試合を楽しむ。この三つは同じくらい大切なことです。』（体操：塚原光男）",
      "『基本である１、２、３をきちんと練習しないで、いきなり４とか５をやるな』（プロレス：ジャイアント馬場）",
      "『自信は伝染する。そして自信のなさも伝染する。』（アメフト：ヴィンス・ロンバルディ）",
      "『 天才は有限 努力は無限』（陸上：中村清）",
      "『俺はハードに練習してるぜ。お前らが休んでいるとき、俺は練習している。お前らが寝ているとき、俺は練習している。お前らが練習しているときは、当然俺も練習している。』（ボクシング：フロイド・メイウェザー・ジュニア）",
      "『平凡な人生こそ真の人生だ。実際、虚飾や特異から遠く離れたところのみ真実があるからだ』（テニス：ロジャー・フェデラー）",
      "『自分の目指すところを変えないでやること。すごい人たちがゴロゴロいるなかで、そこが強い人が勝つんじゃないですかね。』（ゴルフ：石川遼）",
      "『誰もの心に、何かに向かって燃える火があります。それを見つけ、燃やし続けることが、私たちの人生の目的なのです。』（体操：メアリー・ルー・レットン）",
      "『 人に負けるな。どんな仕事をしても勝て。しかし、堂々とだ‥』(野球：沢村栄治）",
      "『迷ったら前へ。苦しかったら前に。つらかったら前に後悔するのはそのあと、そのずっと後でいい』（野球：星野仙一）",
      "『敵と戦う時間は短い。自分との戦いこそが明暗を分ける』（野球：王貞治）",
      "『朝起きて歯を磨くように、走ることも日常的にしないとダメだ』（中島進さん：日本のマラソン指導者）",
      "『夢は近づくと目標に変わる』 （野球：イチロー）",
      "『チャンスが少ない時代だからこそ少ないチャンスを生かしてもらいたい』（野球：野茂英雄）",
      "『 勝負に強いか弱いかは、執念の差である』（野球：川上哲二）",
      "『今できないからって、それを「しょうがない」と思ったら進歩はない』（野球：城島健司）",
      "『僕の知っているドーピングはただ１つ、努力だ。』（サッカー：ロベルトバッジョ）",
      "『ゴールに向かってシュート練習をするのは、歯磨きをするぐらい義務的なことだ。』（サッカー：ジーコ）",
      "『才能があっても、トレーニングの積み重ねが必要なことに変わりはない。』（サッカー：ペップ・グアルディオラ）",
      "『私が勝者なのは、過去をすぐに忘れ、常に未来を考えるからだ。勝つためには、常に強力なモチベーションを持ち続けることが不可欠だ。』（サッカー：ジョゼ・モウリーニョ）",
      "『皆さんもジダンを忘れる日が来るでしょう。その時こそ、また素晴らしいサッカーの歴史が始まる。』（サッカー：ジネディーヌ・ジダン）",
      "『勝つことが好きだということよりも負けることが嫌いだ。』（テニス：ジミー・コナーズ）",
      "『自分で見つけないと。誰も君のために見つけてはくれない。』（テニス：ビョルン・ボルグ）",
      "『負けたら傷つく、でも一生懸命戦ったなら自分自身にいい気分でいられるよ。』（テニス：イワン・レンドル）",
      "『僕の１番の強みは弱点がないことさ。』（テニス：ジョン・マッケンロー）",
      "『横綱になるのは難しいが、務めるのはそれ以上に大変だった』（相撲：曙太郎）",
      "『 期待してくれる人がいる限り戦い続けます。』（柔道：谷亮子）",
      "『何事も初めからうまく行くことは少ないのだ。』（柔道：嘉納治五郎）",
      "『もちろん勝ちにはこだわるけれど、自分らしい柔道ができなければ意味がない。』（柔道：井上康生）",
      "『弱いから負けた。それだけです』（柔道：篠原信一）",
      "『ものをやり遂げるには我慢がいる。耐えがたい痛みでも、耐えねばならないこともある。』（柔道 ：神永昭夫）",
      "『 他人がどう思うか、何をしているかなんて関係ない。とにかく、まずは自分が楽しみながらやるしかないからね。』（サーファー：アンディ・アイアンズ）",
      "『結局は死ぬも生きるも波に乗るのも自分次第』（サーファー：マーク・フー）",
      "『トロフィーより努力自体にこそ意味がある』（サーファー：ロブ･マチャド）",
      "『すべてを味わう。それが人生で最も大切なこと。一度きりなんだから、短い人生、楽しく生きなきゃ。』（サーファー：ジェイ・モリアリティ）",
      "『全てが報われる時がある。なぜならその瞬間のために備えているからだ』（バスケットボール：ステフィン・カリー）",
      "『人が本当に負けるのは他人を責めた時だ』（バスケット：ジョン・ウドゥン）",
      "『俺が俺とコンフリクトした』（プロサーファー：成田玄）",
      "『僕の動きはどれも一流選手から盗んだものばかりさ。僕は報いたいんだ、動きを教えてくれた先人たちにね。すべては試合のためさ。試合は僕自身よりずっと大事なんだ』（バスケット：コービー・ブライアント）",
      "『自力による個人アプリの製作こそ、一番の復習』（慶應義塾大学卒：薄田晋）"]
    @selif = quote.sample
  end

 def new
  @balancesheet = Balancesheet.new
  @data = [['2019-06-01', 77.round(1)], ['2019-06-02', 73], ['2019-06-03', 70], ['2019-06-04', 68]]
  @profiles = Profile.all
  @balancesheets = Balancesheet.all
 end

 def create
  Balancesheet.create!(balancesheet_params)
  redirect_to root_path
end

private
def balancesheet_params
  params.permit(:time, :ingredient, :protein, :carbo, :fat).merge(user_id: current_user.id)
end

end

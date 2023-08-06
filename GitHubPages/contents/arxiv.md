# TIL &colon; arxiv



## Astrophysics &gt; Instrumentation

### [Astrophysics &gt; Instrumentation and Methods for Astrophysics<br>[2012.05618] A Proper Discretization of Hydrodynamic Equations in the Cylindrical Coordinates for Astrophysical Simulations](https://arxiv.org/abs/2012.05618)

&blacksquare; Abstract の和訳

> 円筒座標は、特に中心物体に降着するガス流を考慮する場合に、計算流体力学でよく使用される。</br>
> 円筒座標は、回転を記述する上でいくつかの利点があるが、座標原点 (z軸) の軸に沿って見かけ上の特異点がある。</br>
> この特異性は数値シミュレーションに困難をもたらす。</br>
> まず、z軸を横切る流れを再現することが難しい。</br>
> 第二に、z軸近傍のCFL条件では、与えられた角度分解能に対して方位角方向の数値セルが狭く、時間ステップが極端に短くなる。</br>
> ここでは、これらの困難を克服するための新しい離散化スキームを提案する。</br>
> 提案スキームでは、各セル表面を横切る流束を評価するとき、セル内の単位ベクトルの方向の変化を考慮する。</br>
> さらに、方位角セル表面に働く熱圧と動圧から、運動量方程式の動径成分のソース項を評価する。
> 提案スキームは、均一な密度、圧力、速度を持つ流れが離散化された方程式の厳密解となるよう、自由流保存するように設計されている。</br>
> これらの改善は、最も内側の領域で低い角度分解能を使用し、それによって各時間ステップを延長するために不可欠である。
> この例では、軸の周りの最も内側の円形領域が6つの数値セルだけで解決できることを示す。</br>
> Sod衝撃波管と回転流出試験に加えて,円盤に囲まれた降着コンパクト星への応用を示した。



## Computer Science &gt; Machine Learning

### [Computer Science &gt; Machine Learning<br>[1906.10742] Machine Learning Testing: Survey, Landscapes and Horizons](https://arxiv.org/abs/1906.10742)

&blacksquare; Abstract の和訳

> 本論文は機械学習テスト (MLテスト) 研究の包括的な調査を提供する。
> プロパティのテスト(例えば、正確性、頑健性、公平性)、コンポーネントのテスト(例えば、データ、学習プログラム、フレームワーク)、ワークフローのテスト(例えば、テスト生成とテスト評価)、アプリケーションシナリオ(例:自動運転、機械翻訳)に関する144の論文をカバーしている。
> また、データセット、研究動向、研究の焦点に関する傾向を分析し、MLテストにおける研究課題と有望な研究方向で締めくくっている。

&blacksquare; 出典 Tweet

<blockquote class="twitter-tweet"><p lang="ja" dir="ltr">機械学習のテスト手法について調査したサーベイペーパー。全37ページ、引用論文292件の超大作。テストの方法、テストの対象、アプリケーションなどの観点から既存手法・文献を紹介。基礎についても細かく書かれているので教科書的にも読める。オススメ。<a href="https://t.co/xBSkKPvwZA">https://t.co/xBSkKPvwZA</a> <a href="https://t.co/xRJOoW2Hsf">pic.twitter.com/xRJOoW2Hsf</a></p>&mdash; ステート・オブ・AI ガイド (@stateofai_ja) <a href="https://twitter.com/stateofai_ja/status/1350966113501380611?ref_src=twsrc%5Etfw">January 18, 2021</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>



### [Computer Science &gt; Machine Learning<br>[2006.08762] Learning Incompressible Fluid Dynamics from Scratch -- Towards Fast, Differentiable Fluid Models that Generalize](https://arxiv.org/abs/2006.08762)

&blacksquare; Abstract の和訳

> 高速で安定した流体シミュレーションは、研究開発におけるコンピュータ生成画像からコンピュータ支援設計に至るまでの応用に不可欠な前提条件である。<br>
> しかし、非圧縮性流体の偏微分方程式を解くことは困難な作業であり、従来の数値近似スキームは高い計算コストを要する。
> 最近のディープラーニングベースのアプローチは、大幅な高速化を約束するが、新しい流体領域への汎用性がなく、学習に流体シミュレーションデータを必要とし、流体シミュレーションの主要部分を従来の方法に委託する複雑なパイプラインに依存したりする。<br>
> 本研究では、新しい流体領域に一般化し、流体シミュレーションデータを必要とせず、畳み込みニューラルネットワークが単一の順方向パスで時間tから時間t+dtの次の状態に流体状態をマップすることを可能にする、新しい物理制約学習アプローチを提案する。<br>
> これにより、ニューラル流体モデルの学習と評価のパイプラインが簡素化される。<br>
> 学習後、フレームワークは高速な流体シミュレーションが可能で、マグナス効果やカルマン渦列を含むさまざまな流体現象を処理できるモデルを生成する。<br>
> 訓練したモデルの速度と一般化能力を示すための対話型リアルタイムデモを提示した。<br>
> さらに、訓練されたニューラルネットワークは、時間内に流体シミュレーションを進めるための微分可能な更新ステップを提供するため、効率的な微分可能な流体ソルバーである。<br>
> この事実を概念実証最適制御実験に利用する。<br>
このモデルは、計算速度と精度の点で、最近の微分可能な流体ソルバーを大幅に上回っている。

&blacksquare; [Official Code @ GitHub](https://github.com/wandeln/Unsupervised_Deep_Learning_of_Incompressible_Fluid_Dynamics)



### [Computer Science &gt; Machine Learning<br>[2010.03409] Learning Mesh-Based Simulation with Graph Networks](https://arxiv.org/abs/2010.03409)

&blacksquare; Abstract の和訳

> メッシュベースのシミュレーションは、科学と工学の多くの分野において、複雑な物理系のモデリングの中心となっている。<br>
> メッシュ表現は強力な数値積分法をサポートし、その解像度は精度と効率の間で有利なトレードオフを取るように適合させることができる。<br>
> しかし、高次元の科学シミュレーションは実行コストが非常に高く、ソルバーやパラメータは研究する系ごとに個別に調整しなければならないことが多い。<br>
> ここでは、グラフ・ニューラル・ネットワークを用いてメッシュベースのシミュレーションを学習するフレームワーク、MeshGraphNetsを紹介する。<br>
このモデルは、メッシュグラフ上でメッセージの受け渡しを行い、前方シミュレーション中にメッシュの離散化を適応させるように学習させることができる。<br>
> その結果、航空力学、構造力学、布を含む幅広い物理システムのダイナミクスを正確に予測できることが示された。<br>
> このモデルの適応性は、解像度に依存しないダイナミクスの学習をサポートし、テスト時に、より複雑な状態空間への拡張を可能とする。<br>
> また、我々の手法は非常に効率的であり、学習対象のシミュレーションよりも1～2桁高速に動作する。<br>
> 我々のアプローチは、ニューラルネットワークシミュレータが動作可能な問題の範囲を広げ、複雑な科学的モデリングタスクの効率化を約束する。

&blacksquare; [Official Code @ GitHub](https://github.com/deepmind/deepmind-research/tree/master/meshgraphnets)

&blacksquare; 出典 Tweet

<blockquote class="twitter-tweet"><p lang="ja" dir="ltr"><a href="https://t.co/gMgMeOQhZT">https://t.co/gMgMeOQhZT</a><br>メッシュをグラフと見做して２つの物体のグラフ間を繋ぎ、物体間(布と球、空気と空中翼)の接触や衝突を計算することができるMeshGraphNetsを提案。メッシュ空間上では遠いが実距離が違い部分をエッジで繋ぐことが技術のキモ。従来のシミュレーションより1,2桁高速に計算可能。 <a href="https://t.co/If9U6QY1Ia">pic.twitter.com/If9U6QY1Ia</a></p>&mdash; akira (@AkiraTOSEI) <a href="https://twitter.com/AkiraTOSEI/status/1351476998238040064?ref_src=twsrc%5Etfw">January 19, 2021</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

&blacksquare; 出典 Tweet

<blockquote class="twitter-tweet"><p lang="ja" dir="ltr">メッシュベースのGNNを使って布や流体モデルのシミュレーションを実現する。別のGNNが出力するSizing Fieldにしたがってメッシュに変換され、モデル化が難しい領域は自動的に細かくする。既存シミュレーターに比べ同精度で数十倍から数百倍近く高速。<a href="https://t.co/tMDuH2cgnQ">https://t.co/tMDuH2cgnQ</a> <a href="https://t.co/eoW0J5Qjde">https://t.co/eoW0J5Qjde</a></p>&mdash; Daisuke Okanohara / 岡野原 大輔 (@hillbig) <a href="https://twitter.com/hillbig/status/1349859731909722113?ref_src=twsrc%5Etfw">January 14, 2021</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>



### [Computer Science > Machine Learning<br>[2102.10993] Universal Approximation Theorem for Neural Networks<br>ニューラルネットワークの万能近似定理](https://arxiv.org/abs/2102.10993)

&blacksquare; Abstract の和訳

> ニューラルネットワークの近似能力は理論的に保証されているのだろうか？<br>
> この疑問に対する答えが「ニューラルネットワークの万能近似定理」である。
> この定理は、適切な設定の下で、ある関数空間においてニューラルネットワークが稠密であることを述べている。<br>
> 本稿では、feedforwardニューラルネットワークの万能近似定理や、その近似レート問題（中間ユニット数と近似誤差の関係）および、Barron space空間について日本語で包括的に解説する。



### [Computer Science > Machine Learning<br>[2109.01050] Characterizing possible failure modes in physics-informed neural networks](https://arxiv.org/abs/2109.01050)

&blacksquare; Abstract の和訳

WIP

&blacksquare; [出典 Tweet](https://twitter.com/AkiraTOSEI/status/1615297351790493703)

### [Computer Science > Machine Learning<br>Partial Differential Equations Meet Deep Neural Networks: A Survey](https://arxiv.org/abs/2211.05567)

&blacksquare; Abstract の和訳

> 科学や工学における多くの問題は、数学的モデル化によって一組の偏微分方程式 (PDE) で表すことができる。<br>
> PDEに続くメカニズムベースの計算は、長い間、計算流体力学、多物理シミュレーション、分子動力学、さらには力学系などのトピックを研究するために不可欠なパラダイムであった。<br>
> それは、ますます重要性を増し、並外れた可能性を秘めた活発な学際的分野である。<br>
> 同時に、PDEを効率的に解決することは長年の課題であった。<br>
> 一般的に、解析解が直接利用できるいくつかの微分方程式を除き、多くの方程式は、近似的に解くために、有限差分法、有限要素法、有限体積法、境界要素法などの数値的アプローチに依存しなければならない。<br>
> これらの数値的手法は通常、連続的な問題領域を離散的な点に分割し、それぞれの点でシステムを解くことに集中する。<br>
> これらの伝統的な数値法の有効性にもかかわらず、各ステップの前進に伴う膨大な数の反復操作は効率を著しく低下させる。<br>
> 最近、同様に重要なもう1つのパラダイムであるディープラーニングに代表されるデータベース計算が、PDEを解く有効な手段として登場した。<br>
> 驚くべきことに、この興味深いサブフィールドの包括的なレビューはまだ不足している。<br>
> この調査では、PDEのためのディープニューラルネットワーク (DNN) に関する現在の進歩を分類し、レビューすることを目的としている。<br>
> ここでは、過去数十年にわたってこのサブフィールドで発表された文献について議論し、それらを一般的な分類法で示した後、科学研究および工学シナリオにおけるこれらの関連する方法の適用の概要と分類を示します。<br>
> このサブフィールドの起源、発展の歴史、性格、ソート、およびそれぞれの潜在的な方向性における今後の動向についても紹介する。

&blacksquare; [出典 Tweet](https://twitter.com/AkiraTOSEI/status/1615297351790493703)



### [Computer Science > Machine Learning<br>[2212.01428] MeshDQN: A Deep Reinforcement Learning Framework for Improving Meshes in Computational Fluid Dynamics](https://arxiv.org/abs/2212.01428)

&blacksquare; Abstract の和訳

> メッシュ生成は、計算流体力学 (CFD) における安定した正確なシミュレーションに必要な、重要ではあるがユーザーを必要とするプロセスである。<br>
> メッシュ生成はCFDパイプラインのボトルネックとなることが多い。<br>
適応メッシュ技術を使用すると、メッシュを自動的に更新して、当面の問題に対する正確な解決策を生成できます。<br>
> アダプティブメッシュの既存の古典的な手法では、ソルバー以外の追加機能、多くのトレーニングシミュレーション、またはその両方が必要です。<br>
> 現在の機械学習技術は、多くの場合、トレーニングデータの生成に相当な計算コストが必要であり、トレーニングデータフローの枠組みに限定されています。<br>
> MeshDQNは、ターゲットのプロパティ計算を維持しながらメッシュを反復的に粗くする汎用の深層強化学習フレームワークとして開発されています。<br>
> 削除するメッシュ頂点を選択するためにグラフニューラルネットワークに基づくディープQネットワークが使用され、改善プロセスの各ステップで高価なシミュレーションをバイパスするために解補間が使用される。<br>
> MeshDQNでは、メッシュを粗くする前に1回のシミュレーションが必要であるが、流動様式、メッシュタイプ、ソルバーについては何も仮定せず、CFDパイプラインで直接メッシュを変更する機能のみが必要である。<br>
> MeshDQNは2つの2D翼のメッシュを改善することに成功した。

&blacksquare; [出典 Tweet](https://twitter.com/dmbrkp_/status/1599992785884483584)



### [Computer Science > Machine Learning<br>[2301.00942] Deep Learning and Computational Physics (Lecture Notes)](https://arxiv.org/abs/2301.00942)

&blacksquare; Abstract の和訳

> これらのノートは、南カリフォルニア大学で開発され、教えられているコースの講義ノートとして編集された。<br>
> 応用数学を得意とする一般的な工学系大学院生が理解できる内容となっている。<br>
> このノートの主な目的は、線形代数と偏微分方程式の概念に精通している学生に、深層学習のトピックを紹介することである。<br>
> これらの講義ノートは、ディープラーニングのアルゴリズムと計算物理学のより一般的な技術との間の強いつながりを利用し、2つの目標を達成する。<br>
> 第一に、計算物理学の概念を用いて深層学習アルゴリズムの理解を深める。<br>
> 驚くことではないが、深層学習における多くの概念は、計算物理学における同様の概念と接続することができ、これらのアルゴリズムをより良く理解するために、この接続を利用することができる。<br>
> 第二に、いくつかの新しい深層学習アルゴリズムは、計算物理学における困難な問題を解決するために使用することができる。<br>
> したがって、物理現象のモデリングに興味を持つ人に、補完的なツールセットを提供することになる。



### [Computer Science > Machine Learning<br>[2301.10250] Score Matching via Differentiable Physics](https://arxiv.org/abs/2301.10250)

&blacksquare; Abstract の和訳

> 確率微分方程式(SDE)に基づく拡散モデルは、データ分布$ p(\bf{x}) $にノイズを加えることで、時間の経過とともに徐々にデータ分布を擾乱する。<br>
> ニューラルネットワークは、時間tにおけるスコア$ \nabla_{\bf{x}} \log p(\bf{x}) $を近似するように学習され、これは破損プロセスを逆転させるために使用できる。<br>
> 本論文では、拡散のような自然な非決定論的物理過程が存在する中で、物理演算子に従って時間発展するスコア場を学習することに焦点を当てる。<br>
> これまでの手法との決定的な違いは、我々のアプローチの基礎となるSDEが、物理システムの状態を後の時間に別の状態に変換することである。<br>
> この目的のために、我々は基礎となるSDE定式化のドリフトを微分可能なシミュレータまたは物理のニューラルネットワーク近似に置き換える。<br>
> シミュレーション軌道の訓練セットに適合させるために、いわゆる確率流ODEに基づく様々な訓練戦略を提案し、スコアマッチング目的との関係について議論する。<br>
> 推論のために、逆時間SDEを用いて、与えられた最終状態に向かって進化するもっともらしい軌道をサンプリングし、様々な困難な逆問題に対する我々のアプローチの競争力を実証する。

&blacksquare; [出典 Tweet](https://twitter.com/AkiraTOSEI/status/1628915066824441856)



## Condensed Matter > Statistical Mechanics

### [Condensed Matter > Statistical Mechanics<br>[2304.03306] Route to turbulence via oscillatory states in polar active fluid under confinement](https://arxiv.org/abs/2304.03306)

&blacksquare; Abstract の和訳

> 閉じ込め下の極性活性流体モデルの数値シミュレーションで観測された、活性乱流への新しいルートを報告する。<br>
> 任意の形状を持つ大規模計算に対応するため、GPUベースのスキームを開発し、統一的な方法で任意の境界形状に対応できるようにした。<br>
> 円形閉じ込めの場合、半径が大きくなるにつれて、最初に1つの定常渦から振動する2つの渦のペアへ、次に振動とカオスの間の再入可能な遷移を経て、最終的に活発な乱流に到達する一連の遷移を発見した。<br>
> 最初の遷移はヒステレティックであることが判明し、振動状態の出現は亜臨界ホップ分岐と一致した。<br>
> 2つの円が重なったダンベル状の境界では、以前の実験で報告された強磁性-反強磁性渦秩序転移に匹敵する転移が観測されたが、転移点は質的に異なる形状依存性を示すことがわかった。

&blacksquare; [出典 Tweet](https://twitter.com/TakeuchiLabJP/status/1645253923308191747)



## Physics > Computational Physics

### [Physics > Computational Physics<br>[2007.00016] Solver-in-the-Loop: Learning from Differentiable Physics to Interact with Iterative PDE-Solvers](https://arxiv.org/abs/2007.00016)

&blacksquare; Abstract の和訳

> 偏微分方程式（PDE）の正確な解を求めることは、あらゆる科学や工学の分野において極めて重要な課題である。<br>
> 最近、離散化されたPDEでは捕らえられない影響を補正することにより、機械学習手法が解の精度を向上させることが示されている。<br>
> 我々は、反復PDEソルバーの数値誤差を低減する問題を対象とし、複雑な補正関数を求めるための様々な学習アプローチを比較する。<br>
> その結果、学習ループにソルバーを統合し、学習中にモデルがPDEと相互作用するようにした手法では、従来使用されてきた学習アプローチが大幅に改善されることがわかった。<br>
> これにより、モデルには過去の補正を考慮した現実的な入力分布が提供され、数百のリカレント評価ステップの安定したロールアウトで精度が向上し、調整された教師ありの変種をも凌駕する。<br>
> 非線形移流拡散系から3次元ナビエ・ストークス流まで、様々なPDEに対する微分可能物理ネットワークの性能を強調する。

&blacksquare; [出典 Tweet](https://twitter.com/hillbig/status/1356001571469856768)  
&blacksquare; [出典 Tweet](https://twitter.com/AkiraTOSEI/status/1359449531893518336)



### [Physics > Computational Physics<br>[2101.04550] Extended Lattice Boltzmann Model](https://arxiv.org/abs/2101.04550)

&blacksquare; Abstract の和訳

> 流体力学のシミュレーションのための従来の格子ボルツマンモデルは、流速が消失するときと温度の特異値においてのみ無視できる応力テンソルの誤差によって制限されている。<br>
> そこで、拡張平衡を導入することにより、応力テンソルのガリレオ不変性と等方性を回復する統一的な定式化を提案する。<br>
> この修正により、格子ボルツマンモデルは流速がより高い値のシミュレーションに拡張され、格子基準温度より高い温度でも使用できるようになり、必要な時間ステップ数を減らすことで計算効率が向上する。<br>
> さらに、この拡張モデルは延伸格子に対しても有効であり、流れ勾配が一方向に支配的な場合に有効である。<br>
> このモデルは、二重せん断層流れ、均一等方性乱流の崩壊、平板上の層流境界層、乱流チャネル流れなどの2次元および3次元ベンチマーク問題のシミュレーションによって検証された。

&blacksquare; [出典 Tweet](https://twitter.com/dmbrkp_/status/1349351102500597762)



### [Physics > Computational Physics<br>[2102.01010] Machine learning accelerated computational fluid dynamics](https://arxiv.org/abs/2102.01010)

&blacksquare; Abstract の和訳

> 流体の数値シミュレーションは、気象、気候、空気力学、プラズマ物理学など、多くの物理現象のモデリングにおいて重要な役割を果たしている。<br>
> 流体はNavier-Stokes方程式によってよく記述されるが、これらの方程式をスケールで解くことは依然として困難であり、最小の時空間的特徴を解決するための計算コストに制限されている。<br>
> これは、精度と扱いやすさの間の不利なトレードオフにつながる。<br>
> ここでは、2次元乱流をモデリングするための計算流体力学の近似を改善するために、end-to-endのディープラーニングを使用する。<br>
> 乱流のDNSとLESの両方において、我々の結果は、各空間次元において8～10倍微細な解像度を持つベースライン・ソルバと同程度の精度を示し、40～80倍の計算速度向上をもたらした。<br>
> 私たちの手法は、長時間のシミュレーションでも安定しており、ブラックボックス機械学習アプローチとは対照的に、学習した流れ以外の強制関数やレイノルズ数にも一般化sareruされる。<br>
> 我々のアプローチは、科学計算が機械学習とハードウェアアクセラレータを活用することで、精度や汎用性を犠牲にすることなくシミュレーションを改善できることを例証している。

&blacksquare; [出典 Tweet](https://twitter.com/hillbig/status/1357468372179447810)  
&blacksquare; [出典 Tweet](https://twitter.com/AkiraTOSEI/status/1359449531809583108)



## Physics > Physics Education

### [Physics > Physics Education<br>[1911.00892] Boosting Vector Calculus with the Graphical Notation](https://arxiv.org/abs/1911.00892)

&blacksquare; Abstract の和訳

> ベクトル微積分のテクニックを学ぶことは、物理学の学部生にとって達成すべき大きな使命の一つである。<br>
> しかし、初心者は、インデックス表記が嵩張るため、その扱いに様々な困難を感じている。<br>
> 一方、テンソル代数の図形表記法は、直感的で効果的な計算が可能であり、代数的恒等式の素早いニーモニックとしても機能する。<br>
> ベクトル代数では教育的な文脈で導入・応用されているが、ベクトル場の微分・積分を含む3次元ユークリッドベクトル微積分に図形表記法を採用した出版物は、我々の知る限りまだない。<br>
> 物理学を学ぶ学生や教育者を対象に、このような「グラフィカルなベクトル微積分」を紹介し、その教育的利点を示し、純粋に数学的な恒等式と物理学における実践的な計算の両方を含む十分な練習問題を提供する。<br>
> グラフィカルな表記法は、ベクトル微積分の学習と実践の障壁を下げるだけでなく、学生にベクトル微積分の構文を操作することに興味を持たせ、自発的にテンソルの言語を理解させることができる。

&blacksquare; [出典 Tweet](https://twitter.com/KenjiNakahira/status/1591333089636384769)



## Physics > Plasma Physics

### [Physics > Plasma Physics<br>[2210.15118] Loading a relativistic kappa distribution in particle simulations](https://arxiv.org/abs/2210.15118)

&blacksquare; Abstract の和訳

> particle-in-cell (PIC)及びモンテカルロシミュレーションにおいて、相対論的&kappa;分布から粒子速度を読み込む手順を示す。<br>
> これは棄却法とベータ素分布に基づいている。<br>
> 棄却法はMaxwell-Juttner分布に対する従来の方法を拡張したものであり、その結果、合格率は95%に達する。<br>
> 一般化されたベータ素分布を用いて、べき乗則の尾を含む相対論的&kappa;カッパ分布の再現に成功した。<br>
> 本手法の導出、数学的準備、他の手法との比較、および数値的検証を示す。

&blacksquare; [出典 Tweet](https://twitter.com/seiji_zenitani/status/1585792018751533056)


<!-- EOF -->

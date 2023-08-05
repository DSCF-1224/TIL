# TIL &colon; arxiv



## [Astrophysics &gt; Instrumentation and Methods for Astrophysics<br>[2012.05618] A Proper Discretization of Hydrodynamic Equations in the Cylindrical Coordinates for Astrophysical Simulations](https://arxiv.org/abs/2012.05618)

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



## [Computer Science &gt; Machine Learning<br>[1906.10742] Machine Learning Testing: Survey, Landscapes and Horizons](https://arxiv.org/abs/1906.10742)

&blacksquare; Abstract の和訳

> 本論文は機械学習テスト (MLテスト) 研究の包括的な調査を提供する。
> プロパティのテスト(例えば、正確性、頑健性、公平性)、コンポーネントのテスト(例えば、データ、学習プログラム、フレームワーク)、ワークフローのテスト(例えば、テスト生成とテスト評価)、アプリケーションシナリオ(例:自動運転、機械翻訳)に関する144の論文をカバーしている。
> また、データセット、研究動向、研究の焦点に関する傾向を分析し、MLテストにおける研究課題と有望な研究方向で締めくくっている。

&blacksquare; 出典 Tweet

<blockquote class="twitter-tweet"><p lang="ja" dir="ltr">機械学習のテスト手法について調査したサーベイペーパー。全37ページ、引用論文292件の超大作。テストの方法、テストの対象、アプリケーションなどの観点から既存手法・文献を紹介。基礎についても細かく書かれているので教科書的にも読める。オススメ。<a href="https://t.co/xBSkKPvwZA">https://t.co/xBSkKPvwZA</a> <a href="https://t.co/xRJOoW2Hsf">pic.twitter.com/xRJOoW2Hsf</a></p>&mdash; ステート・オブ・AI ガイド (@stateofai_ja) <a href="https://twitter.com/stateofai_ja/status/1350966113501380611?ref_src=twsrc%5Etfw">January 18, 2021</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>



## [Computer Science &gt; Machine Learning<br>[2006.08762] Learning Incompressible Fluid Dynamics from Scratch -- Towards Fast, Differentiable Fluid Models that Generalize](https://arxiv.org/abs/2006.08762)

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

## [Computer Science &gt; Machine Learning<br>[2010.03409] Learning Mesh-Based Simulation with Graph Networks](https://arxiv.org/abs/2010.03409)

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

<!-- EOF -->

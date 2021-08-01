# 概要
このリポジトリはLAMMPSでReaxFFを行うときのサンプルファイルです。
このリポジトリを使うと以下の系のシミュレーションを行うことができます。

- [水系(1000分子)](https://github.com/sotanengel/LAMMPS_ReaxFF_example/tree/main/water_cell)
- [エタノール系(1000分子)](https://github.com/sotanengel/LAMMPS_ReaxFF_example/tree/main/ethanol_cell)
- [水/エタノールの混合系(水1000分子+エタノール1分子)](https://github.com/sotanengel/LAMMPS_ReaxFF_example/tree/main/water_with_ethanol)

また今回利用したReaxFFのポテンシャルは以下の論文で開発されたものを利用した。
- [Improvement of the ReaxFF Description for Functionalized Hydrocarbon/Water Weak Interactions in the Condensed Phase](https://pubs.acs.org/doi/pdf/10.1021/acs.jpcb.8b01127)


Water Cell             |  Ethanol Cell
:-------------------------:|:-------------------------:
![image](https://user-images.githubusercontent.com/84895123/127760451-0f464b24-b200-4808-82eb-ce29e55561a9.png)  |  ![image](https://user-images.githubusercontent.com/84895123/127760458-292ab97e-0038-4478-9efe-4abdc369ea81.png)

# 実行方法
## 1.LAMMPSをダウンロードする
[LAMMPSの公式ページ](https://www.lammps.org/)から、LAMMPSをダウンロードする。
私が試した使用したバージョンは『LAMMPS Stable Release:29 Oct 2020』です。

## 2.LAMMPSのパッケージをコンパイルする
具体的な構築方法は[このサイト](https://polymer-simulation-beginners.hatenablog.com/entry/2019/12/31/223235)を参照してください。
私が導入したパッケージは以下です。
- CLASS2
- MOLECULE
- QEQ
- USER-REAXC

コンパイルをしたソフトは環境変数が通ったフォルダに移動してください。

## 3.シミュレーションを実行する
実行したい系のフォルダ内にある`job.sh`を実行してください。
今回のシミュレーションでは単コアの実行を仮定しているため、`lmp_serial`が実行できるようにしておいてください。
※もしも並列計算を実行したい場合には`job.sh`を編集してください。

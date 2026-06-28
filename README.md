# cmux-pokemon-theme

<img width="2032" height="1079" alt="image" src="https://github.com/user-attachments/assets/6f23a070-2efe-4f9e-9fa1-a598ff5ccadd" />

<img width="2032" height="1079" alt="image" src="https://github.com/user-attachments/assets/fab54cfa-bb4b-4e9a-af48-45c0aabad379" />


[hyper-pokemon](https://github.com/klaussinani/hyper-pokemon)（Hyper ターミナル用の Pokémon テーマ）を、[cmux](https://github.com/manaflow-ai/cmux) のターミナル（[Ghostty](https://ghostty.org) バックエンド）向けに移植したものです。

**全 153 種**のポケモンテーマ（カラー + 全画面の背景画像）を収録しています。テーマ名は `Pokemon <名前>` 形式（例: `Pokemon Pikachu`, `Pokemon Jolteon`, `Pokemon Charizard`）。利用可能な一覧は `ghostty +list-themes` でも確認できます。

> Port of the Hyper [hyper-pokemon](https://github.com/klaussinani/hyper-pokemon) theme to cmux's Ghostty-based terminal.

<details>
<summary>収録テーマ一覧（153種）</summary>

Abra, Aerodactyl, Alakazam, Arbok, Arcanine, Articuno, Beedrill, Bellsprout, Blastoise, Bulbasaur, Butterfree, Caterpie, Chansey, Charizard, Charmander, Charmeleon, Clefable, Clefairy, Cloyster, Cubone, Dewgong, Diglett, Ditto, Dodrio, Doduo, Dragonair, Dragonite, Dratini, Drowzee, Dugtrio, Eevee, Ekans, Electabuzz, Electrode, Exeggcute, Exeggutor, Farfetchd, Fearow, Flareon, Gastly, Gengar, Geodude, Gloom, Golbat, Goldeen, Golduck, Golem, Graveler, Grimer, Growlithe, Gyarados, Haunter, Hitmonchan, Hitmonlee, Horsea, Hypno, Ivysaur, Jigglypuff, Jolteon, Jynx, Kabuto, Kabutops, Kadabra, Kakuna, Kangaskhan, Kingler, Koffing, Krabby, Lapras, Lickitung, Machamp, Machoke, Machop, Magikarp, Magmar, Magnemite, Magneton, Mankey, Marowak, Meowth, Metapod, Mew, Mewtwo, Missingno, Moltres, Mr.mime, Mudkip, Muk, Nidoking, Nidoqueen, Nidoran-female, Nidoran-male, Nidorina, Nidorino, Ninetales, Oddish, Omanyte, Omastar, Onix, Paras, Parasect, Persian, Pidgeot, Pidgeotto, Pidgey, Pikachu, Pinsir, Poliwag, Poliwhirl, Poliwrath, Ponyta, Porygon, Primeape, Psyduck, Raichu, Rapidash, Raticate, Rattata, Rhydon, Rhyhorn, Sandshrew, Sandslash, Scyther, Seadra, Seaking, Seel, Shellder, Slowbro, Slowpoke, Snorlax, Spearow, Squirtle, Starmie, Staryu, Tangela, Tauros, Tentacool, Tentacruel, Vaporeon, Venomoth, Venonat, Venusaur, Victreebel, Vileplume, Voltorb, Vulpix, Wartortle, Weedle, Weepinbell, Weezing, Wigglytuff, Zapdos, Zubat

</details>

## カラーマッピング

カラーマッピングは hyper-pokemon の `index.js` の `decorateConfig()` をそのまま再現しています。

### ピカチュウ (Pokemon Pikachu)

| hyper-pokemon | 値 | Ghostty |
|---|---|---|
| unibody | `#F7DE82` | `background` |
| secondary | `#4C1803` | `foreground` / `cursor` |
| primary | `#F6BD20` | `selection-background` |
| tertiary | `#DE7329` | palette 0 / 2 / 8 |
| secondHighlight | `#C7C7C7` | palette 7 |
| highlight | `#FFFFFF` | palette 15 |

### サンダース (Pokemon Jolteon)

| hyper-pokemon | 値 | Ghostty |
|---|---|---|
| unibody | `#F3D156` | `background` |
| secondary | `#3189C0` | `foreground` / `cursor` |
| primary | `#080607` | `selection-background` |
| tertiary | `#720073` | palette 0 / 2 / 8 |
| secondHighlight | `#C7C7C7` | palette 7 |
| highlight | `#FFFFFF` | palette 15 |

## インストール

```sh
git clone https://github.com/yud0uhu/cmux-pokemon-theme.git
cd cmux-pokemon-theme
./install.sh
```

`install.sh` は以下を行います。

1. `themes/*`（全テーマ）→ `~/.config/ghostty/themes/`（Ghostty がユーザーテーマを探す場所）
2. `backgrounds/*`（全背景画像）→ `~/Library/Application Support/com.mitchellh.ghostty/backgrounds/`
3. `config.ghostty` → `~/Library/Application Support/com.mitchellh.ghostty/config.ghostty`（背景画像の絶対パスを自動で書き換え。既存設定は `.bak` にバックアップ）

### テーマの切り替え

`config.ghostty` で **テーマ名と背景画像の両方** を変更します。

```
# サンダース
theme = Pokemon Jolteon
background-image = .../backgrounds/jolteon.png

# ピカチュウ
theme = Pokemon Pikachu
background-image = .../backgrounds/pikachu.png
```

変更後、cmux で **コマンドパレット → `reload_config`** または **⌘+Shift+,** で再読み込みします。

インストール後、cmux で **コマンドパレット → `reload_config`**、または **⌘+Shift+,** で再読み込みすると即座に適用されます（再起動不要）。

## 手動インストール

```sh
# テーマ
cp "themes/Pokemon Pikachu" ~/.config/ghostty/themes/

# 背景画像
mkdir -p ~/Library/Application\ Support/com.mitchellh.ghostty/backgrounds
cp backgrounds/pikachu.png ~/Library/Application\ Support/com.mitchellh.ghostty/backgrounds/
```

`~/Library/Application Support/com.mitchellh.ghostty/config.ghostty` に追記:

```
theme = Pokemon Pikachu
background-image = /Users/あなたのユーザー名/Library/Application Support/com.mitchellh.ghostty/backgrounds/pikachu.png
background-image-fit = cover
background-image-position = center
background-image-opacity = 0.28
```

## 調整

- 背景画像が薄い → `background-image-opacity` を `0.6`〜`1.0` に上げる（hyper 本家は実質フル表示）
- 文字が読みにくい → `background-image-opacity` を下げる

## 備考

hyper-pokemon の配色は元々ほぼ単色（大半が `secondary` 一色）なので、忠実に移植するとシンタックスハイライトの色分けは控えめになります。これは元テーマの仕様どおりです。

## ライセンス

このリポジトリのテーマ／設定ファイルは [hyper-pokemon](https://github.com/klaussinani/hyper-pokemon)（MIT, © Klaus Sinani）に由来し、**MIT License** で配布しています。詳細は [LICENSE](./LICENSE) を参照してください。

### ⚠️ Pokémon アセットについて

MIT が及ぶのはテーマ／設定（Klaus Sinani 氏の著作物の派生）部分のみです。**「Pokémon」の名称・キャラクター・画像（背景画像のピカチュウ含む）は任天堂／Game Freak／株式会社ポケモンの著作権・商標**であり、MIT では再許諾されていません。上流プロジェクトと同様、非営利のファン制作物として収録しています。商用利用は対象外です。気になる場合は背景画像を外し、カラーテーマのみ利用してください。

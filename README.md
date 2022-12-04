# gen-cue-sample

[【cuetorials】入門 ~ cueでER図自動生成してみるまで❗️](https://zenn.dev/yuucu/articles/cuelang-cuetorials) のサンプルコード集です


## Requirement
https://github.com/cue-lang/cue



# サンプル説明

- yamlをmergeするサンプルです

```
├── sample
│   ├── merge
```


- templateをつかって.cueからhelloworld自動生成を行うサンプルです

```
├── sample
│   ├── template
```

- templateをつかって.cueからER図の自動生成を行うサンプルです

```
├── sample
│   ├── er_table
```

# 他サンプル

Makefileに書いてあるコマンド系


### go構造体から.cueファイルを作成するサンプル

```
cue get go ./src/def --local
```

`gen-cue-sample/src/def` フォルダに.cueが作成されます


### goから.cueファイルを読み取り、go構造体として扱う

↑で作成した.cueファイルの定義に則ってデータ作成 -> goで読み取るまで

```
go run src/cmd/main.go
```

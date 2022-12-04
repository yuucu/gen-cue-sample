
templateを使ってみる。

```json
$ cue export helloworld.cue
{
    "tmplHello": "Hi! {{.name}}.",
    "data": {
        "name": "yuucu"
    },
    "out": "Hi! yuucu."
}
```

出力する式を指定。

```
$ cue export helloworld.cue -e out --out text
Hi! yuucu.
```


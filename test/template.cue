import "text/template"

data: [
	{
		name: "yuucu"
		items: [
			{
				name: "pc"
			},
		]
	},
	{
		name: "you"
		items: []
	},
]

tmpl: """
	{{ range . }}
		Hello! {{ .name }}
		{{ range .items }}
			{{ .name }}
		{{ end }}
	{{ end }}
	"""

out: template.Execute(tmpl, data)

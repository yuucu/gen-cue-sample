import "text/template"

tmplHello: """
	Hi! {{.name}}.
	"""

data: {
	name: "yuucu"
}

out: template.Execute(tmplHello, data)

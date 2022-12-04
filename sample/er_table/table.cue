package table

import "text/template"

#Tables: [...#Table]

#Table: {
	name: string
	columns: [...#Column]
}

#Column: {
	isPrimaryKey: bool | *false
	name:         string
	type:         "string" | "int"
}

data: #Tables

tmplPuml: """
	@startuml
	{{ range . }}

	entity {{ .name }} {
		{{ range .columns -}}
			{{- if .isPrimaryKey -}}
				{{ .type }} {{ .name }}
			{{- end -}}
		{{- end }}
		---
		{{- range .columns -}}
			{{- if eq .isPrimaryKey false }}
				{{ .type }} {{ .name }}
			{{- end -}}
		{{- end }}
	}

	{{ end }}
	@enduml
	"""

tmplMd: """
	```mermaid
	erDiagram
	{{ range . -}}
		{{ .name }} {
			{{ range .columns -}}
				{{ .type }} {{ .name }}
			{{ end -}}
		}
	{{ end -}}
	```
	"""

outPuml: template.Execute(tmplPuml, data)
outMd:   template.Execute(tmplMd, data)

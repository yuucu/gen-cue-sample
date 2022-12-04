package table

data: [
	#Table & {
		name: "user"
		columns: [
			{
				isPrimaryKey: true
				name:         "id"
				type:         "string"
			},
			{
				name: "name"
				type: "string"
			},
			{
				name: "age"
				type: "int"
			},
		]
	},
	#Table & {
		name: "item"
		columns: [
			{
				name:         "id"
				type:         "string"
				isPrimaryKey: true
			},
			{
				name: "name"
				type: "string"
			},
			{
				name: "description"
				type: "string"
			},
		]
	},
]

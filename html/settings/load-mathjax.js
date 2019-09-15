window.MathJax = {
	loader: {load: ['[tex]/physics']},
	tex: {
		inlineMath: [['$', '$'], ['\\(', '\\)']],
		macros: {
			CnstCirc: "\\mathrm{\\pi}",
			difl: "{\\unicode{x2145}}",
			difs: "{\\unicode{x2146}}",
			intelm: ["\\,\\difs #1", 1],
			mathexclam: "{\\unicode{x00021}}",
		},
		packages: {'[+]': ['physics']},
	},
	svg: {
		fontCache: 'global',
	}
}

// --- EOF --- //

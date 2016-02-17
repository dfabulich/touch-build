load('/generator', 'generate')

generate(
	name = 'generated',
	count = 10000
)

java_library(
	name = 'x',
	srcs = [':generated'],
)
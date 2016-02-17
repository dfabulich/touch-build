cmd = """
for I in {{0..{count}}}; do
	echo "public class File$$I {{}}" > $(@D)/File$$I.java
done
"""

def generate(name, count):
	outs = []
	for i in range(count):
		outs += ["File"+str(i)+".java"]
	native.genrule(
		name = name,
		outs = outs,
		cmd = cmd.format(count = count)
	)
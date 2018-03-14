##testing ground

from collections import Counter

text = "Lorem ipsum dolor sir amet"

counter = Counter(text.split())
print(len(counter))
barnakel = []
sableng = counter.most_common()


for x in sableng:
    print(x[1] * 100. / len(counter))
    a = x[1] * 100. / len(counter)
    b = list(x)
    b.insert(2, a)
    barnakel.append(b)

print(barnakel)

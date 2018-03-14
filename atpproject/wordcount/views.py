from django.shortcuts import render
from django.http import HttpResponse
from collections import Counter

# Create your views here.
def count(request):
    context = {
        'title' : 'WordCount',
    }
    if request.method == "POST":
        print('*'*50)
        print(request.POST)
        print('*'*50)

        textToCount = request.POST.get('textbox')
        textcorpus = textToCount.split()
        countWord = Counter(textcorpus).most_common()
        counted = []
        for x in countWord:
            a = x[1] * 100. / len(textcorpus)
            b = list(x) # change tuple to list so the value can be changed
            b.insert(2, round(a, 2))
            counted.append(b)
        # counted = [(i, textcorpus.count(i) * 100. / len(textcorpus)) for i in set(textcorpus)]
        # counted = [x for x in countWord.most_common()]
        # kind = []
        # for x in counted:
        #     x = (str(x[1])*100/len(counted))            
        #     kind.append(x)
        # print(countWord.most_common())
        # print(counted) 
        
        return render(request, "wordcount/wordcount-result.html", {
            'text' : textToCount,
            'title' : 'WordCount',
            'items' : counted
        })

    return render(request, "wordcount/wordcount.html", context)


from django.shortcuts import render
from .models import Question

# Create your views here.

def index(request):
  latest_question_list = Question.objects.order_by('-pub_date')[:5]
  context = { 'latest_question_list': latest_question_list }
  return render(request, 'polls/index.html', context)

def detail(request, question_id):
  response = "あなたは質問%sを見ています。"
  return HttpResponse(response % question_id)

def results(request, question_id):
  response = "あなたは質問%sの結果を見ています。"
  return HttpResponse(response % question_id)

def vote(request, question_id):
  return HttpResponse("あなたは質問%sに投票しています。" % question_id)

from django.core.exceptions import ObjectDoesNotExist
from django.shortcuts import render, redirect, get_object_or_404
from rest_framework.response import Response
from rest_framework.views import APIView
from django.http import JsonResponse
from django.conf import settings
from django.views.decorators.csrf import csrf_exempt
import openai


# Create your views here.
def placeholder(request):
    return render(request, 'placeholder/index.html')

@csrf_exempt
def openai_view(request):
    if request.method == "POST":
        message = request.POST.get('message')
        response = openai.Completion.create(
            model=settings.OPENAI_ENGINE,
            prompt=message,
            max_tokens=settings.OPENAI_MAX_TOKENS,
            temperature=settings.OPENAI_TEMPERATURE,
        )

        generated_response = response.choices[0].text.strip()
        print(generated_response)
        return JsonResponse(generated_response, safe=False, status=200)
    else:
        return render(request, 'placeholder/index.html')

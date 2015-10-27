#!/usr/bin/env python
#-*- coding: utf-8 -*-
#from django.shortcuts import render

# Create your views here.
from django.shortcuts import render
from django.shortcuts import render_to_response
from django.http import HttpResponse
from django.http import Http404
# Create your views here.

import sys
import json
import logging
import time
from datetime import datetime
from django.utils.timezone import localtime

from app import models

from app.com.errocodeLib import ERRORCODE

def index(request):
    try:
        META = request.META
        print META
        return render_to_response("index.html", {"META":META}) 
    except Exception as e:
        raise Http404(e)   

def gettest(request):
    try:
        logger = logging.getLogger('django')
        a = request.GET.get("a")
        b = request.GET.get("b")
        logger.info(a)
        logger.info(b)
        cu_time = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
        msg = "Hello world, a = " + a + ", b = " + b + ", it's time now " + cu_time
        import codecs
        with codecs.open("./template/sharedfiles/sharedfile.txt", "a", "utf-8") as f:
            f.write(msg + "\n")
        logger.info(msg)
    except Exception as e:
        logger.error(e, exc_info=1)
        ERRORCODE['INTERNAL_ERROR']['msg'] = str(e)
        return HttpResponse(json.dumps(ERRORCODE['INTERNAL_ERROR'], ensure_ascii=False))
    else:
        ERRORCODE['SUCCESS']['msg'] = msg
        logger.info(json.dumps(ERRORCODE['SUCCESS'], ensure_ascii=False))
        return HttpResponse(json.dumps(ERRORCODE['SUCCESS'], ensure_ascii=False))

def posttest(request):
    try:
        logger = logging.getLogger('django')
        requestData = json.loads(request.body)
        email = requestData['email']
        logger.info(email)
        cutime = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
        logger.info(cutime)
        msg = cutime
        #logger.error("JUST ERROR TEST")
        #raise Exception('123')
    except Exception as e:
        logger.error(e, exc_info=1)
        ERRORCODE['INTERNAL_ERROR']['msg'] = str(e)
        return HttpResponse(json.dumps(ERRORCODE['INTERNAL_ERROR'], ensure_ascii=False))
    else:
        ERRORCODE['SUCCESS']['msg'] = msg
        logger.info(json.dumps(ERRORCODE['SUCCESS'], ensure_ascii=False))
        return HttpResponse(json.dumps(ERRORCODE['SUCCESS'], ensure_ascii=False))


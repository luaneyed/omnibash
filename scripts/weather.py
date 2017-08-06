# -*- coding: utf-8 -*-
import sys
import lib.chrome as cr

cr.launch('https://search.naver.com/search.naver?query=' + ' '.join(sys.argv[1:]) + '+날씨')

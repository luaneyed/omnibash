import sys
import lib.chrome as cr


cr.launch('https://www.youtube.com/results?search_query=' + ' '.join(sys.argv[1:]))
import os


def launch(url):
    cr1 = '/Applications/Google\ Chrome.app'
    cr2 = '/Applications/Google\ Chrome\ 2.app'
    cr = cr2 if os.path.exists('/Applications/Google Chrome 2.app') else cr1
    os.system('open -a ' + cr + ' "' + url + '"')

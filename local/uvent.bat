set GEVENT_LOOP=uvent.loop.UVLoop
set GEVENT_RESOLVER=gevent.resolver_thread.Resolver
@cd /d "%~dp0"
@start "GoAgent" python27.exe -c "import sys,os,traceback,ctypes;__file__='proxy.py';exec '''try:execfile('proxy.py')\nexcept:ctypes.windll.user32.ShowWindow(ctypes.windll.kernel32.GetConsoleWindow(), 1);traceback.print_exc(file=sys.stderr);os.system('pause')'''"
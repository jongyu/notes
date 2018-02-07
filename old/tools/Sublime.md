* 安装Package Control 使用`Ctrl + `打开控制台
```
import urllib.request,os; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); open(os.path.join(ipp, pf), 'wb').write(urllib.request.urlopen( 'http://sublime.wbond.net/' + pf.replace(' ','%20')).read())
```

#### 安装插件
sftp - 打开远程服务器上的文件
ConvertToUTF8 - 支持中文	<br>
OmniMarkupPreviewer - 预览.md文件  `Ctrl + Alt + O`

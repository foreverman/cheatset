cheatsheet do
  title 'Curl'
  docset_file_name 'Curl'
  keyword 'curl'

  introduction 'Curl cheat sheet'

  category do
    id '基本使用'
    entry do
      command 'curl quiet-waters-1228.herokuapp.com/hello'
      notes '输出response body'
    end

    entry do
      command 'curl -i quiet-waters-1228.herokuapp.com/hello'
      notes '输出response headers和response body'
    end
  end

  category do
    id "自动follow重定向"

    entry do
      command 'curl -L quiet-waters-1228.herokuapp.com/redirectme'
      notes '自动请求重定向的url'
    end
  end

  category do 
    id '发送数据'
    entry do
      command 'curl -X POST quiet-waters-1228.herokuapp.com/echo'
      command 'curl -X PUT quiet-waters-1228.herokuapp.com/echo'
      notes "使用 -X 指定请求方法"
    end

    entry do 
      command 'curl -X POST "quiet-waters-1228.herokuapp.com/echo?fname=Mark&lname=Bates"'
      notes "使用query string发送数据"
    end

    entry do
      command 'curl -X POST -d "fname=Mark&lname=Bates" quiet-waters-1228.herokuapp.com/echo'
      command 'curl -X POST -d "{\"name\":\"Mark\"}" quiet-waters-1228.herokuapp.com/echo'
      notes "使用request body发送数据"
    end

    entry do
      command "curl -X POST -d @form_data.json quiet-waters-1228.herokuapp.com/echo"
      notes "读取文件form_data.json的内容为request body"
    end

    entry do
      command 'curl -X POST -F user[fname]=Mark -F user[lname]=Bates -F foo=bar quiet-waters-1228.herokuapp.com/echo -H "Accept: application/json'
      notes "上传数据为HTML form形式"
    end

    entry do
      command 'curl -X POST -F user[fname]=Mark -F user[lname]=Bates -F foo=bar -F user[photo]=@path/to/image.jpg quiet-waters-1228.herokuapp.com/echo -H "Accept: application/json"'
      notes '使用form形式上传文件'
    end
  end

  category do
    id '下载文件'
    entry do
      command 'curl -O http://www.gnu.org/software/gettext/manual/gettext.html'
      notes '将文件保存到本地并命名为gettext.html'
    end
    entry do
      command 'curl -o mygettext.html http://www.gnu.org/software/gettext/manual/gettext.html'
      notes '将文件保存到本地并命名为mygettext.html'
    end

    entry do
      command 'curl -O URL1 -O url2'
      notes '同时下载多个文件'
    end

    entry do 
      command 'curl -O http://www.gnu.org/software/gettext/manual/gettext.html'
      command 'curl -C - -O http://www.gnu.org/software/gettext/manual/gettext.html'
      notes '断点续传'
    end
  end
end

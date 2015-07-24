cheatsheet do
  title 'Curl'
  docset_file_name 'Curl'
  keyword 'curl'

  introduction 'Curl cheat sheet'

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

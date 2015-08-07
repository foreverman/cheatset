cheatsheet do
  title 'Scp'
  docset_file_name 'Scp'
  keyword 'scp'

  introduction 'Scp cheat sheet'

  category do
    id '下载'
    entry do
      command 'scp your_username@remotehost.edu:foobar.txt /some/local/directory'
      notes '将远程服务器上的文件下载到本地'
    end
    entry do
      command 'scp your_username@remotehost.edu:/some/remote/directory/\{a,b,c\} .'
      command 'scp your_username@remotehost.edu:~/\{foo.txt,bar.txt\} .'
      notes '下载远程服务器的多个文件到本地'
    end 
  end

  category do
    id '上传'
    entry do
      command 'scp foobar.txt your_username@remotehost.edu:/some/remote/directory'
      notes '将本地文件上传到远程服务器'
    end
    entry do
      command 'scp foo.txt bar.txt your_username@remotehost.edu:~'
      notes '将多个文件上传到远程服务器'
    end
    entry do
      command 'scp -r foo your_username@remotehost.edu:/some/remote/directory/bar'
      notes '将本地目录foo上传到远程服务器目录bar'
    end
  end 

  category do
    id "服务器到服务器" 
    entry do
      command "scp -3 your_username@rh1.edu:/some/remote/directory/foobar.txt your_username@rh2.edu:/some/remote/directory/ "
      notes "将文件从一个远程服务器拷贝到另一个远程服务器"
    end
  end

  category do
    id "加速" 
    entry do
      command 'scp -c blowfish some_file your_username@remotehost.edu:~'
      notes 'scp默认使用Triple-DES,使用Blowfish cipher有一定加速作用'
    end

    entry do
      command 'scp -c blowfish -C local_file your_username@remotehost.edu:~'
      notes '压缩'
    end
  end  
end

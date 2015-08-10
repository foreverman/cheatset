cheatsheet do
  title 'PostgreSQL Admin'
  docset_file_name 'postgres_admin'
  keyword 'postgres_admin'

  introduction 'PostgreSQL Admin cheat sheet'

  category do
    id '导出数据库'
    entry do
      command 'pg_dump -h localhost -U username -W your_database > your_database.out'
      notes '导出数据库到一个文件中'
    end
  end

  category do
    id '导入数据'
    entry do
      command 'psql -d your_database -f your_database.out'
      notes '将数据导入到新的数据库中'
    end
  end 
end

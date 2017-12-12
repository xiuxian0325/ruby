# 폴더 안으로 들어감
# 폴더 안을 돌면서 파일들의 이름을 가져옴
# 각가 파일을 1.txt => mulcam1.txt

Dir.chdir("files")

#reject{|name| name[0] == '.'} // 파일 이름이 .으로 시작하는 애들을 제거
files = Dir.entries(Dir.pwd).reject{|name| name[0] == '.'}
files.each do |file|
	File.rename(file, "mulcam" + file)

end
# 파일 30개 생성
# 파일 제목은 1.txt 2.txt
# 파일 내용은 좋은아침입니다.

Dir.chdir("files")

5.times do|file|
	# file += 1
	File.open(file.to_s + ".txt", "a+") do |text|
		text.write("좋은 아침입니다.")
	end
end

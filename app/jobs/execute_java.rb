require 'fileutils'

class ExecuteJava
	@queue = :execute

	PATH = "../deval-java-exec-core/src/main/java/com/deval/app"
	PATH_EXEC = "../deval-java-exec-core/"
	def self.perform evaluation_id
		evaluation = Evaluation.find evaluation_id

		tempfile=File.open("#{PATH}/TestClass.java", 'w')
		f=File.new("#{PATH}/TestClass.java.tmp")
		f.each do |line|
		  
		  if line=~ /QQQ/
		    tempfile << evaluation.answer
		  else
		  	tempfile<<line
		  end
		end
		f.close
		tempfile.close
		p %x[pwd]
		p %x[cd "#{PATH_EXEC}"; mvn clean;]

	end
end

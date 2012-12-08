require 'ull-etsii-alu4214-quiz'

describe Ull::Etsii::Alu4214::Quiz::Quiz do
before :all do
@quiz = Ull::Etsii::Alu4214::Quiz::Quiz.new("Cuestionario de PFS 10/12/2011")do |e|
e.question("En que anio Cristobal Colon descubrio america",
e.wrong(:respuesta1 =>"1942"),
e.right(:respuesta1 =>"1492"),
e.wrong(:respuesta1 =>"1808"),
e.wrong(:respuesta1 =>"1914"))

e.question("8x8",
e.wrong(:respuesta2 =>"42"),
e.right(:respuesta2 =>"64"),
e.wrong(:respuesta2 =>"18"),
e.wrong(:respuesta2 =>"14"))

end
end


it "Deberia de haber un metodo run" do
@quiz.respond_to?("run")
end

it "Deberia de haber una variable donde se guarde el nombre del formulario" do
@quiz.name.should=="Cuestionario de PFS 10/12/2011"
end

it "Deberia de haber una variable que almacene las preguntas" do
@quiz.pregunta.should==[["En que anio Cristobal Colon descubrio america", "respuesta1"], ["8x8", "respuesta2"]]
end

it "Deberia de haber una variable que almacene las respuestas" do
@quiz.respuestas.should== [{:respuesta1=>"1942"}, {:respuesta1=>"1492"}, {:respuesta1=>"1808"}, {:respuesta1=>"1914"}, {:respuesta2=>"42"}, {:respuesta2=>"64"}, {:respuesta2=>"18"}, {:respuesta2=>"14"}]
@quiz.respond_to?("right")
@quiz.respond_to?("wrong")
end

it "Deberia de haber una variable que almacene las respuestas correctas" do
@quiz.respcorr.should==[{:respuesta1=>"1492"}, {:respuesta2=>"64"}]
end
 
it "Deberia de haber un metodo que guarde la pregunta" do
@quiz.respond_to?("question")
@quiz.pregunta.should==[["En que anio Cristobal Colon descubrio america", "respuesta1"], ["8x8", "respuesta2"]]
end

end

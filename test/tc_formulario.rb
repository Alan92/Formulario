require 'test/unit'
require 'ull-etsii-alu4214-quiz'

class TestQuiz < Test::Unit::TestCase
def setup
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

def test_1
print "\n************************************* \n"
print "Escoja las respuestas 1942 y 42 \n"
print "************************************* \n"
assert_equal(@quiz.run, "Numero de respuestas acertadas 0 \n")
end

def test_2
print "\n************************************* \n"
print "Escoja las respuestas 1492 y 18 \n"
print "************************************* \n"
assert_equal(@quiz.run, "Numero de respuestas acertadas 1 \n")
end

def test_3
print "\n************************************* \n"
print "Escoja las respuestas 1808 y 14 \n"
print "************************************* \n"
assert_equal(@quiz.run, "Numero de respuestas acertadas 0 \n")
end

def test_4
print "\n************************************* \n"
print "Escoja las respuestas 1914 y 18 \n"
print "************************************* \n"
assert_equal(@quiz.run, "Numero de respuestas acertadas 0 \n")
end


def test_5
print "\n************************************* \n"
print "Escoja las respuestas 1914 y 64 \n"
print "************************************* \n"
assert_equal(@quiz.run, "Numero de respuestas acertadas 1 \n")
end

def test_6
print "\n************************************* \n"
print "Escoja las respuestas 1492 y 64 \n"
print "************************************* \n"
assert_equal(@quiz.run, "Numero de respuestas acertadas 2 \n")
end




end


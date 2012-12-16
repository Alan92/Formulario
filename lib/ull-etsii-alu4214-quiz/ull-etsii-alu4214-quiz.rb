require "ull-etsii-alu4214-quiz/version"
require 'erb'
#encoding=UTF-8
module Ull
  module Etsii
    module Alu4214
      module Quiz
	class Quiz

attr_accessor :name
attr_accessor :pregunta,:respuestas, :respcorr

def initialize(name)
	self.name=name
	self.pregunta=[]
	self.respuestas=[]
	self.respcorr=[]
	yield self
end


def right(option={})
	@respcorr<<option
        @respuestas<<option
end

def wrong(option={})
        @respuestas<<option
end


def to_s

	for j in (0..@pregunta.length-1)do
        print "Pregunta #{pregunta[j][0]} \n"
        for k in (0..respuestas.length-1) do
                print "\n"
                if(respuestas[k].keys.join==pregunta[j][1])
                        print respuestas[k].values.join("\n")
                end
        end

end
end
def question(name,*args)
pregunta<<[name,args[0][-1].keys.join]
end

def run
cont=0
for j in (0..@pregunta.length-1)do
	print "Pregunta #{pregunta[j][0]} \n"
	for k in (0..respuestas.length-1) do
		if(respuestas[k].keys.join==pregunta[j][1])
			print "\n"
			print respuestas[k].values.join("\n")
		end
	end
print "\n Su respuesta: "
res=$stdin.gets.chomp
	for i in (0..@respcorr.length-1) do
		if (res==respcorr[i].values.join)
			cont=cont+1
		end
end
end
nota= "Numero de respuestas acertadas #{cont} \n"
end

def get_binding
binding
end

def to_html

template = %{
  <html>
    <head><title>Ruby Toys -- <%= @name %></title></head>
    <body>
	<h1><%= @pregunta[0][0] %></h1>
        <h2>Respuestas</h2>
	<div>
	 <li><b>1.-- <%=@respuestas[0].values.join %></b></li>
	 <li><b>2.-- <%=@respuestas[1].values.join %></b></li>
	 <li><b>3.-- <%=@respuestas[2].values.join %></b></li>
	 <li><b>4.-- <%=@respuestas[3].values.join %></b></li>
	</div>
        <h1><%= @pregunta[1][0] %></h1>
	<h2>Respuestas</h2>
        <div>
         <li><b>1.-- <%=@respuestas[4].values.join %></b></li>
         <li><b>2.-- <%=@respuestas[5].values.join %></b></li>
         <li><b>3.-- <%=@respuestas[6].values.join %></b></li>
         <li><b>4.-- <%=@respuestas[7].values.join %></b></li>
        </div>
    </body>
  </html>
}.gsub(/^  /, '')

rhtml = ERB.new(template)

# Set up template data.
# Produce result.

rhtml.run(self.get_binding)
end

end
end
end
end
end

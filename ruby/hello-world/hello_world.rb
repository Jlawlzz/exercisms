class HelloWorld

  def self.hello(input = nil)

    input.nil? ? "Hello, World!" : "Hello, #{input}!"

  end

end

Euler.register_language('elixir', Class.new do

  # Run the elixir solution
  def run solution
    `elixir #{file_path(solution)}`
  end

  # Copy the template into the solution's directory
  def init solution
    FileUtils.cp(template_path, file_path(solution))
  end

  private

    # Returns the path to the solution
    def file_path solution
      "#{solution.dir}/#{solution.problem.id}.ex"
    end

    # Returns the path to the elixir template
    def template_path
      "#{File.dirname(__FILE__)}/../templates/elixir.ex"
    end

end)

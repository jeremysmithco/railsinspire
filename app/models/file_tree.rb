class FileTree
  def initialize(paths)
    @paths = paths
  end

  def tree
    paths.sort
         .map { |path| path_hash(path.split("/")) }
         .reduce({}) { |full, path| full.deep_merge(path) }
  end

  private

  attr_reader :paths

  def path_hash(fragments)
    if fragments.size == 1
      { fragments[0] => fragments[0] }
    else
      { fragments[0] => path_hash(fragments[1..-1]) }
    end
  end
end

class FileTree
  def initialize(files)
    @files = files
  end

  def tree
    files.sort
         .map { |file| path_hash(file.path.split("/"), file) }
         .reduce({}) { |full, path| full.deep_merge(path) }
  end

  private

  attr_reader :files

  def path_hash(fragments, file)
    if fragments.size == 1
      { fragments[0] => file }
    else
      { fragments[0] => path_hash(fragments[1..-1], file) }
    end
  end
end

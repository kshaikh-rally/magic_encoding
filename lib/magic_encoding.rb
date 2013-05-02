# Copyright 2002-2013 Rally Software Development Corp. All Rights Reserved.
# A simple library to prepend magic comments for encoding to multiple ".rb" files

module AddMagicComment

  # Options :
  # 1 : Encoding
  # 2 : Path
  # TODO : check that the encoding specified is a valid encoding
  # TODO : allow use of only one option, so the encoding would be guessed (maybe using `file --mime`?)
  def self.process(options)

    # defaults
    encoding  = options[0] || "utf-8"
    directory = options[1] || Dir.pwd

    prefix = "-*- encoding : #{encoding} -*-\n"
    prefix = "Copyright 2001-2013 Rally Software Development Corp. All Rights Reserved.\n"

    # TODO : add options for recursivity (and application of the script to a single file)

    extensions = {
      'rb' => '# {text}',
      'rake' => '# {text}',
    }

    count = 0
    extensions.each do |ext, comment_style|
      rbfiles = File.join(directory ,'**', '*.'+ext)
      Dir.glob(rbfiles).each do |filename|
        file = File.new(filename, "r+")

        lines = file.readlines
        hash_bang = lines[0] if lines[0][/^#!/]

        # remove current copyrights and hash bangs
        while lines[0].match(/Rally Software Development Corp/) || lines[0].match(/^#!/)
          lines.shift
        end

        # add copyright and hash bang if one was present
        lines.insert(0, hash_bang) if defined? hash_bang
        lines.insert(1, comment_style.sub('{text}', prefix))
        count += 1

        file.pos = 0
        file.puts(lines.join)
        file.close
      end
    end

    puts "Magic comments set for #{count} source files"
  end

end

class String

  def starts_with?(s)
    self[0..s.length-1] == s
  end

end





require 'Qt'
require 'mform'
require 'print_tree'

class StartQt4 < Qt::Dialog
  slots 'new()'
  slots 'load()'
  slots 'save()'
  slots 'save_as()'
  slots 'add()'
  slots 'rm()'
  slots 'find()'
  slots 'next()'
  slots 'prev()'

  def initialize(parent = nil)
    super
    @filename = nil
    @tree = RedBlackTree.new
    @ui = Ui_MForm.new
    @ui.setupUi self
    Qt::Object.connect(@ui.new_bt,    SIGNAL('clicked()'), self, SLOT('new()'))
    Qt::Object.connect(@ui.load_bt,   SIGNAL('clicked()'), self, SLOT('load()'))
    Qt::Object.connect(@ui.save_bt,   SIGNAL('clicked()'), self, SLOT('save()'))
    Qt::Object.connect(@ui.saveas_bt, SIGNAL('clicked()'), self, SLOT('save_as()'))
    Qt::Object.connect(@ui.add_bt,    SIGNAL('clicked()'), self, SLOT('add()'))
    Qt::Object.connect(@ui.rm_bt,     SIGNAL('clicked()'), self, SLOT('rm()'))
    Qt::Object.connect(@ui.fetch_bt,  SIGNAL('clicked()'), self, SLOT('find()'))
    Qt::Object.connect(@ui.next,      SIGNAL('clicked()'), self, SLOT('next()'))
    Qt::Object.connect(@ui.prev,      SIGNAL('clicked()'), self, SLOT('prev()'))
  end

  def new
    unless @tree.empty? then
      msg = Qt::MessageBox.new
      msg.setText             "Tree isn't empty"
      msg.setIcon             Qt::MessageBox::Information
      msg.setInformativeText  "Really clear tree?"
      msg.setStandardButtons  Qt::MessageBox::Ok | Qt::MessageBox::Cancel
      return if msg.exec != Qt::MessageBox::Ok
    end
    @tree = RedBlackTree.new
    @filename = nil
    @log = [""]
    @msgno = 0
    @ui.prev.enabled = false
    @ui.next.enabled = false

    @tree.print_tree "0"
    load_image
    return true
  end

  def load
    return unless new

    if @filename = Qt::FileDialog.getOpenFileName then
      begin
        File.open(@filename) { |file|
          file.each { |line| @tree.insert Integer(line.chomp!) }
        }
      rescue SystemCallError
        $stderr.print "IO failed" + $!
      end
    end

    @log = [""]
    @msgno = 0
    @ui.prev.enabled = false
    @ui.next.enabled = false

    @tree.print_tree "0"
    load_image
  end

  def save
    return save_as unless @filename

    File.open(@filename, "w") { |file|
      @tree.each { |node| file.puts node.key }
    }
  rescue SystemCallError
    $stderr.print "IO failed" + $!
  end

  def save_as
    save if @filename = Qt::FileDialog.getSaveFileName
  end

  def find
    visualize { |a, b, c| @tree.lookup a, b, c}
  end

  def add
    visualize { |a, b, c|
      @tree.insert a, b, c
      c << "Node with key #{a} has been succesfully inserted"
      @tree.print_tree b
    }
  end

  def rm
    visualize { |a, b, c|
      @tree.remove a, b, c
      c << "Node with key #{a} has been succesfully removed"
      @tree.print_tree b
    }
  end

  def load_image
    img = Qt::Image.new String(@msgno) + ".png"
    @ui.image.setPixmap Qt::Pixmap.fromImage(img)
    @ui.image.adjustSize

    @ui.label.setText @log[@msgno]
  end

  def prev
    @msgno -= 1

    load_image

    @ui.prev.enabled = false if @msgno == 0
    @ui.next.enabled = true if @msgno == (@log.size - 2)
  end

  def next
    @msgno += 1

    load_image

    @ui.prev.enabled = true if @msgno == 1
    @ui.next.enabled = false if @msgno == (@log.size - 1)
  end

  def visualize
    @log = []
    @msgno = 0

    yield @ui.spinBox.value, "0", @log

    @ui.prev.enabled = false
    @ui.next.enabled = (@log.size != 1)

    load_image
  end
end

if $0 == __FILE__
  app = Qt::Application.new(ARGV)
  myapp = StartQt4.new
  myapp.show
  app.exec
end

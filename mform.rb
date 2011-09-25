=begin
** Form generated from reading ui file 'mform.ui'
**
** Created: Mon May 23 03:45:05 2011
**      by: Qt User Interface Compiler version 4.7.2
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_MForm
    attr_reader :verticalLayout_2
    attr_reader :verticalLayout
    attr_reader :horizontalLayout
    attr_reader :new_bt
    attr_reader :load_bt
    attr_reader :save_bt
    attr_reader :saveas_bt
    attr_reader :spinBox
    attr_reader :horizontalLayout_2
    attr_reader :add_bt
    attr_reader :rm_bt
    attr_reader :fetch_bt
    attr_reader :scrollArea
    #attr_reader :scrollAreaWidgetContents
    attr_reader :image
    attr_reader :horizontalLayout_3
    attr_reader :prev
    attr_reader :label
    attr_reader :next
    attr_reader :pushButton_9

    def setupUi(mForm)
    if mForm.objectName.nil?
        mForm.objectName = "mForm"
    end
    mForm.windowModality = Qt::NonModal
    mForm.resize(1024, 600)
    @sizePolicy = Qt::SizePolicy.new(Qt::SizePolicy::Maximum, Qt::SizePolicy::Maximum)
    @sizePolicy.setHorizontalStretch(0)
    @sizePolicy.setVerticalStretch(0)
    @sizePolicy.heightForWidth = mForm.sizePolicy.hasHeightForWidth
    mForm.sizePolicy = @sizePolicy
    mForm.contextMenuPolicy = Qt::NoContextMenu
    mForm.locale = Qt::Locale.new(Qt::Locale::English, Qt::Locale::UnitedKingdom)
    @verticalLayout_2 = Qt::VBoxLayout.new(mForm)
    @verticalLayout_2.objectName = "verticalLayout_2"
    @verticalLayout = Qt::VBoxLayout.new()
    @verticalLayout.objectName = "verticalLayout"
    @horizontalLayout = Qt::HBoxLayout.new()
    @horizontalLayout.objectName = "horizontalLayout"
    @new_bt = Qt::PushButton.new(mForm)
    @new_bt.objectName = "new_bt"

    @horizontalLayout.addWidget(@new_bt)

    @load_bt = Qt::PushButton.new(mForm)
    @load_bt.objectName = "load_bt"

    @horizontalLayout.addWidget(@load_bt)

    @save_bt = Qt::PushButton.new(mForm)
    @save_bt.objectName = "save_bt"

    @horizontalLayout.addWidget(@save_bt)

    @saveas_bt = Qt::PushButton.new(mForm)
    @saveas_bt.objectName = "saveas_bt"

    @horizontalLayout.addWidget(@saveas_bt)


    @verticalLayout.addLayout(@horizontalLayout)


    @verticalLayout_2.addLayout(@verticalLayout)

    @spinBox = Qt::SpinBox.new(mForm)
    @spinBox.objectName = "spinBox"
    @spinBox.buttonSymbols = Qt::AbstractSpinBox::PlusMinus
    @spinBox.minimum = -1024
    @spinBox.maximum = 1024

    @verticalLayout_2.addWidget(@spinBox)

    @horizontalLayout_2 = Qt::HBoxLayout.new()
    @horizontalLayout_2.objectName = "horizontalLayout_2"
    @add_bt = Qt::PushButton.new(mForm)
    @add_bt.objectName = "add_bt"

    @horizontalLayout_2.addWidget(@add_bt)

    @rm_bt = Qt::PushButton.new(mForm)
    @rm_bt.objectName = "rm_bt"

    @horizontalLayout_2.addWidget(@rm_bt)

    @fetch_bt = Qt::PushButton.new(mForm)
    @fetch_bt.objectName = "fetch_bt"

    @horizontalLayout_2.addWidget(@fetch_bt)


    @verticalLayout_2.addLayout(@horizontalLayout_2)

    @scrollArea = Qt::ScrollArea.new(mForm)
    @scrollArea.objectName = "scrollArea"
    @scrollArea.frameShadow = Qt::Frame::Raised
    @scrollArea.widgetResizable = false
    @scrollArea.alignment = Qt::AlignCenter
    #@scrollAreaWidgetContents = Qt::Widget.new()
    #@scrollAreaWidgetContents.objectName = "scrollAreaWidgetContents"
    #@scrollAreaWidgetContents.geometry = Qt::Rect.new(0, 0, 1006, 429)
    @image = Qt::Label.new #(@scrollArea)
    @image.objectName = "image"
    @image.geometry = Qt::Rect.new(0, 0, 1, 1)
    @sizePolicy1 = Qt::SizePolicy.new(Qt::SizePolicy::Ignored, Qt::SizePolicy::Ignored)
    @sizePolicy1.setHorizontalStretch(0)
    @sizePolicy1.setVerticalStretch(0)
    @sizePolicy1.heightForWidth = @image.sizePolicy.hasHeightForWidth
    @image.sizePolicy = @sizePolicy1
    @image.autoFillBackground = true
    @image.textFormat = Qt::PlainText
    @image.scaledContents = false
    @image.alignment = Qt::AlignCenter
    @image.textInteractionFlags = Qt::NoTextInteraction
    @scrollArea.setWidget(@image)

    @verticalLayout_2.addWidget(@scrollArea)

    @horizontalLayout_3 = Qt::HBoxLayout.new()
    @horizontalLayout_3.objectName = "horizontalLayout_3"
    @prev = Qt::PushButton.new(mForm)
    @prev.objectName = "prev"
    @prev.enabled = false
    @prev.maximumSize = Qt::Size.new(23, 46)

    @horizontalLayout_3.addWidget(@prev)

    @label = Qt::Label.new(mForm)
    @label.objectName = "label"
    @label.maximumSize = Qt::Size.new(16777215, 46)
    @label.lineWidth = 2
    @label.midLineWidth = 0
    @label.textFormat = Qt::RichText
    @label.wordWrap = true
    @label.textInteractionFlags = Qt::LinksAccessibleByMouse|Qt::TextSelectableByMouse

    @horizontalLayout_3.addWidget(@label)

    @next = Qt::PushButton.new(mForm)
    @next.objectName = "next"
    @next.enabled = false
    @next.maximumSize = Qt::Size.new(23, 46)

    @horizontalLayout_3.addWidget(@next)


    @verticalLayout_2.addLayout(@horizontalLayout_3)

    @pushButton_9 = Qt::PushButton.new(mForm)
    @pushButton_9.objectName = "pushButton_9"

    @verticalLayout_2.addWidget(@pushButton_9)


    retranslateUi(mForm)
    Qt::Object.connect(@pushButton_9, SIGNAL('clicked()'), mForm, SLOT('close()'))

    Qt::MetaObject.connectSlotsByName(mForm)
    end # setupUi

    def setup_ui(mForm)
        setupUi(mForm)
    end

    def retranslateUi(mForm)
    mForm.windowTitle = ''
    @new_bt.text = Qt::Application.translate("MForm", "New", nil, Qt::Application::UnicodeUTF8)
    @load_bt.text = Qt::Application.translate("MForm", "Load", nil, Qt::Application::UnicodeUTF8)
    @save_bt.text = Qt::Application.translate("MForm", "Save", nil, Qt::Application::UnicodeUTF8)
    @saveas_bt.text = Qt::Application.translate("MForm", "Save as", nil, Qt::Application::UnicodeUTF8)
    @add_bt.text = Qt::Application.translate("MForm", "Add", nil, Qt::Application::UnicodeUTF8)
    @rm_bt.text = Qt::Application.translate("MForm", "Remove", nil, Qt::Application::UnicodeUTF8)
    @fetch_bt.text = Qt::Application.translate("MForm", "Search", nil, Qt::Application::UnicodeUTF8)
    @image.text = ''
    @prev.text = Qt::Application.translate("MForm", "<", nil, Qt::Application::UnicodeUTF8)
    @label.text = ''
    @next.text = Qt::Application.translate("MForm", ">", nil, Qt::Application::UnicodeUTF8)
    @pushButton_9.text = Qt::Application.translate("MForm", "Quit", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(mForm)
        retranslateUi(mForm)
    end

end

module Ui
    class MForm < Ui_MForm
    end
end  # module Ui


class PrinterControl
  attr_accessor :flag_print

  def initialize
    @flag_print = false
  end

  #def flag_print=(value)
    ##mutex.synchronize do
      #@flag_print = value
    ##end
  #end

  def print
    PAX::Printer._print_buffer
  end

  def mutex
    Semaphore.current.mutex
  end
end


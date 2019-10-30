class Subject
  def request
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end
class RealSubject < Subject
  def request
    puts 'RealSubject: Handling request.'
  end
end
class Proxy < Subject
  def initialize(real_subject)
    @real_subject = real_subject
  end
  def request
    return unless check_access
    @real_subject.request
    log_access
  end
  def check_access
    puts 'Proxy: Checking access prior to firing a real request.'
    true
  end
  def log_access
    print 'Proxy: Logging the time of request.'
  end
end

def measure(n=1)
  time_start =  Time.now
  n.times {yield}
  stop = Time.now - time_start
  stop / n
end

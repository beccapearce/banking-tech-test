class AccountLogPrinter

  def print(log)
    log.each do |transaction|
      puts "#{transaction[:date]}, #{transaction[:credit]}, #{transaction[:debit]}, #{transaction[:balance]}"
    end
  end
end

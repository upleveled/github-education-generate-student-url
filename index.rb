require 'openssl'

student_id = ARGV[0]
secret_key = ''
school_id = ''

File.readlines('.env', chomp: true).each do |line|
  key, value = line.split('=')

  if key == 'secret_key'
    secret_key = value
  elsif key == 'school_id'
    school_id = value
  end
end

signature = OpenSSL::HMAC.hexdigest(OpenSSL::Digest.new('sha256'), secret_key, school_id + student_id)
puts "https://education.github.com/student/verify?school_id=#{school_id}&student_id=#{student_id}&signature=#{signature}"
from_file, to_file = ARGV

puts "Copying from #{from_file} to #{to_file}"

# we could do these two on one line, how?
in_file = open(from_file)
indata = in_file.read

puts "The input file is #{indata.length} bytes long"

puts "Does the output file exist? #{File.exist?(to_file)}" # This can be broken down as, "File! I want you to use your exist? function to tell me if to_file exists on the disk."
puts "Ready, hit RETURN to continue, CTRL-C to abort."
$stdin.gets

out_file = open(to_file, 'w')
out_file.write(indata)

puts "Alright, all done."

out_file.close #By not closing files you are possibly wasting system resources. Also, other processes that want to access the file after your code was executed might not be able to do so due to still being opened by your code.
in_file.close
require 'calabash-android/management/adb'
require 'calabash-android/operations'

Before do |scenario|
	start_test_server_in_background
end

After do |scenario|
	if scenario.failed?
		date = Time.now.strftime('%d_%m-%Hh%Mm%Ss')
		dir_erros = './erros'
		dir_android = './erros/android'

		Dir.mkdir(dir_erros,0777) unless Dir.exist?(dir_erros)
		Dir.mkdir(dir_android,0777) unless Dir.exist?(dir_android)

		screenshot(options={:prefix=> "./erros/android/", :name => scenario.name + ".png"})

		Dir.entries("./").select {|f| !File.directory? f
      		File.delete(f) if f.include? 'screenshot'
    	}
	end
  	shutdown_test_server
end
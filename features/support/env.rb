# encoding: UTF-8
require 'rspec/expectations'
require 'appium_lib'
require 'rubygems'

# 设备类型 IOS 或 Android
$device = "IOS"

class AppiumWorld
end

if $device == "IOS"
    caps = Appium.load_appium_txt file: File.expand_path('../appium_ios.txt', __FILE__), verbose: true
elsif $device  == "Android"
    caps = Appium.load_appium_txt file: File.expand_path('../appium_android.txt', __FILE__), verbose: true
else
    raise "设备类型错误"
end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods AppiumWorld

World do
  AppiumWorld.new
end

Before { $driver.start_driver }

After do |scenario|
    if scenario.failed?
        puts "报错截图："
        addScreenshot("#{Time.now.strftime("%Y%m%d%H%M%S")}_error")
    end
    $driver.driver_quit
end

# ********************封装方法********************

# 添加屏幕截图
def addScreenshot(name)
    driver.save_screenshot("./Screenshot/" + name + ".png")
	sleep 1 #防止脚本立即退出时截图为空
    puts '<img src="' + 'Screenshot/'+name+'.png"' + ' style="width: 80px; height: 100px">'
end

# 查找元素点击
def find_element_click(value_android, value_ios)
    if $device == "IOS"
        value = value_ios
    elsif $device == "Android"
        value = value_android
    else
        raise "设备类型错误"
    end
    0.upto (10) do |i|
       if  exists { id(value) }
           driver.find_element(:id,value).click
           break
       elsif exists { accessibility_id(value) }
           driver.find_element(:accessibility_id,value).click
           break
       elsif exists { xpath(value) }
           driver.find_element(:xpath,value).click
           break
       else
           if i>=10
               raise "未能查找到元素'#{value}'"
           end
           sleep 1
       end
    end
end

# 校验元素是否存在
def element_exist(value)
    0.upto (10) do |i|
        if  exists { id(value) }
			break
		elsif exists { accessibility_id(value) }
			break
		elsif exists { button(value) }
			break
		elsif exists { xpath(value) }
			break
		else
			if i>=10
				raise "未能查找到元素"
			end
			sleep 1
        end
    end
end

require 'tk'


def menu    
system("adb shell input keyevent 82")
end  

def reload
system('adb shell input text "rr"')
end

root = TkRoot.new

btn_Menu = TkButton.new(root) do
    text "Menu"    
borderwidth 3  
underline 0    
state "normal"    
# cursor "watch"    
font TkFont.new('times 20 bold')    
foreground  "red"    
activebackground "blue"    
relief      "groove"    
command (proc {menu})    
pack("side" => "right",  "padx"=> "50", "pady"=> "10") 
end 

btn_Reload = TkButton.new(root) do
    text "Reload"    
borderwidth 3
underline 0 
state "normal"
font TkFont.new('times 20 bold')
foreground  "red"
activebackground "blue"
relief "groove"
command (proc {reload})    
pack("side" => "left",  "padx"=> "50", "pady"=> "10") 
end 
Tk.mainloop

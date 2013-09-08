AlarmJS::Application.routes.draw do
  root :to => 'send_text_controller#index'
  match 'main', :to => 'send_text_controller#main'
  match 'reset', :to => 'send_text_controller#reset'
  match 'ring_alarm', :to => 'send_text_controller#send_text_message'
end
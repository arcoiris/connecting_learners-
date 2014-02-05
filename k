
[1mFrom:[0m /home/deborah/.rvm/gems/ruby-2.0.0-p353/gems/devise-3.2.2/app/helpers/devise_helper.rb @ line 8:
[1mOwner:[0m DeviseHelper
[1mVisibility:[0m public
[1mNumber of lines:[0m 17

[32mdef[0m [1;34mdevise_error_messages![0m
  [32mreturn[0m [31m[1;31m"[0m[31m[1;31m"[0m[31m[0m [32mif[0m resource.errors.empty?

  messages = resource.errors.full_messages.map { |msg| content_tag([33m:li[0m, msg) }.join
  sentence = [1;34;4mI18n[0m.t([31m[1;31m"[0m[31merrors.messages.not_saved[1;31m"[0m[31m[0m,
                    [33m:count[0m => resource.errors.count,
                    [33m:resource[0m => resource.class.model_name.human.downcase)

  html = [31m[1;31m<<-HTML[0m[31m[0m
  <div id=[31m[1;31m"[0m[31merror_explanation[1;31m"[0m[31m[0m>
    <h2>[1;30m#{sentence}</h2>[0m
    <ul>[1;30m#{messages}</ul>[0m
  <[35m[1;35m/[0m[35mdiv>[0m
  [1;34;4mHTML[0m

  html.html_safe
[32mend[0m

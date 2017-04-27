require 'chef'
require 'json'
require 'fileutils'

input_json = ARGV[0]
input_template = ARGV[1]
output_properties = ARGV[2]


input_variables = JSON.parse(File.read(input_json), symbolize_names: true)
tc = Chef::Mixin::Template::TemplateContext.new(input_variables)
properties = tc.render_template(input_template)

File.open(output_properties, 'w') { |file| file.write(properties) }

require "attachmerb_fu"
#require "geometry"
#require "tempfile_ext"

# make sure we're running inside Merb
if defined?(Merb::Plugins)

  # Merb gives you a Merb::Plugins.config hash...feel free to put your stuff in your piece of it
  Merb::Plugins.config[:attachmerb_fu] = {
  }
  
  #Merb::Plugins.add_rakefiles "attachmerb_fu/merbtasks"
  DataMapper::Associations.send(:include, AttachmerbFu::ActMethods)
  
end

require File.expand_path('test_helper.rb', File.dirname(__FILE__))
require 'girffi/builder'

#module GirFFI
  class BuilderTest < Test::Unit::TestCase
    context "A Builder building GObject::Object" do
      setup do
	@builder ||= nil
	return if @builder
	@builder = GirFFI::Builder.new
	@builder.build_object 'GObject', 'Object', 'NS1'
      end

      should "create the correct set of methods for the object" do
	ms = NS1::GObject::Object.instance_methods(false)
	[ "add_toggle_ref", "add_weak_pointer", "force_floating",
	  "freeze_notify", "get_data", "get_property", "get_qdata", "notify",
	  "remove_toggle_ref", "remove_weak_pointer", "run_dispose",
	  "set_data", "set_data_full", "set_property", "set_qdata",
	  "set_qdata_full", "steal_data", "steal_qdata", "thaw_notify",
	  "watch_closure", "weak_ref", "weak_unref"
	].each do |m|
	  assert_contains ms, m
	end
      end
    end

  context "A Builder" do
    setup do
      @builder ||= nil
      return if @builder
      @builder = GirFFI::Builder.new
    end
    should "build correct definition of Gtk.main" do
      code = @builder.function_definition 'Gtk', 'main'
      assert_equal "def main\nLib.main\nend", code
    end
  end
  end
#end


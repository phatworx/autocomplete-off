# encoding: utf-8
require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe ActionView::Helpers::TagHelper do
  describe "#tag" do
    include ActionView::Helpers::TagHelper

    it "should have autocomplete off on input type text" do
      tag('input', { 'type' => 'text' }).should include('autocomplete="off"')
    end
    
    it "should have autocomplete off on input type password" do
      tag('input', { 'type' => 'password' }).should include('autocomplete="off"')
    end
    
    it "should have autocomplete off on input type email" do
      tag('input', { 'type' => 'email' }).should include('autocomplete="off"')
    end
    
    it "should not have autocomplete off on a" do
      tag('a').should_not include('autocomplete="off"')
    end

    it "should not have autocomplete off on a with href attribute" do
      tag('a', { 'href' => 'about:blank' }).should_not include('autocomplete="off"')
    end
    
    it "should not have autocomplete off on input type radio" do
      tag('input', { 'type' => 'radio' }).should_not include('autocomplete="off"')
    end

    it "should not have autocomplete off on input type text if manual disabled" do
      tag('input', { 'type' => 'text', 'autocomplete' => 'on' }).should_not include('autocomplete="off"')
      tag('input', { 'type' => 'text', 'autocomplete' => 'on' }).should include('autocomplete="on"')
    end

    it "should not have autocomplete off on input type password if manual disabled" do
      tag('input', { 'type' => 'password', 'autocomplete' => 'on' }).should_not include('autocomplete="off"')
      tag('input', { 'type' => 'password', 'autocomplete' => 'on' }).should include('autocomplete="on"')
    end

    it "should not have autocomplete off on input type email if manual disabled" do
      tag('input', { 'type' => 'email', 'autocomplete' => 'on' }).should_not include('autocomplete="off"')
      tag('input', { 'type' => 'email', 'autocomplete' => 'on' }).should include('autocomplete="on"')
    end
    
  end

end


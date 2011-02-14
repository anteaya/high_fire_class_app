require 'spec_helper'

describe Assignment do
  it 'should have a description of type string' do
    a = Assignment.new(:description => "some text")
    a.save!
    a.description.instance_of?(String)
  end

  it 'should have an assigned_on date' do
    a = Assignment.new(:assigned_on => "Feb. 1, 2011")
    a.save!
    a.assigned_on.instance_of?(Date)
  end

  it 'should have a due_on date' do
    a = Assignment.new(:due_on => "Feb. 15, 2011")
    a.save!
    a.due_on.instance_of?(Date)
  end
end

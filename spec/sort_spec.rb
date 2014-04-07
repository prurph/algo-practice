require 'spec_helper'
require_relative '../bubble_sort'
require_relative '../merge_sort'
require_relative '../insertion_sort'
require_relative '../selection_sort'
require_relative '../quick_sort'

describe 'Sort Methods' do
  before(:each) do
    @array1 = [0,1,2,3,4,5,6]
    @array2 = [1,1,1,1,5,1]
    @array3 = [1,5,19,25,12,9,6,19,55,100,1]
  end

  describe '#bubble_sort' do
    it 'sorts arrays' do
      expect(@array1.bubble_sort).to match_array @array1.sort
      expect(@array2.bubble_sort).to match_array @array2.sort
      expect(@array3.bubble_sort).to match_array @array3.sort
    end
  end

  describe '#insertion_sort' do
    it 'sorts arrays' do
      expect(@array1.insertion_sort).to match_array @array1.sort
      expect(@array2.insertion_sort).to match_array @array2.sort
      expect(@array3.insertion_sort).to match_array @array3.sort
    end
  end

  describe '#selection_sort' do
    it 'sorts arrays' do
      expect(@array1.selection_sort).to match_array @array1.sort
      expect(@array2.selection_sort).to match_array @array2.sort
      expect(@array3.selection_sort).to match_array @array3.sort
    end
  end

  describe '#quick_sort' do
    it 'sorts arrays' do
      expect(@array1.quick_sort).to match_array @array1.sort
      expect(@array2.quick_sort).to match_array @array2.sort
      expect(@array3.quick_sort).to match_array @array3.sort
    end
  end

  describe '#merge_sort' do
    it 'sorts arrays' do
      expect(@array1.merge_sort).to match_array @array1.sort
      expect(@array2.merge_sort).to match_array @array2.sort
      expect(@array3.merge_sort).to match_array @array3.sort
    end
  end
end

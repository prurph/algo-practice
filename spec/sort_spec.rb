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
      expect(bubble_sort @array1).to match_array @array1.sort
      expect(bubble_sort @array2).to match_array @array2.sort
      expect(bubble_sort @array3).to match_array @array3.sort
    end
  end

  describe '#insertion_sort' do
    it 'sorts arrays' do
      expect(insertion_sort @array1).to match_array @array1.sort
      expect(insertion_sort @array2).to match_array @array2.sort
      expect(insertion_sort @array3).to match_array @array3.sort
    end
  end

  describe '#selection_sort' do
    it 'sorts arrays' do
      expect(selection_sort @array1).to match_array @array1.sort
      expect(selection_sort @array2).to match_array @array2.sort
      expect(selection_sort @array3).to match_array @array3.sort
    end
  end

  # describe '#quick_sort' do
  #   it 'sorts arrays' do
  #     expect(quick_sort @array1).to match_array @array1.sort
  #     expect(quick_sort @array2).to match_array @array2.sort
  #     expect(quick_sort @array3).to match_array @array3.sort
  #   end
  # end

  describe '#merge_sort' do
    it 'sorts arrays' do
      expect(merge_sort @array1).to match_array @array1.sort
      expect(merge_sort @array2).to match_array @array2.sort
      expect(merge_sort @array3).to match_array @array3.sort
    end
  end
end

require('rspec')
require('space')

describe(Space) do
  describe('#x_coordinate') do
    it('returns the space\'s x coordinate') do
      test_space = Space.new({:x => 1, :y => 2})
      expect(test_space.x()).to(eq(1))
    end
  end

  describe('#y_coordinate') do
    it('returns the space\'s y coordinate') do
      test_space = Space.new({:x => 1, :y => 2})
      expect(test_space.y()).to(eq(2))
    end
  end

  describe('#mark_by') do
    it('lets a player mark the space') do
      test_player = Player.new({:mark => 'X'})
      test_space = Space.new({:x => 1, :y => 2})
      test_space.mark_by(test_player)
      expect(test_space.marked_by()).to(eq(test_player))
    end
  end
end

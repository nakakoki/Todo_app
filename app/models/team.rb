class Team < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'a' },
    { id: 3, name: 'b' },
    { id: 4, name: 'c' },
    { id: 5, name: 'd' },
    { id: 6, name: 'e' },
    { id: 7, name: 'f' }
  ]
end

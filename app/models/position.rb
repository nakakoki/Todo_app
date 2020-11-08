class Position < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '本部長' },
    { id: 3, name: '部長' },
    { id: 4, name: '次長' },
    { id: 5, name: '課長' },
    { id: 6, name: '係長' },
    { id: 7, name: '主任' },
    { id: 8, name: 'その他' }
  ]
end

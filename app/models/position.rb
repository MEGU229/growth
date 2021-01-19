class Position < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '店長' },
    { id: 3, name: '副店長' },
    { id: 4, name: '調理主任' },
    { id: 5, name: '調理副主任' },
    { id: 6, name: 'エキスパート'},
    { id: 7, name: '販売リーダー' },
    { id: 8, name: '社員' },
    { id: 9, name: '新入社員' },
    { id: 10, name: 'アルバイト・派遣' },
  ]

  include ActiveHash::Associations
  has_many :users
end


# テーブル設計

##usersテーブル

| Column         | Type    | Options     |
| -------------- | ------- | ----------- |
| nickname       | string  | null: false |
| full_name      | string  | null: false |
| email          | string  | null: false |
| password       | string  | null: false |
| position_id    | integer | null: false |
| team_id        | integer | null: false |
| birth_day      | date    | null: false |

###Association

- has_many :tasks
- has_many :messages
- has_many :room_users
- has_many :rooms, through: :room_users
- has_many :calendars

##roomsテーブル

| Column | Type    | Options     |
| ------ | ------- | ----------- |
| name   | string  | null: false |


###Association

- has_many :rooms_users
- has_many :users, through: :room_users
- has_many :comments


##room_usersテーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| room_id | references | null: false  foreign_key: true |
| user_id | references | null: false, foreign_key: true |

###Association

- belongs_to :user
- belongs_to :room

##messagesテーブル

| Column  | Type       | Option     |
| ------- | ---------- | ---------- |
| content | string     | null:false |
| room_id | references | null:false |
| user_id | references | null:false |

###Association

- belongs_to :user
- belongs_to :room

##tasksテーブル

| Column          | Type       | Option                         |
| --------------- | ---------- | ------------------------------ |
| title           | string     | null: false                    |
| description     | text       | null: false                    |
| completion_date | date       | null: false                    |
| deadline        | date       | null: false                    |
| status          | boolean    | null: false                    |
| memo            | string     | null: false                    |
| user_id         | references | null: false, foreign_key: true |

###Association
- belongs_to user


##calendarsテーブル

| Column  |  Type      | Option                         |
| ------- | ---------- | ------------------------------ |
| year    | date       | null :false                    |
| month   | date       | null: false                    |
| day     | date       | null: false                    |
| content | string     | null: false                    |
| user_id | references | null: false, foreign_key: true |

###Association
- belongs_to user
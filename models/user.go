package models

// User model for table go_user
type User struct {
	ID            int64  `db:"id" gorm:"column:id"`
	Name          string `db:"name" gorm:"column:name"`
	Email         string `db:"email" gorm:"column:email"`
	Role          int    `db:"role" gorm:"column:role"`
	Password      string `db:"password" gorm:"column:password"`
	Salt          string `db:"salt" gorm:"column:salt"`
	LastLoginIP   string `db:"last_login_ip" gorm:"column:last_login_ip"`
	LastLoginTime int64  `db:"last_login_time" gorm:"column:last_login_time"`
	CreatedAt     int64  `db:"created_at" gorm:"column:created_at"`
	UpdatedAt     int64  `db:"updated_at" gorm:"column:updated_at"`
}

func (u *User) TableName() string {
	return "go_user"
}

// Identity model for identity
type Identity struct {
	ID   int64  `json:"id"`
	Name string `json:"name"`
	Role int    `json:"role"`
}

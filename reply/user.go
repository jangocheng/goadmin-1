package reply

type UserListReply struct {
	Count int64           `json:"count"`
	List  []*UserListItem `json:"list"`
}

type UserListItem struct {
	ID            int64  `json:"id"`
	Name          string `json:"name"`
	EMail         string `json:"email"`
	Role          int    `json:"role"`
	RoleName      string `json:"role_name"`
	LastLoginIP   string `json:"last_login_ip"`
	LastLoginTime string `json:"last_login_time"`
	CreatedAt     string `json:"created_at"`
	UpdatedAt     string `json:"updated_at"`
}

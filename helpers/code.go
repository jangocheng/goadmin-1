// Package helpers ...
package helpers

var errCodes = map[int]string{
	10000: "参数错误",
	10001: "登录已过期，请重新登录",
	10002: "无操作权限",
	10003: "操作失败",
	10004: "页面不存在",
	// 登录
	20000: "验证码错误",
	20001: "帐号或密码错误",
	20002: "登录失败",
	20003: "密码错误",
	// 导入导出
	30000: "工作表内容为空",
	30001: "数据导入失败",
	30002: "数据导出失败",
	30003: "生成失败",
	// 数据
	40000: "数据不存在",
	40001: "数据已锁定",
	// 系统错误
	50000: "服务器错误，请稍后重试",
	50001: "数据获取失败，请稍后重试",
}

const (
	ErrParams       = 10000
	ErrLoginExpired = 10001
	ErrForbid       = 10002
	ErrOpt          = 10003
	ErrPageNotFound = 10004
	ErrCaptcha      = 20000
	ErrAuth         = 20001
	ErrLogin        = 20002
	ErrPassowrd     = 20003
	ErrSheetEmpty   = 30000
	ErrImport       = 30001
	ErrExport       = 30002
	ErrDataNotFound = 40000
	ErrDataLocked   = 40001
	ErrSystem       = 50000
)

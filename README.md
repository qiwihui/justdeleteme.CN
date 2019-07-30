# 中国互联网帐号注销难易度指南

本项目参考了 [justdelete.me](https://github.com/rmlewisuk/justdelete.me)，旨在收集中国互联网重要网站和服务的账号注销难易度信息，仅供大家参考。

## 贡献

服务的网站，网址和其他信息存储在`sites.json`中。如果要将网站添加到列表，则需要以下信息：

- `name`：服务的名称。
- `url`：帐户删除页面的URL。如果不存在此类页面，则该URL应为联系人或删除帐户的帮助页面。
- `difficulty`：帐户删除的难度：
  - `easy`：具有简单流程的网站，例如包含“注销帐户”按钮；
  - `medium`：允许删除帐户但要求你执行其他步骤的网站；
  - `hard`：要求你联系客户服务的网站或不允许自动或轻松删除帐户的网站；
  - `impossible`：对于基本上不可能完全删除你的帐户的网站，即使你与他们联系；
- `notes`：(可选）当鼠标悬停在该服务上时，将显示注释。注释可能包含你删除帐户可能需要的其他信息（例如Skype）或删除帐户（例如iTunes）的后果。
- `email`：(可选）如果你必须向公司发送电子邮件以注销你的帐户，请在此处添加电子邮件地址。
- `domains`: (可选) 由 [Chrome extension](https://github.com/MikeRogers0/justdelete.me-chrome-extension) 使用。

举例：

```json
[
    {
        "name": "前程无忧",
        "url": "https://login.51job.com/closeaccount.php",
        "difficulty": "easy",
        "domains": [
            "51job.com"
        ]
    },
    {
        "name": "淘宝",
        "url": "https://passport.taobao.com/ac/cancel_account.htm?fromSite=0",
        "difficulty": "hard",
        "notes": "需满足所有特定条件（http://service.taobao.com/support/knowledge-5839600.htm），才能联系客服注销",
        "domains": [
            "taobao.com"
        ]
    }
]
```

### 本地测试

运行 `gulp` 并查看 `docs` 下的文件。

## 协议

Licensed under the MIT License. Copyright (c) 2019 qiwihui.

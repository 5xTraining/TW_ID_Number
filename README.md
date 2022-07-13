# 台灣身分證產生器

自動產生台灣身分證以及驗證台灣身分證是否正確。

# 環境需求

- Ruby 2.6+

# 安裝方式

`gem install TW_ID_Number`

# 使用方法

```ruby
require 'TW/id_number'

TW::IDNumber.generate => "A153352954"

TW::IDNumber.valid?('A172591542') => true
```

# Bug or PR

任何 Bug 回報和 PR 都歡迎在這邊開 issue 或是直接發 PR

[https://github.com/5xTraining/TW_ID_Number](https://github.com/5xTraining/TW_ID_Number) 

# License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT)
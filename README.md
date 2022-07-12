# 台灣身分證產生器

自動產生台灣身分證，用在 RSpec 避免 Model Validation 重複問題

# 環境需求

- Ruby 2.6+

# 安裝方式

`gem install personal_id_number_generator_tw`

# 使用方法

```ruby
require 'id_number/generator'

IdNumber::Generator.id_number => "A153352954"
```

# Bug or PR

任何 Bug 回報和 PR 都歡迎在這邊開 issue 或是直接發 PR

[https://github.com/5xTraining/personal_id_number_generator_tw](https://github.com/5xTraining/personal_id_number_generator_tw) 

# License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT)
module Multistatic
  VERSION = {{ `shards version #{__DIR__}`.chomp.stringify }}
end

struct StaticArray
  macro dim(dimension_count, content_type, size, default)
    {% if dimension_count == 1 %}
      ary = StaticArray({{content_type}}, {{size}}).new({{default}})
    {% elsif dimension_count == 2 %}
        ary = StaticArray(StaticArray({{content_type}}, {{size}}), {{size}})
        .new(StaticArray({{content_type}}, {{size}}).new({{default}}))
    {% else %}
      {% raise("Invalid dimension") %}
    {% end %}
  end
end

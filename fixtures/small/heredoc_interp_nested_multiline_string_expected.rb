X = <<~H
  #{foo("a
    b")}
H

SQL = <<~SQL
  MAX(#{foo("CASE WHEN a
    THEN b ELSE 0 END", "CASE WHEN c
    THEN d ELSE 0 END")})
SQL
  .squish

<<~JS
  #{foo(bar: "aaa,
          bbb")}
JS

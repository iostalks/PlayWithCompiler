# ANTLR

Antlr 是一款根据词法规则和语法规则，自动生成词法和语法分析器的工具。支持大多数主流的编程语言。

## MacOS 安装

```shell
$ cd /usr/local/lib
$ sudo curl -O https://www.antlr.org/download/antlr-4.7.2-complete.jar
$ export CLASSPATH=".:/usr/local/lib/antlr-4.7.2-complete.jar:$CLASSPATH"
$ alias antlr='java -jar /usr/local/lib/antlr-4.7.2-complete.jar'
$ alias grun='java org.antlr.v4.gui.TestRig'
```

## Swift Parser

生成 Parser：

```shell
antlr Swift.g4
```

编译 Parser:

```shell
grun Swift expression -tree
```

紧接着输入分析表达式：

```shell
10 + 2 * 10
```

`Ctrl + D` 输出 AST:

```scm
(expression
  (prefix_expression
    (postfix_expression
      (primary_expression
        (literal_expression
          (literal
            (numeric_literal
              (integer_literal 10)))))))
  (binary_expressions
    (binary_expression
      (binary_operator (operator (operator_head +)))
        (prefix_expression
          (postfix_expression
            (primary_expression
              (literal_expression
                (literal
                  (numeric_literal
                    (integer_literal 2))))))))
    (binary_expression
      (binary_operator
        (operator (operator_head *)))
      (prefix_expression
        (postfix_expression
          (primary_expression
              (literal_expression
                (literal
                  (numeric_literal
                    (integer_literal 10))))))))))
```

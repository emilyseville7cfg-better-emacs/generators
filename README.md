# Generators

Functions to generate data structures.

## Requirenments

- `emacs 27.1` higher

## Features

- [x] Sequence generation by rules
- [x] List generation by rules

## Installation

### Copy-paste plugin script contents to `~/.emacs` while enabling lexical-binding

Example `~/.emacs` config:

```emacs
;;; -*- lexical-binding: t; -*-
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; The extension file content with all comments removed can be placed here.

(custom-set-variables
;; custom-set-variables was added by Custom.
;; If you edit it by hand, you could mess it up, so be careful.
;; Your init file should contain only one such instance.
;; If there is more than one, they won't work right.
'(package-selected-packages '(markdown-mode)))
(custom-set-faces
;; custom-set-faces was added by Custom.
;; If you edit it by hand, you could mess it up, so be careful.
;; Your init file should contain only one such instance.
;; If there is more than one, they won't work right.
)
```

## Functionality

All `length` parameters are optional and defaults to `10`.
By convention all parameters are ordered as follows: `selector`, and `length`.
Below square brackets are used to represent optional parameters and **not** arrays.

- Function: `generators-sequence selector [length]`
  Description: Generate a sequence with a specific length.
- Function: `generators-list selector [length]`
  Description: Generate a list with a specific length.

## Examples

Generate a sequence of 5 numbers `[2 3 4 5 6]`:

```lisp
(iter-do (item (generators-sequence '(lambda (index) (+ 2 index)) 5)) (message (format "item is %d" item)))
```

Generate a list of 5 numbers `[2 3 4 5 6]`:

```lisp
(generators-list '(lambda (index) (+ 2 index)) 5)
```

## FAQ

- Why to use generators to generate sequences?
  As long as sequences can be extremely long not to consume too much memory it's better to use generators.

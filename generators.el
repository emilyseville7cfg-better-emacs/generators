;;; generators.el --- Functions to generate data structures  -*- lexical-binding: t; -*-

;; Copyright (c) 2022 Emily Grace Seville <EmilySeville7cfg@gmail.com>
;; Version: 0.1
;; Package-Requires: ((emacs "27.1"))

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;  For details view README file.

;; URL: https://github.com/Emilyseville7cfg/generators

;;; Code:

(iter-defun generators-sequence(selector &optional length)
  "Generate a sequence with a specific LENGTH.
SELECTOR: the selector to project items (signature: selector(index))
LENGTH: the sequence length (default: 10)"
  (if (null selector)
      (error "The selector '%s' is nil" selector))

  (setq length (cond
		((null length) 10)
		(t length)))

  (if (< length 0)
      (error "The sequence length '%s' is less than zero" length))
n
  (dotimes (i length)
    (iter-yield (funcall selector i))))

(defun generators-list(selector &optional length)
  "Generate a list with a specific LENGTH.
SELECTOR: the selector to project items (signature: selector(index))
LENGTH: the list length (default: 10)"
  (if (null selector)
      (error "The selector '%s' is nil" selector))

  (setq length (cond
		((null length) 10)
		(t length)))

  (if (< length 0)
      (error "The list length '%s' is less than zero" length))

  (cl-loop for i upfrom 0 upto (1- length)
	   collect (funcall selector i)))

(provide 'generators)

;;; generators.el ends here

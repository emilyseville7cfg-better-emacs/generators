;;; tests.el --- Unit tests  -*- lexical-binding: t; -*-

;; URL: https://github.com/emilyseville7cfg-better-emacs/generators

;; Copyright (c) 2023 Emily Grace Seville <EmilySeville7cfg@gmail.com>
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
;;  This package is the part of Better Emacs project.

;;; Code:

(load-file "./generators.el")

(ert-deftest generators-sequence--expect-error-when-selector-is-nil()
  "Expect error when SELECTOR is nil."
  (should-error (generators-sequence)))

(ert-deftest generators-sequence--expect-correct-sequence-when-parameters-are-correct()
  "Expect correct sequence when all parameters are correct."
  (should-error (generators-sequence '(lambda (index) index) 1))
  (iter-do (item (generators-sequence '(lambda (index) index) 1)) (should (equal 0 item))))

(ert-deftest generators-list--expect-error-when-selector-is-nil()
  "Expect error when SELECTOR is nil."
  (should-error (generators-list)))

(ert-deftest generators-list--expect-correct-list-when-parameters-are-correct()
  "Expect correct list when all parameters are correct."
  (should (equal (generators-list '(lambda (index) index) 1) '(0))))

;;; tests.el ends here

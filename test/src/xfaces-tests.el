;;; xfaces-tests.el --- tests for xfaces.c           -*- lexical-binding: t -*-

;; Copyright (C) 2020 Free Software Foundation, Inc.

;; This file is part of GNU Emacs.

;; GNU Emacs is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <https://www.gnu.org/licenses/>.

(require 'ert)

(ert-deftest xfaces-color-distance ()
  ;; Check symmetry (bug#51455).
  (should (equal (color-distance "#222222" "#ffffff")
                 (color-distance "#ffffff" "#222222"))))

(provide 'xfaces-tests)

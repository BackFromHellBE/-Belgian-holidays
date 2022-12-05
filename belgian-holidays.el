;;; belgian-holidays.el --- Belgian holidays for the calendar  -*- lexical-binding: t; -*-

;; Author: Thierry Leurent <thierry.leurent@asgardian.be>
;; Version: 0.1
;; Keywords: calendar
;; URL: https://gitlab.com/BackFromHell/belgian-holidays

;; This file is not part of GNU Emacs

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; For a full copy of the GNU General Public License
;; see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; The list of official Belgian holidays. With regional holidays included.
;;
;; Installation:
;;
;;  M-x package-install RET belgian-holidays RET
;;
;; Configuration:
;;
;; To use `balgian-holidays' in your calendar
;;
;;  (setq holiday-other-holidays holiday-belgian-national-holidays-fr)
;;
;; If you'd like to add local and regional holidays, pick additional holidays
;; from 'holiday-walloon-regional-holidays-fr' or 'carnaval-carnieres-fr'.
;;
;;
;; (setq holiday-other-holidays
;;       (append belgian-remarkable-days-fr carnaval-carnieres-fr))
;; (setq calendar-holidays
;;       (append holiday-belgian-national-holidays-fr holiday-walloon-regional-holidays-fr holiday-other-holidays))
;;
;; The code was inspired by swiss-holidays.el and
;; https://www.emacswiki.org/emacs/CalendarLocalization

;;; Code:
(eval-when-compile
  (require 'calendar)
  (require 'holidays))

(defvar holiday-belgian-national-holidays-fr
  `((holiday-fixed 1 1 "Nouvel An (férié)")
    (holiday-easter-etc 1 "Lundi de Pâques (férié)")
    (holiday-fixed 5 1 "Fête du travail (férié)")
    (holiday-easter-etc 39 "Ascension (férié)")
    (holiday-easter-etc 50 "Lundi de Pentecôte (férié)")
    (holiday-fixed 7 21 "Fête Nationale (férié)")
    (holiday-fixed 8 15 "Assomption (férié)")
    (holiday-fixed 11 1 "Toussaint (férié)")
    (holiday-fixed 11 11 "Armistice de 1918 (férié)")
    (holiday-fixed 12 25 "Noël (férié)"))
  "Belgian national holidays.")
(defvar holiday-walloon-regional-holidays-fr
  '((holiday-fixed 11 2 "Le jour de morts (férié dans l'administration Wallonne)")
    (holiday-fixed 11 15 "Fête du Roi (férié dans l'administration Wallonne)")
    (holiday-fixed 12 26 "26 décembre (férié dans l'administration Wallonne)"))
  "Wallon regional holidays.")
(defvar carnaval-carnieres-fr
  '((holiday-easter-etc -29 "Sumonces générales et en musique du Carnaval de Carnières")
    (holiday-easter-etc -14 "Dimanche du Carnaval de Carnières")
    (holiday-easter-etc -13 "Lundi du Carnaval de Carnières")
    (holiday-easter-etc -12 "Mardi du Carnaval de Carnières"))
  "Carnaval of Carnières days.")
(defvar belgian-remarkable-days-fr
  '((holiday-fixed 1 6 "Épiphanie")
    (holiday-fixed 2 2 "Chandeleur")
    (holiday-fixed 2 14 "Saint Valentin")
    (holiday-fixed 5 8 "Commémoration de la capitulation de l'Allemagne en 1945")
    (holiday-easter-etc 49 "Pentecôte")
    (holiday-fixed 6 21 "Fête de la musique")
    (holiday-easter-etc 0 "Pâques")
    (holiday-easter-etc -47 "Mardi gras")
    (holiday-float 5 0 2 "Fête des mères")
    (holiday-float 6 0 2 "Fête des pères"))
  "Belgian remarkable days.")

(provide 'belgian-holidays)

;;; belgian-holidays.el ends here

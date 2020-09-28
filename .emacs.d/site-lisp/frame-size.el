;;; frame-size.el ---                                -*- lexical-binding: t; -*-

(defun double-frame-width ()
  "Double the width of the current frame."
  (interactive)
  (set-frame-width (selected-frame) (* 2 (frame-width (selected-frame)))))

(defun double-frame-height ()
  "Double the height of the current frame."
  (interactive)
  (set-frame-height (selected-frame) (* 2 (frame-height (selected-frame)))))

(defun double-frame-dimensions ()
  "Double the width and height of the current frame."
  (interactive)
  (double-frame-width)
  (double-frame-height))

(defun reset-standard-frame-size ()
  "Reset to the initial frame size."
  (interactive)
  (set-frame-height (selected-frame) 36)
  (set-frame-width (selected-frame) 80))


(provide 'frame-size)
;;; frame-size.el ends here

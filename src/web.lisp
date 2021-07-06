(in-package :cl-user)
(defpackage tailwind-demo.web
  (:use :cl
        :caveman2
        :tailwind-demo.config
        :tailwind-demo.view
        :tailwind-demo.db
        :datafly
        :sxql)
  (:export :*web*))
(in-package :tailwind-demo.web)

;; for @route annotation
(syntax:use-syntax :annot)

;;
;; Application

(defclass <web> (<app>) ())
(defvar *web* (make-instance '<web>))
(clear-routing-rules *web*)

;;
;; Routing rules

(defroute "/" ()
  (render #P"index.html"))

(defroute "/dashboard" ()
  (render #P"dashboard.html"))
;;
;; Error pages

(defmethod on-exception ((app <web>) (code (eql 404)))
  (declare (ignore app))
  (merge-pathnames #P"_errors/404.html"
                   *template-directory*))

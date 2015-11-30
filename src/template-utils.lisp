(in-package :site-generator)

(export '(when-accessor))

(defmacro when-accessor (accessor-name &body body)
  "evaluates body if there is variable accessor-name in page"
  `(when (fboundp ,accessor-name)
     (str
      (xml
       ,@body))))

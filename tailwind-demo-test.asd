(defsystem "tailwind-demo-test"
  :defsystem-depends-on ("prove-asdf")
  :author "Rajasegar Chandran"
  :license ""
  :depends-on ("tailwind-demo"
               "prove")
  :components ((:module "tests"
                :components
                ((:test-file "tailwind-demo"))))
  :description "Test system for tailwind-demo"
  :perform (test-op (op c) (symbol-call :prove-asdf :run-test-system c)))

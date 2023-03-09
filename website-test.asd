(defsystem "website-test"
  :defsystem-depends-on ("prove-asdf")
  :author "Lukhell"
  :license "GPL-3"
  :depends-on ("website"
               "prove")
  :components ((:module "tests"
                :components
                ((:test-file "website"))))
  :description "Test system for website"
  :perform (test-op (op c) (symbol-call :prove-asdf :run-test-system c)))

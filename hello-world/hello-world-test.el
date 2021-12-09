(load-file "hello-world.el")

(ert-deftest hello-world-test ()
  (should (equal (hello) "Hello, World!"))
  )
(provide 'hello-world-test)

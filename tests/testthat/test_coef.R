x = c(1,23,5,7,10,12,123)
y = c(3,23,4,6,7,12,3)
l1 <- linmodEst(cbind(1,x),y)
l2 <- lm(y ~ x)

test_that("same estimated coefficients as lm function", {
  expect_equal(as.numeric(round(l1$coefficients, 2)), as.numeric(round(l2$coefficients, 2)))
})

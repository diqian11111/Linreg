data(cats, package = "MASS")
l1 <- linmodEst(cbind(cats$Bwt,cats$Sex),cats$Hwt)
l2 <- lm(Hwt ~ Bwt * Sex, data = cats)

test_that("same estimated coefficients as lm function", {
  expect_equal(as.numeric(round(l1$coefficients, 2)), as.numeric(round(l2$coefficients, 2)))
})

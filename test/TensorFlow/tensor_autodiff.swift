// RUN: %target-swift-frontend -O -emit-llvm %s | %FileCheck %s
// XFAIL: *

import TensorFlow

public func test1() {
  func addSelf(_ x: Tensor<Float>) -> Tensor<Float> {
    return x + log(x)
  }
  _ = #gradient(addSelf)
}
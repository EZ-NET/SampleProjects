//
//  MyClass.swift
//  ProtocolExtendedMutatingFuncCannotCallFromClass
//
//  Created by Tomohiro Kumagai on 1/27/16.
//  Copyright © 2016 EasyStyle G.K. All rights reserved.
//

class MyClass : MyProtocol {
    
    func method() {
        
        self.nonmutatingTest()    // OK
        self.mutatingTest()    // NG（既定の実装を上書きすれば問題ない）
    }
    
    func method2() {

        // self を mutable 変数に入れれば使える。
        var mutableSelf = self
        mutableSelf.mutatingTest()
    }
    
    // 既定の実装を自分で追加すれば大丈夫（もしかして mutating 扱いじゃない？と思ったが、下の検証通り、問題なさそう）
//    func mutatingTest() {
//        
//    }
    
    // 既定の実装がない nonmutating を上書きする分には、mutating がなくても問題なく実装されたとみなされる。
    func mutatingTestForNeedImplement() {
        
    }
}
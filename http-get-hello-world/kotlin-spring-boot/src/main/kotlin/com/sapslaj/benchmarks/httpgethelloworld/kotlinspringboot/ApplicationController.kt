package com.sapslaj.benchmarks.httpgethelloworld.kotlinspringboot

import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController

@RestController
class ApplicationController {

    @GetMapping("/")
    fun root(): String {
        return "hello world\n"
    }
}

package org.example.githubactiontest.controller

import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController

@RestController
class Index {
    @GetMapping("/")
    fun index(): Hello {
        return Hello("Hello, World!", "0.0.1")
    }
}

class Hello (
    val index: String,
    val version: String,
)
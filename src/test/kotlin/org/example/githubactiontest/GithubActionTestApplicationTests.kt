package org.example.githubactiontest

import org.junit.jupiter.api.Test
import org.springframework.boot.test.context.SpringBootTest

@SpringBootTest
class GithubActionTestApplicationTests {

	@Test
	fun contextLoads() {
		val test = 1
		assert(test == 1)
	}

	@Test
	fun test2() {
		val test = 2
		assert(test == 2)
	}

	@Test
	fun test3() {
		val test = 3
		assert(test == 3)
	}
}

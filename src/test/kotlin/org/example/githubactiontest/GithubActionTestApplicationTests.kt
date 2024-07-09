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


}

package com.spring.register

import org.assertj.core.api.Assertions.assertThat
import org.junit.jupiter.api.Test
import org.springframework.boot.test.context.SpringBootTest

@SpringBootTest
class RegisterApplicationTests {

	@Test
	fun contextLoads() {
		assertThat("true").isEqualTo("true");
	}

}

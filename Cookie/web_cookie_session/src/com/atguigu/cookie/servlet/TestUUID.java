package com.atguigu.cookie.servlet;

import static org.junit.Assert.*;

import java.util.UUID;

import org.junit.Test;

public class TestUUID {

	@Test
	public void test() {
		//电脑机器码：全球唯一，当前时间戳    组合成一个唯一的字符串
		String uuid = UUID.randomUUID().toString().replace("-", "");
		//id 值：生产环境， 正式环境   表合并时可能有id冲突，使用UUID解决
		System.out.println(uuid);
	}

}

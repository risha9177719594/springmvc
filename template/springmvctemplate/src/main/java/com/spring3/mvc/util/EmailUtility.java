package com.spring3.mvc.util;

import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Component;

@Component
public class EmailUtility {

	/**
	 * This method will be wrapped in a proxy so that the method is actually
	 * invoked by a TaskExecutor instance
	 */
	@Async
	public void sendEmail() {
		String threadName = Thread.currentThread().getName();
		System.out.println("   " + threadName + " has began working.");
		try {
			System.out.println("working...");
			Thread.sleep(10000); // simulates work
		} catch (InterruptedException e) {
			Thread.currentThread().interrupt();
		}
		System.out.println("   " + threadName + " has completed work.");
	}

}

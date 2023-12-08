package com.airwire.nextgenschool;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * @author Balaji Sambhale
 */
@SpringBootApplication
public class NextgenschoolApplication {

	private static final Logger logger = LoggerFactory.getLogger(NextgenschoolApplication.class);

	public static void main(String[] args)
	{
		logger.info("it's started 1 stage of Nextgenschool Application");
		SpringApplication.run(NextgenschoolApplication.class, args);
	}




}

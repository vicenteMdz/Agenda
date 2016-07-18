package com.meltsan.Agenda.util;

import org.glassfish.jersey.server.ResourceConfig;

public class KeyApplication extends ResourceConfig {
	public KeyApplication() {
		packages("com.meltsan.Agenda.service");
	}
}

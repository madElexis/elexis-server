package info.elexis.server.core.internal;

import java.io.IOException;
import java.util.Dictionary;
import java.util.Hashtable;

import org.osgi.framework.Constants;
import org.osgi.service.cm.Configuration;
import org.osgi.service.cm.ConfigurationAdmin;
import org.osgi.service.component.annotations.Activate;
import org.osgi.service.component.annotations.Component;
import org.osgi.service.component.annotations.Reference;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import info.elexis.server.core.Host;

@Component(immediate = true)
public class SwaggerConfigurator {

	private ConfigurationAdmin configAdmin;

	private Logger log = LoggerFactory.getLogger(SwaggerConfigurator.class);

	private static final String SERVICE_PID = "com.eclipsesource.jaxrs.swagger.config";

	@Reference
	void bindConfigurationAdmin(ConfigurationAdmin configAdmin) {
		this.configAdmin = configAdmin;
	}

	@Activate
	void activate() {
		try {
			Configuration config = configAdmin.getConfiguration(SERVICE_PID, null);
			Dictionary<String, Object> properties = config.getProperties();
			if (properties == null) {
				properties = new Hashtable<String, Object>();
				properties.put(Constants.SERVICE_PID, SERVICE_PID);
			}

			properties.put("swagger.host", Host.getBaseUrlSecure());
			properties.put("swagger.basePath", "/services");
			properties.put("swagger.info.title", "Elexis-Server");
			properties.put("swagger.info.version", "1.6");
			properties.put("swagger.scheme.https", "");

			properties.put("swagger.securityDefinition.type.esoauth", "oauth2");
			properties.put("swagger.securityDefinition.esoauth.flow", "password");
			properties.put("swagger.securityDefinition.esoauth.tokenUrl", Host.getOpenIDBaseUrlSecure() + "token");
			properties.put("swagger.securityDefinition.esoauth.scopes.0", "esadmin");
			properties.put("swagger.securityDefinition.esoauth.scopes.0.description", "Elexis-Server system admin");

			config.update(properties);
		} catch (IOException e) {
			log.error("Error configuring swagger", e);
			e.printStackTrace();
		}
	}

}

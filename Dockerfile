# Use official Tomcat image
FROM tomcat:9.0

# Copy the WAR file into Tomcat's webapps folder
COPY target/nn_comp367lab2.war /usr/local/tomcat/webapps/

# Expose port 8080 for web traffic
EXPOSE 8080

# Start Tomcat when the container runs
CMD ["catalina.sh", "run"]

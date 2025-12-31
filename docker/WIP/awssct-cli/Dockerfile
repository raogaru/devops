# -----------------------------------------------------------
# AWS Schema Conversion Tool (SCT) CLI Dockerfile
# -----------------------------------------------------------
FROM amazonlinux:2

# Install prerequisites
RUN yum update -y && \
    yum install -y unzip wget java-1.8.0-openjdk && \
    yum clean all

# AWS SCT CLI download URL
ENV AWSSCT_VERSION=1.0.1 \
    AWSSCT_URL=https://s3.amazonaws.com/aws-schema-conversion-tool/cli/AWSSchemaConversionToolCLI-latest.zip

WORKDIR /opt/aws/sct

# Download SCT CLI
RUN wget -O sct-cli.zip ${AWSSCT_URL} && \
    unzip sct-cli.zip && \
    rm -f sct-cli.zip

# Add SCT CLI to PATH
ENV PATH="/opt/aws/sct:$PATH"

# Default entry prints SCT CLI help
ENTRYPOINT ["./AWSSchemaConversionToolCLI"]
CMD ["--help"]


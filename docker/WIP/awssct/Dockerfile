FROM amazonlinux:2

# Install required packages for GUI, VNC, X11, Java, and AWS SCT
RUN yum update -y 
RUN yum install -y java-1.8.0-openjdk wget unzip which 
RUN yum install -y xterm tigervnc-server xfce4-panel xfce4-session xfce4-settings xfwm4 xfdesktop 
RUN yum install -y fontconfig dejavu-sans-fonts
RUN yum install -y xorg-x11-server-Xvfb
RUN yum install -y xorg-x11-xauth
RUN yum install -y xorg-x11-utils
#RUN yum groupinstall -y "X Window System" "Fonts" 
RUN yum clean all

# Install noVNC + websockify (web-based VNC viewer)
WORKDIR /opt
RUN git clone https://github.com/novnc/noVNC.git && \
    git clone https://github.com/novnc/websockify.git && \
    ln -s /opt/noVNC/vnc_lite.html /opt/noVNC/index.html

# Download AWS SCT (GUI)
ENV SCT_URL="https://s3.amazonaws.com/aws-schema-conversion-tool/AWSSchemaConversionTool-latest.zip"

WORKDIR /opt/aws
RUN wget -O sct.zip "$SCT_URL" && \
    unzip sct.zip && \
    rm -f sct.zip

# Add SCT to PATH
ENV PATH="/opt/aws/AWSSchemaConversionTool:$PATH"

# Copy startup script
COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 5901
EXPOSE 6080

CMD ["/start.sh"]


FROM jenkins/jenkins:lts-jdk17

USER root

# Install Ansible and dependencies
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y software-properties-common && \
    apt-add-repository --yes --update ppa:ansible/ansible && \
    apt-get install -y ansible && \
    apt-get clean

USER jenkins

# Cài đặt curl, unzip và các thư viện cần thiết
RUN apt-get update && apt-get install -y \
    curl \
    unzip \
    groff \
    less \
    && rm -rf /var/lib/apt/lists/*

# Tải và cài đặt AWS CLI v2
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install && \
    rm -rf awscliv2.zip aws

# Kiểm tra AWS CLI
RUN aws --version

# Mặc định chạy shell
CMD ["sh"]

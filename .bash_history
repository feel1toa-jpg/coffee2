ls .ssh/
for i in 172.31.40.140;  do ping $i -c 3; done;
ls .ssh/
ssh-keyscan 172.31.40.140 >> .ssh/known_hosts
cat .ssh/known_hosts 
touch lab-iac-0205-2.pem
vi lab-iac-0205-2.pem
chmod 600 lab-iac-0205-2.pem
ssh -i lab-iac-0205-2.pem ec2-user@172.31.40.140 hostname
ls
sudo ssh ec2-user@172.31.40.140
ls
cd .ssh
ls
vi config
ssh ec-user@172.31.40.140
vi config
ssh ec-user@172.31.40.140
vi config
ssh ec-user@172.31.40.140
vi config
ssh ec-user@172.31.40.140
ssh ec2-user@172.31.40.140
ls
vi inv
exit
ls
vi inv
cat inv
ansible all -i inv -m ping
ansible seoul -i inv -m shell -a "systemctl restart httpd" --become
ansible seoul -i inv -m shell -a "yum -y install httpd" --become
vi web.yml
ansible-playbook web.yml -i inv
ping www.google.com -c 3
for i in 172.31.11.226 172.31.2.121;do ping $i -c 3; done;
for i in 172.31.11.226 172.31.2.121;do ssh ec2-user@$i hostname ; done;
ls
ls .ssh/
cat .ssh/known_hosts 
cat .ssh/authorized_keys 
rm -rf .ssh/known_hosts 
ssh-keyscan 172.31.11.226 >> .ssh/known_hosts
ssh-keyscan 172.31.2.121 >> .ssh/known_hosts
cat .ssh/known_hosts 
# 테스트로 그냥 키페어 만들어보기
ssh-keygen -q -N "" -f test.pem
ls
cd
touch lab-iac-0205.pem
vi lab-iac-0205.pem 
chmod 600 lab-iac-0205.pem 
ssh -i lab-iac-0205.pem ec2-user@172.31.11.226
ssh -i lab-iac-0205.pem ec2-user@172.31.11.226 hostname
ssh -i lab-iac-0205.pem ec2-user@172.31.2.121 hostname
for i in 172.31.11.226 172.31.2.121;do ssh -i lab-iac-0205.pem ec2-user@$i hostname; done;
cd
cd .ssh
ls
touch config
vi config
cat config
vi config
ssh 172.31.11.226 hostname
chmod 600 config
ssh 172.31.11.226 hostname
sudo yum update -y && sudo amazon-linux-extras install ansible2 -y
cd ..
sudo yum update -y && sudo amazon-linux-extras install ansible2 -y
ansible 설치하기
아마존 리눅스
[ec2-user@ip-172-31-2-142 ~]$ sudo yum update -y && sudo amazon-linux-extras install ansible2 -y
[ec2-user@ip-172-31-2-142 ~]$ sudo ansible --version
ansible 2.9.23
  config file = /etc/ansible/ansible.cfg
  configured module search path = [u'/root/.ansible/plugins/modules', u'/usr/share/ansible/plugins/modules']
  ansible python module location = /usr/lib/python2.7/site-packages/ansible
  executable location = /bin/ansible
  python version = 2.7.18 (default, Jan 23 2025, 17:44:13) [GCC 7.3.1 20180712 (Red Hat 7.3.1-17)]
[ec2-user@ip-172-31-2-142 ~]$
Rocky 
dnf -y install ansible
ubuntu
apt install -y ansible
 sudo ansible --version
ansible localhost -m ping
cd .ssh
ansible --version
ansible localhost -m ping
ansible localhost -m setup
ansible localhost -m setup | grep "ansible_distribution"
ansible localhost -m setup | grep "ansible_pkg"
cd
# 기본 인벤토리
cat /etc/ansible/hosts
cd
touch inv
vi inv
cat inv
ansible all -i inv -m ping
ansible all -i inv -m setup | grep "ansible_distri"
ansible all -i inv -m setup | grep "ansible_pkg_mgr"
vi inv
ansible seoul -i inv -m setup | grep "ansible_pkg_mgr"
# 용도에 따라 나눠보자
vi inv
ansible web -i inv -m ping
ansible seoul -i inv -m ping
ansible web -i inv -m ping
vi inv
ansible seoul -i inv -m ping
ansible web -i inv -m ping
ansible seoul -i inv -m shell -a hostname
cat inv
ansible seoul -i inv -m shell -a yum -y install httpd"
ansible seoul -i inv -m shell -a "yum -y install httpd"
sudo ansible seoul -i inv -m shell -a "yum -y install httpd"
ansible seoul -i inv -m shell -a "yum -y install httpd" --become
ansible seoul -i inv -m shell -a "systemctl restart httpd" --become
curl -L http://www.daum.net >> /var/www/html/index.html
ansible seoul -i inv -m shell -a "curl -L http://www.daum.net >> /var/www/html/index.html" --become
ansible seoul -i inv -m shell -a "yum -y install httpd" --become
ansible seoul -i inv -m yum -a "name=httpd state=present" --become
ansible seoul -i inv -m yum -a "name=httpd state=absent" --become
ansible seoul -i inv -m yum -a "name=httpd state=present" --become
ansible seoul -i inv -m command -a "which httpd" 
ansible seoul -i inv -m command -a "which httpd" --become
ansible seoul -i inv -m service -a "name=httpd state=start" --become
ansible seoul -i inv -m service -a "name=httpd state=started" --become
echo "<h2>HELLO ANSIBLE</h2>" > index.html
cat index.html
ansible seoul -i inv -m copy -a "src=index.html dest=/var/www/html/index.html" --become
ansible seoul -i inv -m service -a "name=httpd state=restarted" --become
ansible seoul -i inv -m yum -a "name=httpd state=present" --become
ls
cat inv
ansible web -i inv -m shell -a "hostname"
ansible web -i inv -m shell -a "ping www.google.com -c 3"
ansible web -i inv -m shell -a "yum -y install httpd" --become
ansible seoul -i inv -m service -a "name=httpd state=restarted" --become
ansible seoul -i inv -m copy -a "src=index.html dest=/var/www/html/index.html" --become
ansible -i inv -m service -a "name=httpd state=absent" --become
ansible seoul -i inv -m service -a "name=httpd state=absent" --become
ansible seoul -i inv -m service -a "name=httpd state=stopped" --become
ansible seoul -i inv -m service -a "name=httpd state=absent" --become
ansible seoul -i inv -m yum -a "name=httpd state=absent" --become
ansible seoul -i inv -m command -a "which httpd" --become
yum grouplist
#ansible playbook 만들기
touch web.yml
vi web.yml
ansible-playbook web.yml -i inv --become
ansible-playbook web.yml -i inv
ls
cat inv
ping 172.31.11.226 -c 3
ping 172.31.2.121
cat .ssh/config 
ansible-playbook web.yml -i inv
vi web.yml 
ansible-playbook web.yml -i inv
vi web.yml 
ansible-playbook web.yml -i inv
vi web.yml 
ansible-playbook web.yml -i inv
ansible seoul -m ping 
ansible seoul -i inv -m ping 
ansible seoul -i inv -m command -a "yum -y install httpd" --become
ansible seoul -i inv -m command -a "yum -y update" --become
ansible-playbook web.yml -i inv
cat web.yml
echo "<h2>HOME</h2>" > home.html
echo home.html
vi web.yml
ansible-playbook web.yml -i inv
ls
ansible all -i inv -m ping
vi inv
ansible all -i inv -m ping
ls
cat inv
cat /etc/ansible/hosts 
web.yml
vi web.yml
cat web.yml
echo "alias anp='ansible-playbook'" >> ~/.bashrc
cat ~/.bashrc | grep alias
anp -i inv web.yml
source ~/.bashrc
anp -i inv web.yml
vi web.yml
anp -i inv web.yml
vi web.yml
anp -i inv web.yml
ansible seoul -i inv -m shell -a "ls /var/www/html" --become
ls -l
ansible seoul -i inv -m shell -a "ls-l /var/www/html" --become
ansible seoul -i inv -m shell -a "ls -l /var/www/html" --become
vi web.yml
anp -i inv web.yml
ansible seoul -i inv -m shell -a "cat /var/www/html" --become
ansible seoul -i inv -m shell -a "cat /var/www/html/a.txt" --become
vi web.yml
ansible seoul -i inv -m shell -a "cat /var/www/html/a.txt" --become
anp -i inv web.yml
ansible seoul -i inv -m shell -a "cat /var/www/html/a.txt" --become
cd /etc/ssh
ls
cd ..
ansible seoul -i inv -m shell -a "cat /etc/httpd/conf/httpd.conf | grep Listen" --become
ansible seoul -i inv -m shell -a "cat /etc/httpd/conf/httpd.conf | grep listen" --become
cd ..
ansible seoul -i inv -m shell -a "cat /etc/httpd/conf/httpd.conf | grep listen" --become
cd ..
exit
ansible seoul -i inv -m shell -a "cat /etc/httpd/conf/httpd.conf | grep listen" --become
ansible seoul -i inv -m shell -a "cat /etc/httpd/conf/httpd.conf | grep Listen" --become
vi web.yml
anp -i inv web.yml
vi web.yml
anp -i inv web.yml
ansible seoul -i inv -m shell -a "cat /etc/httpd/conf/httpd.conf | grep listen" --become
vi web.yml
anp -i inv web.yml
ansible seoul -i inv -m shell -a "cat /etc/httpd/conf/httpd.conf | grep listen" --become
vi web.yml
ls -al
rm -r .web.yml.swp
vi web.yml
anp -i inv web.yml
ansible seoul -i inv -m shell -a "cat /etc/httpd/conf/httpd.conf | grep listen" --become
ls -a
ls -al
vi web.yml
ansible seoul -i inv -m shell -a "cat /etc/httpd/conf/httpd.conf | grep listen" --become
anp -i inv web.yml
ansible seoul -i inv -m shell -a "cat /etc/httpd/conf/httpd.conf | grep listen" --become
ansible seoul -i inv -m shell -a "which httpd" --become
ansible seoul -i inv -m shell -a "cat /etc/httpd/conf/httpd.conf | grep listen" --become
ansible seoul -i inv -m yum -a "name=httpd state=present" --become
ansible seoul -i inv -m shell -a "cat /etc/httpd/conf/httpd.conf | grep listen" --become
vi web.yml
anp -i inv web.yml
ansible seoul -i inv -m shell -a "cat /etc/httpd/conf/httpd.conf | grep listen" --become
vi web.yml
anp -i inv web.yml
vi web.yml
anp -i inv web.yml
vi web.yml
fatal: [db1]: FAILED! => {"changed": false, "msg": "Unable to start service httpd: Job for httpd.service failed because the control process exited with error code. See \"systemctl status httpd.service\" and \"journalctl -xe\" for details.\n"}
fatal: [web1]: FAILED! => {"changed": false, "msg": "Unable to start service httpd: Job for httpd.service failed because the control process exited with error code. See \"systemctl status httpd.service\" and \"journalctl -xe\" for details.\n"}
PLAY RECAP *********************************************************************
db1                        : ok=2    changed=0    unreachable=0    failed=1    skipped=0    rescued=0    ignored=0
web1                       : ok=2    changed=0    unreachable=0    failed=1    skipped=0    rescued=0    ignored=0
[ec2-user@ip-172-31-6-2 ~]$ vi web.yml
[ec2-user@ip-172-31-6-2 ~]$
fatal: [db1]: FAILED! => {"changed": false, "msg": "Unable to start service httpd: Job for httpd.service failed because the control process exited with error code. See \"systemctl status httpd.service\" and \"journalctl -xe\" for details.\n"}
fatal: [web1]: FAILED! => {"changed": false, "msg": "Unable to start service httpd: Job for httpd.service failed because the control process exited with error code. See \"systemctl status httpd.service\" and \"journalctl -xe\" for details.\n"}
PLAY RECAP *********************************************************************
db1                        : ok=2    changed=0    unreachable=0    failed=1    skipped=0    rescued=0    ignored=0
web1                       : ok=2    changed=0    unreachable=0    failed=1    skipped=0    rescued=0    ignored=0
[ec2-user@ip-172-31-6-2 ~]$ vi web.yml
[ec2-user@ip-172-31-6-2 ~]$
vi web.yml 
anp -i inv web.yml
vi web.yml 
anp -i inv web.yml
vi web.yml 
anp -i inv web.yml
systemctl status httpd.service
ansible systemctl status httpd.service
ansible seoul -i inv -m shell -a "systemctl status httpd.service" --become
web1 | FAILED | rc=3 >>
● httpd.service - The Apache HTTP Server
   Loaded: loaded (/usr/lib/systemd/system/httpd.service; enabled; vendor preset: disabled)
   Active: failed (Result: exit-code) since Thu 2025-02-06 03:24:10 UTC; 45s ago
     Docs: man:httpd.service(8)
  Process: 12626 ExecStart=/usr/sbin/httpd $OPTIONS -DFOREGROUND (code=exited, status=1/FAILURE)
 Main PID: 12626 (code=exited, status=1/FAILURE)
   Status: "Reading configuration..."
Feb 06 03:24:10 ip-172-31-11-226.ap-northeast-2.compute.internal systemd[1]: Starting The Apache HTTP Server...
Feb 06 03:24:10 ip-172-31-11-226.ap-northeast-2.compute.internal httpd[12626]: AH00526: Syntax error on line 363 of /etc/httpd/conf/httpd.conf:
Feb 06 03:24:10 ip-172-31-11-226.ap-northeast-2.compute.internal httpd[12626]: Cannot define multiple Listeners on the same IP:port
Feb 06 03:24:10 ip-172-31-11-226.ap-northeast-2.compute.internal systemd[1]: httpd.service: main process exited, code=exited, status=1/FAILURE
Feb 06 03:24:10 ip-172-31-11-226.ap-northeast-2.compute.internal systemd[1]: Failed to start The Apache HTTP Server.
Feb 06 03:24:10 ip-172-31-11-226.ap-northeast-2.compute.internal systemd[1]: Unit httpd.service entered failed state.
Feb 06 03:24:10 ip-172-31-11-226.ap-northeast-2.compute.internal systemd[1]: httpd.service failed.non-zero return code
[WARNING]: Platform linux on host db1 is using the discovered Python
interpreter at /usr/bin/python, but future installation of another Python
interpreter could change this. See https://docs.ansible.com/ansible/2.9/referen
ce_appendices/interpreter_discovery.html for more information.
db1 | FAILED | rc=3 >>
● httpd.service - The Apache HTTP Server
   Loaded: loaded (/usr/lib/systemd/system/httpd.service; enabled; vendor preset: disabled)
   Active: failed (Result: exit-code) since Thu 2025-02-06 03:24:10 UTC; 45s ago
     Docs: man:httpd.service(8)
  Process: 14203 ExecStart=/usr/sbin/httpd $OPTIONS -DFOREGROUND (code=exited, status=1/FAILURE)
 Main PID: 14203 (code=exited, status=1/FAILURE)
   Status: "Reading configuration..."
Feb 06 03:24:10 ip-172-31-2-121.ap-northeast-2.compute.internal systemd[1]: Starting The Apache HTTP Server...
Feb 06 03:24:10 ip-172-31-2-121.ap-northeast-2.compute.internal httpd[14203]: AH00526: Syntax error on line 363 of /etc/httpd/conf/httpd.conf:
Feb 06 03:24:10 ip-172-31-2-121.ap-northeast-2.compute.internal httpd[14203]: Cannot define multiple Listeners on the same IP:port
Feb 06 03:24:10 ip-172-31-2-121.ap-northeast-2.compute.internal systemd[1]: httpd.service: main process exited, code=exited, status=1/FAILURE
Feb 06 03:24:10 ip-172-31-2-121.ap-northeast-2.compute.internal systemd[1]: Failed to start The Apache HTTP Server.
Feb 06 03:24:10 ip-172-31-2-121.ap-northeast-2.compute.internal systemd[1]: Unit httpd.service entered failed state.
Feb 06 03:24:10 ip-172-31-2-121.ap-northeast-2.compute.internal systemd[1]: httpd.service failed.non-zero return code
ansible seoul -i inv -m shell -a "grep -n 'Listen' /etc/httpd/conf/httpd.conf" --become
ansible seoul -i inv -m shell -a "sed -i 's/^Listen 80/#Listen 80/' /etc/httpd/conf/httpd.conf" --become
anp -i inv web.yml
ansible seoul -i inv -m shell -a "grep -n 'Listen' /etc/httpd/conf/httpd.conf" --become
ansible seoul -i inv -m shell -a "vi /etc/httpd/conf/httpd.conf" --become
vi /etc/httpd/conf/httpd.conf
ansible seoul -i inv -m shell -a "vi /etc/httpd/conf/httpd.conf" --become
cd /etc/httpd
cd /etc
ls
ansible seoul -i inv -m shell -a "systemctl restart httpd" --become
cd
ansible seoul -i inv -m shell -a "systemctl restart httpd" --become
ansible seoul -i inv -m shell -a "find /etc -name httpd.conf" --become
ansible seoul -i inv -m shell -a "cp /etc/httpd/conf/httpd.conf.default /etc/httpd/conf/httpd.conf" --become
ansible seoul -i inv -m shell -a "vi /etc/httpd/conf/httpd.conf" --become
ansible seoul -i inv -m shell -a "cat /etc/httpd/conf/httpd.conf" --become
anp -i inv web.yml
ansible seoul -i inv -m shell -a "cat /etc/httpd/conf/httpd.conf | grep Listen" --become
vi web.yml 
anp -i inv web.yml
ansible seoul -i inv -m shell -a "cat /etc/httpd/conf/httpd.conf | grep Listen" --become
vi web.yml 
anp -i inv web.yml
vi web.yml 
anp -i inv web.yml
touch local.yml
vi local.yml 
anp local.yml
vi local.yml 
anp local.yml
vi local.yml 
anp local.yml
vi local.yml 
anp local.yml
touch vars.yml
vi vars.yml
vi local.yml
anp local.yml
vi local.yml
vi vars.yml
vi local.yml
anp local.yml
cat loacl.yml
cat local.yml
vi vars.yml
cat vars.yml
anp local.yml
ping 172.31.13.159
ping 172.31.1.62
ssh-keyscan 172.31.13.159 >> ~/.ssh/known_hosts
ssh-keyscan 172.31.1.62 >> ~/.ssh/known_hosts
cat ~/.ssh/known_hosts
cat ~/.ssh/config 
vi ~/.ssh/config 
ping 172.31.13.159
ping 172.31.1.62
vi inv
ansible -i inv ansible all -m ping -i inventory.ini
ansible all -m ping -i inventory.ini
ansible all -m ping -i inv
vi inv
ansible all -m ping -i inv
vi inv
ansible ubunut -m ping -i inv
ansible ubuntu -m ping -i inv
vi inv
vi ~/.ssh/config 
ansible ubuntu -m ping -i inv
vi ~/.ssh/config 
cat ~/.ssh/known_hosts 
ansible ubuntu -m ping -i inv
cat ~/.ssh/known_hosts 
vi ~/.ssh/config 
cat ~/.ssh/known_hosts 
ansible ubuntu -m ping -i inv
cat inv
cat ~/.ssh/known_hosts 
vi ~/.ssh/config 
ansible ubuntu -m ping -i inv
ansible ubuntu -i inv -m ping
ping 172.31.13.159
ping 172.31.1.62
ansible ubuntu -i inv -m ping --become
cat ~/.ssh/known_hosts
ssh-keyscan 172.31.6.222
ssh-keyscan 172.31.6.222 >> ~/.ssh/known_hosts 
ssh-keyscan 172.31.3.218 >> ~/.ssh/known_hosts 
vi ~/.ssh/config 
vi inv
ansible ubuntu -i inv -m ping --become
ansible seoul -i inv -m ping --become
vi inv
ansible all -i inv -m ping
ansible amazon -i inv -m ping
ansible ubuntu -i inv -m ping
ansible amazon -i inv -m setup > amazon.txt
ansible ubuntu -i inv -m setup > ubuntu.txt
ls
cat amazon.txt |grep "ansible_pkg_mgr"
cat ubuntu.txt |grep "a"
cat amazon.txt |grep "ansible_distribution"
cat ubuntu.txt |grep "ansible_distribution"
touch webserver.yml
vi webserver.yml
anp -i inv webserver.yml
anp all -i inv webserver.yml
anp -i inv webserver.yml
anp webserver.yml -i inv
vi webserver.yml
anp webserver.yml -i inv
vi webserver.yml
anp webserver.yml -i inv
touch remove_webserver.yml
vi remove_webserver.yml
cat remove_webserver.yml
anp webserver.yml -i inv
anp remove_webserver.yml -i inv
cat 
cat webserver.yml
cp webserver.yml amazon.yml
cp webserver.yml ubuntu.yml
cp webserver.yml include_tasks_webserver.yml
vi amazon.yml
ls
ls -a
ls -al
rm amazon.yml.swp
rm -r amazon.yml.swp
rm -r .amazon.yml.swp
ls -al
vi amazon.yml
vi ubuntu.yml
vi amazon.yml
vi include_tasks_webserver.yml
cat amazon.yml
cat ubuntu.yml
vi amazon.yml
rm -r amazon.yml.swp
rm -r .amazon.yml.swp
vi amazon.yml
vi ubuntu.yml
anp -i inv remove_webserver.yml 
anp -i inv include_tasks_webserver.yml 
vi include_tasks_webserver.yml 
anp -i inv remove_webserver.yml 
touch if_webserver.yml
vi if_webserver.yml
ls
vi amazon.yml 
vi ubuntu.yml 
vi include_tasks_webserver.yml 
anp -i inv include_tasks_webserver.yml 
ansible amazon -i inv -m shell -a "yum -y install httpd" --become
anp -i inv include_tasks_webserver.yml 
ls
vi remove_webserver.yml 
anp -i inv remove_webserver.yml 
vi if_webserver.yml
anp if_webserver.yml -i inv
ansible amazon -i inv -m shell -a "yum -y install httpd" --become
anp if_webserver.yml -i inv
ansible amazon -i inv -m shell -a "yum -y install httpd" --become
anp if_webserver.yml -i inv
vi if_webserver.yml
anp if_webserver.yml 
ansible ubuntu -i inv -m setup 
ansible remove_webserver.yml -i inv
anp remove_webserver.yml -i inv
cat if_webserver.yml 
vi if_webserver.yml 
anp if_webserver.yml -i inv
ansible amazon -i inv -m shell -a "yum -y install httpd" --become
anp if_webserver.yml -i inv
sudo yum list | grep java
sudo yum install -y java-17-amazon-corretto-devel.x86_64
sudo yum install -y jenkins
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo yum install -y jenkins
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo systemctl daemon-reload
sudo systemctl start jenkins
sudo yum install -y jenkins
sudo systemctl daemon-reload
sudo systemctl start jenkins
cd /var/lib/jenkins/secrets/initialAdminPassword
sudo cd /var/lib/jenkins/secrets/initialAdminPassword
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
ls
git init
sudo yum update -y
sudo yum install -y git
vi inv
ls
vi inv
git init
sudo -i
git init
git remote add origin https://github.com/feel1toa-jpg/coffee
git add remove_webserver.yml
git add inv
git add amazon.yml
git add ubuntu.yml
git add if_webserver.yml
git commit -m "커피마시고싶다.."
git push
git branch
git push -u origin master
git push origin master
git push -u origin master
git push origin masterfatal: Authentication failed for 'https://github.com/feel1toa-jpg/coffee/'
[ec2-user@ip-172-31-6-2 ~]$ git push -u origin master
Username for 'https://github.com': feel1toa-jpg
Password for 'https://feel1toa-jpg@github.com':
remote: Permission to feel1toa-jpg/coffee.git denied to feel1toa-jpg.
fatal: unable to access 'https://github.com/feel1toa-jpg/coffee/': The requested URL returned error: 403
fatal: Authentication failed for 'https://github.com/feel1toa-jpg/coffee/'
[ec2-user@ip-172-31-6-2 ~]$ git push -u origin master
Username for 'https://github.com': feel1toa-jpg
Password for 'https://feel1toa-jpg@github.com':
remote: Permission to feel1toa-jpg/coffee.git denied to feel1toa-jpg.
fatal: unable to access 'https://github.com/feel1toa-jpg/coffee/': The requested URL returned error: 403
git status
git add .
git commit -m "커밋 메시지"
git commit -m "커피 마시고 싶다.."
git push
git push origin master
git push
git push origin master
git remote set-url origin https://github.com/feel1toa-jpg/coffee
git push origin master
ls
cd jenkins

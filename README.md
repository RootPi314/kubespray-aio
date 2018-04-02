Kubespray AIO provides a quick and easy way to run an all-in-one Kubernetes cluster.

## Usage

### Vagrant
```
git clone https://github.com/RootPi314/kubespray-aio.git
cd kubespray-aio
vagrant up
```

### Cloud providers
The `cloud-init.yml` is usable on most cloud providers

#### OpenStack
```
git clone https://github.com/RootPi314/kubespray-aio.git
openstack server create my-instance \
  --image my-ubuntu-16.04 \
  --flavor my-flavor \
  --user-data kubespray-aio/cloud-init.yml
```

#### Google Cloud
```
git clone https://github.com/RootPi314/kubespray-aio.git
gcloud compute instances create my-instance \
    --image my-ubuntu-16.04 \
    --metadata-from-file user-data=kubespray-aio/cloud-init.yml
```

#### AWS EC2
```
git clone https://github.com/RootPi314/kubespray-aio.git
aws ec2 run-instances --image-id my-ubuntu-16.04 \
  --instance-type t2.small \
  --user-data file://kubespray-aio/cloud-init.yml
```


### Local host
To install it locally on a Ubuntu 16.04 host do the following:
```
git clone https://github.com/RootPi314/kubespray-aio.git
cd kubespray-aio
./install.sh
```

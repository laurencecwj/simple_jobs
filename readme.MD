
## 注意：

1. 要enable skypilot[gcp]:

pip install skypilot[gcp]

2. 要授权给本机(gcp的vm instance)

gcloud auth application-default login


### 使用过程
1. sky launch setup.yaml

可能的响应为
YAML to run: setup.yaml
Considered resources (3 nodes):

| CLOUD   | INSTANCE               | vCPUs     | Mem(GB)     | ACCELERATORS     | REGION/ZONE      | COST ($)     | CHOSEN
| ------- | ---------------------- | --------- | ----------- | ---------------- | ---------------- | ------------ | -------
| GCP     | e2-highmem-2[Spot]     | 2         | 16          | -                | asia-east2-a     | 0.07         |   ✔

Launching a new cluster 'sky-758d-laurence'. Proceed? [Y/n]:

在输入y以后，可能得到的响应：

(worker2, rank=2, pid=4071, ip=10.170.0.12) setup done with node: 1

(worker1, rank=1, pid=4056, ip=10.170.0.10) setup done with node: 2

Job ID: 1

📋 Useful Commands

├── To cancel the job:          sky cancel sky-758d-laurence 1

├── To stream job logs:         sky logs sky-758d-laurence 1

└── To view job queue:          sky queue sky-758d-laurence

Cluster name: sky-758d-laurence

├── To log into the head VM:    ssh sky-758d-laurence

├── To submit a job:            sky exec sky-758d-laurence yaml_file

├── To stop the cluster:        sky stop sky-758d-laurence

└── To teardown the cluster:    sky down sky-758d-laurence

2. sky exec sky-758d-laurence demo.yaml --env PARTITION="foobar2005"

其中的sky-758d-laurence就是刚才新建的cluster name

还可以用sky status查看所有的cluster names

注意：

PARTITION="foobar2005"将作为环境变量，在demo.yaml的run区域的bash simple_jobs/run.sh中生效；最终可以在结点上的output.txt中看到

cat output.txt 

hello, world! from job 1

partition id: foobar2005
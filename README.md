# ez-drozer
Easy way to run a drozer console

# How to build
```
docker build -t ez-drozer .
```

# How to run
```
docker run -ti ez-drozer <drozer args>
```

# Example
```
git clone https://github.com/krd78/ez-drozer 
docker build -t ez-drozer ez-drozer
docker run -ti ez-drozer connect 192.168.0.3
```

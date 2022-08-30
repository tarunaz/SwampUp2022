cd ./example-projects/maven-example
# config Maven
jf mvnc --server-id-resolve tarunsaas --server-id-deploy tarunsaas --repo-resolve-releases maven-virtual --repo-resolve-snapshots maven-virtual --repo-deploy-releases maven-virtual --repo-deploy-snapshots maven-virtual

# Build Maven Project
jf rt mvn clean install -f pom.xml --build-name tarun-maven --build-number 2.0.0

jf rt bce tarun-maven 2.0.0
jf rt bag tarun-maven 2.0.0
jf rt bp tarun-maven 2.0.0

cd ../npm-example

# Config NPM
jf npmc --server-id-resolve tarunsaas --server-id-deploy tarunsaas --repo-resolve npm-virtual --repo-deploy npm-virtual

# Build NPM Project
jf npm install --build-name tarun-npm --build-number 2.0.0
jf npm publish --build-name tarun-npm --build-number 2.0.0

jf rt bce tarun-npm 2.0.0
jf rt bag tarun-npm 2.0.0
jf rt bp tarun-npm 2.0.0



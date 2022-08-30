cd ./example-projects/maven-example
# config Maven
jf mvnc --server-id-resolve tarunsaas1 --server-id-deploy tarunsaas1 --repo-resolve-releases maven-virtual --repo-resolve-snapshots maven-virtual --repo-deploy-releases maven-virtual --repo-deploy-snapshots maven-virtual

# Build Maven Project
jf rt mvn clean install -f pom.xml --build-name jfrog-maven --build-number 2.0.0

jf rt bce jfrog-maven 2.0.0
jf rt bag jfrog-maven 2.0.0
jf rt bp jfrog-maven 2.0.0

cd ../npm-example

# Config NPM
jf npmc --server-id-resolve tarunsaas1 --server-id-deploy tarunsaas1 --repo-resolve npm-virtual --repo-deploy npm-virtual

# Build NPM Project
jf npm install --build-name jfrog-npm --build-number 2.0.0
jf npm publish --build-name jfrog-npm --build-number 2.0.0

jf rt bce jfrog-npm 2.0.0
jf rt bag jfrog-npm 2.0.0
jf rt bp jfrog-npm 2.0.0



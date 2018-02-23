node {
    def app

    stage('Clone repository') {
        /* Let's make sure we have the repository cloned to our workspace */

        checkout scm
    }

    stage('Build image') {
        /* This builds the actual image; synonymous to
         * docker build on the command line */
<<<<<<< HEAD
		/* app = docker.build("ernesen/icp-tech-talks") */
        app = docker.build("${env.IMAGE_BUILD}")
=======
	/* app = docker.build("ernesen/icp-tech-talks") */
        app = docker.build("${env.IMAGE_BUILD}")
	/*sh 'echo "Build image"' */
>>>>>>> 1cc41561846f3e43725e70308bc3c929eee41967
    }

    stage('Test image') {
        /* Ideally, we would run a test framework against our image.
         * For this example, we're using a Volkswagen-type approach ;-) */
<<<<<<< HEAD

        app.inside {
            sh 'echo "Tests passed"'
        }
=======
	
	app.inside {
            sh 'echo "Tests passed"'
        }
	sh 'echo "Tests passed"'
>>>>>>> 1cc41561846f3e43725e70308bc3c929eee41967
    }

    stage('Push image') {
        /* Finally, we'll push the image with two tags:
         * First, the incremental build number from Jenkins
         * Second, the 'latest' tag.
         * Pushing multiple tags is cheap, as all the layers are reused. */
        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
<<<<<<< HEAD
        }
    }
/*	
    stage('Deploy helm') {
        /* This will push the actual helm chart
         * helm deploy chart on the command line */
        sh 'helm install --name myemp myemp' 
=======
        } */
	sh 'echo "Push image"'
>>>>>>> 1cc41561846f3e43725e70308bc3c929eee41967
    }
*/
}

const gulp = require('gulp')
const connect = require('gulp-connect')

gulp.task('serve', () => {
  connect.server({
    root: 'public/reformation.arizona.edu',
    port: 8888
  })
})

gulp.task('default', ['connect'])
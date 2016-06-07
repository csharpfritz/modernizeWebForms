var gulp = require("gulp"),
		cssmin = require("gulp-cssmin"),
		rename = require("gulp-rename");

gulp.task("css-minify", function () {


	return gulp.src("6/style.css")
		.pipe(cssmin())
		.pipe(rename("style.min.css"))
		.pipe(gulp.dest("6"));

});
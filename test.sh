#!/bin/bash
rm -f movieSchema.sqlite
touch movieSchema.sqlite

score=0

sqlite3 movieSchema.sqlite < createmovieSchema.sql

db="movieSchema.sqlite"

sqlite3 $db < emptyMovies.sql
sqlite3 $db < loadMovies.sql

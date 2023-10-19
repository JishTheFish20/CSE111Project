CREATE TABLE actors (
    nameID              char(75),
    primaryName         char(50),
    birthYear           date,
    deathYear           date
);

CREATE TABLE actor_professions (
    nameID               char(75),
    profession           VARCHAR(255),
    FOREIGN KEY (nameID) REFERENCES names(nameID)
);

CREATE TABLE actor_known_titles (
    nameID                char(75),
    titleID               VARCHAR(255),
    FOREIGN KEY (nameID)  REFERENCES names(nameID)
);

CREATE TABLE movieTitles (
    titleID              char(75),
    ordering             INTEGER,
    titleName            char(50),
    region               char(50),
    languages            char(10),
    types                char(50),
    attributes           char(50),
    isOriginal           INTEGER
);

CREATE TABLE movieInfo (
    titleID              char(75),
    titleType            INTEGER,
    primaryTitle         char(50),
    originalTitle        char(50),
    isAdult              INTEGER,
    startYear            date,
    endYear              date,
    runTimeMinutes       REAL,
    genre                VARCHAR(255)
);

CREATE TABLE movieCrew (
    titleID              char(75),
    directors            VARCHAR(255),
    writers              VARCHAR(255)
);

CREATE TABLE episodes (
    episodeID            char(75),
    showID               char(75),
    seasonNumber         INTEGER,
    episodeNumber        INTEGER
);

CREATE TABLE crewInfo (
    titleID            char(75),
    ordering           INTEGER,
    nameID             char(75),
    jobCategory        char(50),
    job                char(50),
    characterName      char(50)
);

CREATE TABLE movieRatings (
    titleID            char(75),
    averageRating      FLOAT,
    votes              INTEGER
);


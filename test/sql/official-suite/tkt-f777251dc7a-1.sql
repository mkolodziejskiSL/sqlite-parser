-- original: tkt-f777251dc7a.test
-- credit:   http://www.sqlite.org/src/tree?ci=trunk&name=test

CREATE TEMP TABLE t1(x UNIQUE);
     INSERT INTO t1 VALUES(1);
     CREATE TABLE t2(x, y);
     INSERT INTO t2 VALUES(1, 2);
     CREATE TEMP TABLE t3(w, z)
;INSERT OR ROLLBACK INTO t1 VALUES(1)
;DROP TABLE IF EXISTS t1;
     DROP TABLE IF EXISTS t2;
     DROP TABLE IF EXISTS t3;

     CREATE TEMP TABLE t1(x UNIQUE);
     INSERT INTO t1 VALUES(1);
     CREATE TABLE t2(x, y);
     INSERT INTO t2 VALUES(1, 2)
;BEGIN IMMEDIATE;
    CREATE TEMP TABLE t3(w, z)
;DROP TABLE IF EXISTS t1;
    DROP TABLE IF EXISTS t2;
    DROP TABLE IF EXISTS t3;

    CREATE TEMP TABLE t1(x);
    CREATE TABLE t2(x);
    CREATE TABLE t3(x);
  
    INSERT INTO t1 VALUES(1);
    INSERT INTO t1 VALUES(2);
    INSERT INTO t2 VALUES(1);
    INSERT INTO t2 VALUES(2)
;INSERT INTO t3 VALUES('hello')
;SELECT ins() AS x FROM t2 UNION ALL SELECT ins() AS x FROM t1
;SELECT * FROM t3;
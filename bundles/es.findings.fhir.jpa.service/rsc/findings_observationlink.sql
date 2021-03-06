CREATE TABLE IF NOT EXISTS CH_ELEXIS_CORE_FINDINGS_OBSERVATIONLINK (
  ID varchar(25) DEFAULT NULL,
  lastupdate bigint(20) DEFAULT NULL,
  deleted char(1) DEFAULT '0',
  sourceid varchar(80) DEFAULT NULL,
  targetid varchar(80) DEFAULT NULL,
  type varchar(8) DEFAULT NULL,
  description varchar(255) DEFAULT NULL
);
INSERT INTO  CH_ELEXIS_CORE_FINDINGS_OBSERVATIONLINK (ID, sourceid) VALUES ('VERSION','1.0.0');

CREATE INDEX CH_ELEXIS_CORE_FINDINGS_OBSERVATIONLINK_IDX1 ON CH_ELEXIS_CORE_FINDINGS_OBSERVATIONLINK (sourceid);
CREATE INDEX CH_ELEXIS_CORE_FINDINGS_OBSERVATIONLINK_IDX2 ON CH_ELEXIS_CORE_FINDINGS_OBSERVATIONLINK (targetid);

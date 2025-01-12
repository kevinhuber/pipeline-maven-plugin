DROP INDEX IDX_MAVEN_ARTIFACT;
CREATE INDEX IDX_MAVEN_ARTIFACT on MAVEN_ARTIFACT (GROUP_ID, ARTIFACT_ID, VERSION);

CREATE INDEX IDX_GENERATED_ARTIFACT ON GENERATED_MAVEN_ARTIFACT(artifact_id);
CREATE INDEX IDX_GENERATED_BUILD ON GENERATED_MAVEN_ARTIFACT(build_id);

CREATE INDEX IDX_DEPENDENCY_ARTIFACT ON MAVEN_DEPENDENCY (artifact_id);
CREATE INDEX IDX_DEPENDENCY_BUILD ON MAVEN_DEPENDENCY (build_id);

CREATE INDEX IDX_PARENT_ARTIFACT ON MAVEN_PARENT_PROJECT (artifact_id);
CREATE INDEX IDX_PARENT_BUILD ON MAVEN_PARENT_PROJECT (build_id);

CREATE INDEX IDX_JOB_NAME ON JENKINS_JOB (full_name, jenkins_master_id);

UPDATE VERSION SET VERSION = 13;


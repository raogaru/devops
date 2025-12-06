-- ================================================================================
-- WAIT CLASS and EVENTS
-- ================================================================================
-- WAIT CLASS

DROP VIEW IF EXISTS v$wait_event ;

DROP VIEW IF EXISTS v$wait_class ;

DROP TABLE IF EXISTS t$wait_class ;

CREATE TABLE IF NOT EXISTS t$wait_class (id integer, class varchar(10));

INSERT INTO t$wait_class (id, class) VALUES
(0,'Activity'),
(1,'Client'),
(2,'IPC'),
(3,'Timeout'),
(4,'IO'),
(5,'Bufferpin'),
(6,'Extension'),
(7,'Lwlock'),
(8,'Lock')
;

CREATE OR REPLACE VIEW v$wait_class AS
SELECT id as class_id, class as wait_class
FROM t$wait_class
ORDER BY id;
-- ================================================================================
-- WAIT EVENT

DROP TABLE IF EXISTS t$wait_event ;

CREATE TABLE IF NOT EXISTS t$wait_event (
class_id integer,
event_seq integer,
event_name varchar(50),
event_desc varchar(200)
);

-- Reference: src/backend/utils/activity/wait_event_namestxt 

-- ----------------------------------------
-- ClassName - Activity
INSERT INTO t$wait_event (class_id,event_seq,event_name,event_desc) VALUES
(0, 1,'ARCHIVER_MAIN','Waiting in main loop of archiver process'),
(0, 2,'AUTOVACUUM_MAIN','Waiting in main loop of autovacuum launcher process'),
(0, 3,'BGWRITER_HIBERNATE','Waiting in background writer process, hibernating'),
(0, 4,'BGWRITER_MAIN','Waiting in main loop of background writer process'),
(0, 5,'CHECKPOINTER_MAIN','Waiting in main loop of checkpointer process'),
(0, 6,'CHECKPOINTER_SHUTDOWN','Waiting for checkpointer process to be terminated'),
(0, 7,'IO_WORKER_MAIN','Waiting in main loop of IO Worker process'),
(0, 8,'LOGICAL_APPLY_MAIN','Waiting in main loop of logical replication apply process'),
(0, 9,'LOGICAL_LAUNCHER_MAIN','Waiting in main loop of logical replication launcher process'),
(0,10,'LOGICAL_PARALLEL_APPLY_MAIN','Waiting in main loop of logical replication parallel apply process'),
(0,11,'RECOVERY_WAL_STREAM','Waiting in main loop of startup process for WAL to arrive, during streaming recovery'),
(0,12,'REPLICATION_SLOTSYNC_MAIN','Waiting in main loop of slot sync worker'),
(0,13,'REPLICATION_SLOTSYNC_SHUTDOWN','Waiting for slot sync worker to shut down'),
(0,14,'SYSLOGGER_MAIN','Waiting in main loop of syslogger process'),
(0,15,'WAL_RECEIVER_MAIN','Waiting in main loop of WAL receiver process'),
(0,16,'WAL_SENDER_MAIN','Waiting in main loop of WAL sender process'),
(0,17,'WAL_SUMMARIZER_WAL','Waiting in WAL summarizer for more WAL to be generated'),
(0,18,'WAL_WRITER_MAIN','Waiting in main loop of WAL writer process')
;

-- ----------------------------------------
-- ClassName - Client
INSERT INTO t$wait_event (class_id,event_seq,event_name,event_desc) VALUES
(1, 1,'CLIENT_READ','Waiting to read data from the client'),
(1, 2,'CLIENT_WRITE','Waiting to write data to the client'),
(1, 3,'GSS_OPEN_SERVER','Waiting to read data from the client while establishing a GSSAPI session'),
(1, 4,'LIBPQWALRECEIVER_CONNECT','Waiting in WAL receiver to establish connection to remote server'),
(1, 5,'LIBPQWALRECEIVER_RECEIVE','Waiting in WAL receiver to receive data from remote server'),
(1, 6,'SSL_OPEN_SERVER','Waiting for SSL while attempting connection'),
(1, 7,'WAIT_FOR_STANDBY_CONFIRMATION','Waiting for WAL to be received and flushed by the physical standby'),
(1, 8,'WAL_SENDER_WAIT_FOR_WAL','Waiting for WAL to be flushed in WAL sender process'),
(1, 9,'WAL_SENDER_WRITE_DATA','Waiting for any activity when processing replies from WAL receiver in WAL sender process')
;
-- ----------------------------------------
-- ClassName - IPC
INSERT INTO t$wait_event (class_id,event_seq,event_name,event_desc) VALUES
(2, 1,'APPEND_READY','Waiting for subplan nodes of an <literal>Append</literal> plan node to be ready'),
(2, 2,'ARCHIVE_CLEANUP_COMMAND','Waiting for guc-archive-cleanup-command to complete'),
(2, 3,'ARCHIVE_COMMAND','Waiting for guc-archive-command to complete'),
(2, 4,'BACKEND_TERMINATION','Waiting for the termination of another backend'),
(2, 5,'BACKUP_WAIT_WAL_ARCHIVE','Waiting for WAL files required for a backup to be successfully archived'),
(2, 6,'BGWORKER_SHUTDOWN','Waiting for background worker to shut down'),
(2, 7,'BGWORKER_STARTUP','Waiting for background worker to start up'),
(2, 8,'BTREE_PAGE','Waiting for the page number needed to continue a parallel B-tree scan to become available'),
(2, 9,'BUFFER_IO','Waiting for buffer I/O to complete'),
(2,10,'CHECKPOINT_DELAY_COMPLETE','Waiting for a backend that blocks a checkpoint from completing'),
(2,11,'CHECKPOINT_DELAY_START','Waiting for a backend that blocks a checkpoint from starting'),
(2,12,'CHECKPOINT_DONE','Waiting for a checkpoint to complete'),
(2,13,'CHECKPOINT_START','Waiting for a checkpoint to start'),
(2,14,'EXECUTE_GATHER','Waiting for activity from a child process while executing a <literal>Gather</literal> plan node'),
(2,15,'HASH_BATCH_ALLOCATE','Waiting for an elected Parallel Hash participant to allocate a hash table'),
(2,16,'HASH_BATCH_ELECT','Waiting to elect a Parallel Hash participant to allocate a hash table'),
(2,17,'HASH_BATCH_LOAD','Waiting for other Parallel Hash participants to finish loading a hash table'),
(2,18,'HASH_BUILD_ALLOCATE','Waiting for an elected Parallel Hash participant to allocate the initial hash table'),
(2,19,'HASH_BUILD_ELECT','Waiting to elect a Parallel Hash participant to allocate the initial hash table'),
(2,20,'HASH_BUILD_HASH_INNER','Waiting for other Parallel Hash participants to finish hashing the inner relation'),
(2,21,'HASH_BUILD_HASH_OUTER','Waiting for other Parallel Hash participants to finish partitioning the outer relation'),
(2,22,'HASH_GROW_BATCHES_DECIDE','Waiting to elect a Parallel Hash participant to decide on future batch growth'),
(2,23,'HASH_GROW_BATCHES_ELECT','Waiting to elect a Parallel Hash participant to allocate more batches'),
(2,24,'HASH_GROW_BATCHES_FINISH','Waiting for an elected Parallel Hash participant to decide on future batch growth'),
(2,25,'HASH_GROW_BATCHES_REALLOCATE','Waiting for an elected Parallel Hash participant to allocate more batches'),
(2,26,'HASH_GROW_BATCHES_REPARTITION','Waiting for other Parallel Hash participants to finish repartitioning'),
(2,27,'HASH_GROW_BUCKETS_ELECT','Waiting to elect a Parallel Hash participant to allocate more buckets'),
(2,28,'HASH_GROW_BUCKETS_REALLOCATE','Waiting for an elected Parallel Hash participant to finish allocating more buckets'),
(2,29,'HASH_GROW_BUCKETS_REINSERT','Waiting for other Parallel Hash participants to finish inserting tuples into new buckets'),
(2,30,'LOGICAL_APPLY_SEND_DATA','Waiting for a logical replication leader apply process to send data to a parallel apply process'),
(2,31,'LOGICAL_PARALLEL_APPLY_STATE_CHANGE','Waiting for a logical replication parallel apply process to change state'),
(2,32,'LOGICAL_SYNC_DATA','Waiting for a logical replication remote server to send data for initial table synchronization'),
(2,33,'LOGICAL_SYNC_STATE_CHANGE','Waiting for a logical replication remote server to change state'),
(2,34,'MESSAGE_QUEUE_INTERNAL','Waiting for another process to be attached to a shared message queue'),
(2,35,'MESSAGE_QUEUE_PUT_MESSAGE','Waiting to write a protocol message to a shared message queue'),
(2,36,'MESSAGE_QUEUE_RECEIVE','Waiting to receive bytes from a shared message queue'),
(2,37,'MESSAGE_QUEUE_SEND','Waiting to send bytes to a shared message queue'),
(2,38,'MULTIXACT_CREATION','Waiting for a multixact creation to complete'),
(2,39,'PARALLEL_BITMAP_SCAN','Waiting for parallel bitmap scan to become initialized'),
(2,40,'PARALLEL_CREATE_INDEX_SCAN','Waiting for parallel <command>CREATE INDEX</command> workers to finish heap scan'),
(2,41,'PARALLEL_FINISH','Waiting for parallel workers to finish computing'),
(2,42,'PROCARRAY_GROUP_UPDATE','Waiting for the group leader to clear the transaction ID at transaction end'),
(2,43,'PROC_SIGNAL_BARRIER','Waiting for a barrier event to be processed by all backends'),
(2,44,'PROMOTE','Waiting for standby promotion'),
(2,45,'RECOVERY_CONFLICT_SNAPSHOT','Waiting for recovery conflict resolution for a vacuum cleanup'),
(2,46,'RECOVERY_CONFLICT_TABLESPACE','Waiting for recovery conflict resolution for dropping a tablespace'),
(2,47,'RECOVERY_END_COMMAND','Waiting for guc-recovery-end-command to complete'),
(2,48,'RECOVERY_PAUSE','Waiting for recovery to be resumed'),
(2,49,'REPLICATION_ORIGIN_DROP','Waiting for a replication origin to become inactive so it can be dropped'),
(2,50,'REPLICATION_SLOT_DROP','Waiting for a replication slot to become inactive so it can be dropped'),
(2,51,'RESTORE_COMMAND','Waiting for guc-restore-command to complete'),
(2,52,'SAFE_SNAPSHOT','Waiting to obtain a valid snapshot for a <literal>READ ONLY DEFERRABLE</literal> transaction'),
(2,53,'SYNC_REP','Waiting for confirmation from a remote server during synchronous replication'),
(2,54,'WAL_RECEIVER_EXIT','Waiting for the WAL receiver to exit'),
(2,56,'WAL_RECEIVER_WAIT_START','Waiting for startup process to send initial data for streaming replication'),
(2,57,'WAL_SUMMARY_READY','Waiting for a new WAL summary to be generated'),
(2,58,'XACT_GROUP_UPDATE','Waiting for the group leader to update transaction status at transaction end')
;

-- ----------------------------------------
-- ClassName - Timeout
INSERT INTO t$wait_event (class_id,event_seq,event_name,event_desc) VALUES
(3, 1,'BASE_BACKUP_THROTTLE','Waiting during base backup when throttling activity'),
(3, 2,'CHECKPOINT_WRITE_DELAY','Waiting between writes while performing a checkpoint'),
(3, 3,'PG_SLEEP','Waiting due to a call to <function>pg_sleep</function> or a sibling function'),
(3, 4,'RECOVERY_APPLY_DELAY','Waiting to apply WAL during recovery because of a delay setting'),
(3, 5,'RECOVERY_RETRIEVE_RETRY_INTERVAL','Waiting during recovery when WAL data is not available from any source pg_wal archive or stream)'),
(3, 6,'REGISTER_SYNC_REQUEST','Waiting while sending synchronization requests to the checkpointer, because the request queue is full'),
(3, 7,'SPIN_DELAY','Waiting while acquiring a contended spinlock'),
(3, 8,'VACUUM_DELAY','Waiting in a cost-based vacuum delay point'),
(3, 9,'VACUUM_TRUNCATE','Waiting to acquire an exclusive lock to truncate off any empty pages at the end of a table vacuumed'),
(3,10,'WAL_SUMMARIZER_ERROR','Waiting after a WAL summarizer error')
;

-- ----------------------------------------
-- ClassName - IO
INSERT INTO t$wait_event (class_id,event_seq,event_name,event_desc) VALUES
(4, 1,'AIO_IO_COMPLETION','Waiting for another process to complete IO'),
(4, 2,'AIO_IO_URING_SUBMIT','Waiting for IO submission via io_uring'),
(4, 3,'AIO_IO_URING_EXECUTION','Waiting for IO execution via io_uring'),
(4, 4,'BASEBACKUP_READ','Waiting for base backup to read from a file'),
(4, 5,'BASEBACKUP_SYNC','Waiting for data written by a base backup to reach durable storage'),
(4, 6,'BASEBACKUP_WRITE','Waiting for base backup to write to a file'),
(4, 7,'BUFFILE_READ','Waiting for a read from a buffered file'),
(4, 8,'BUFFILE_WRITE','Waiting for a write to a buffered file'),
(4, 9,'BUFFILE_TRUNCATE','Waiting for a buffered file to be truncated'),
(4, 0,'CONTROL_FILE_READ','Waiting for a read from the <filename>pg_control</filename> file'),
(4, 1,'CONTROL_FILE_SYNC','Waiting for the <filename>pg_control</filename> file to reach durable storage'),
(4, 2,'CONTROL_FILE_SYNC_UPDATE','Waiting for an update to the <filename>pg_control</filename> file to reach durable storage'),
(4, 3,'CONTROL_FILE_WRITE','Waiting for a write to the <filename>pg_control</filename> file'),
(4, 4,'CONTROL_FILE_WRITE_UPDATE','Waiting for a write to update the <filename>pg_control</filename> file'),
(4, 5,'COPY_FILE_COPY','Waiting for a file copy operation'),
(4, 6,'COPY_FILE_READ','Waiting for a read during a file copy operation'),
(4, 7,'COPY_FILE_WRITE','Waiting for a write during a file copy operation'),
(4, 8,'DATA_FILE_EXTEND','Waiting for a relation data file to be extended'),
(4, 9,'DATA_FILE_FLUSH','Waiting for a relation data file to reach durable storage'),
(4, 0,'DATA_FILE_IMMEDIATE_SYNC','Waiting for an immediate synchronization of a relation data file to durable storage'),
(4, 1,'DATA_FILE_PREFETCH','Waiting for an asynchronous prefetch from a relation data file'),
(4, 2,'DATA_FILE_READ','Waiting for a read from a relation data file'),
(4, 3,'DATA_FILE_SYNC','Waiting for changes to a relation data file to reach durable storage'),
(4, 4,'DATA_FILE_TRUNCATE','Waiting for a relation data file to be truncated'),
(4, 5,'DATA_FILE_WRITE','Waiting for a write to a relation data file'),
(4, 6,'DSM_ALLOCATE','Waiting for a dynamic shared memory segment to be allocated'),
(4, 7,'DSM_FILL_ZERO_WRITE','Waiting to fill a dynamic shared memory backing file with zeroes'),
(4, 8,'LOCK_FILE_ADDTODATADIR_READ','Waiting for a read while adding a line to the data directory lock file'),
(4, 9,'LOCK_FILE_ADDTODATADIR_SYNC','Waiting for data to reach durable storage while adding a line to the data directory lock file'),
(4, 0,'LOCK_FILE_ADDTODATADIR_WRITE','Waiting for a write while adding a line to the data directory lock file'),
(4, 1,'LOCK_FILE_CREATE_READ','Waiting to read while creating the data directory lock file'),
(4, 2,'LOCK_FILE_CREATE_SYNC','Waiting for data to reach durable storage while creating the data directory lock file'),
(4, 3,'LOCK_FILE_CREATE_WRITE','Waiting for a write while creating the data directory lock file'),
(4, 4,'LOCK_FILE_RECHECKDATADIR_READ','Waiting for a read during recheck of the data directory lock file'),
(4, 5,'LOGICAL_REWRITE_CHECKPOINT_SYNC','Waiting for logical rewrite mappings to reach durable storage during a checkpoint'),
(4, 6,'LOGICAL_REWRITE_MAPPING_SYNC','Waiting for mapping data to reach durable storage during a logical rewrite'),
(4, 7,'LOGICAL_REWRITE_MAPPING_WRITE','Waiting for a write of mapping data during a logical rewrite'),
(4, 8,'LOGICAL_REWRITE_SYNC','Waiting for logical rewrite mappings to reach durable storage'),
(4, 9,'LOGICAL_REWRITE_TRUNCATE','Waiting for truncate of mapping data during a logical rewrite'),
(4, 0,'LOGICAL_REWRITE_WRITE','Waiting for a write of logical rewrite mappings'),
(4, 1,'RELATION_MAP_READ','Waiting for a read of the relation map file'),
(4, 2,'RELATION_MAP_REPLACE','Waiting for durable replacement of a relation map file'),
(4, 3,'RELATION_MAP_WRITE','Waiting for a write to the relation map file'),
(4, 4,'REORDER_BUFFER_READ','Waiting for a read during reorder buffer management'),
(4, 5,'REORDER_BUFFER_WRITE','Waiting for a write during reorder buffer management'),
(4, 6,'REORDER_LOGICAL_MAPPING_READ','Waiting for a read of a logical mapping during reorder buffer management'),
(4, 7,'REPLICATION_SLOT_READ','Waiting for a read from a replication slot control file'),
(4, 8,'REPLICATION_SLOT_RESTORE_SYNC','Waiting for a replication slot control file to reach durable storage while restoring it to memory'),
(4, 9,'REPLICATION_SLOT_SYNC','Waiting for a replication slot control file to reach durable storage'),
(4, 0,'REPLICATION_SLOT_WRITE','Waiting for a write to a replication slot control file'),
(4, 1,'SLRU_FLUSH_SYNC','Waiting for SLRU data to reach durable storage during a checkpoint or database shutdown'),
(4, 2,'SLRU_READ','Waiting for a read of an SLRU page'),
(4, 3,'SLRU_SYNC','Waiting for SLRU data to reach durable storage following a page write'),
(4, 4,'SLRU_WRITE','Waiting for a write of an SLRU page'),
(4, 5,'SNAPBUILD_READ','Waiting for a read of a serialized historical catalog snapshot'),
(4, 6,'SNAPBUILD_SYNC','Waiting for a serialized historical catalog snapshot to reach durable storage'),
(4, 7,'SNAPBUILD_WRITE','Waiting for a write of a serialized historical catalog snapshot'),
(4, 8,'TIMELINE_HISTORY_FILE_SYNC','Waiting for a timeline history file received via streaming replication to reach durable storage'),
(4, 9,'TIMELINE_HISTORY_FILE_WRITE','Waiting for a write of a timeline history file received via streaming replication'),
(4, 0,'TIMELINE_HISTORY_READ','Waiting for a read of a timeline history file'),
(4, 1,'TIMELINE_HISTORY_SYNC','Waiting for a newly created timeline history file to reach durable storage'),
(4, 2,'TIMELINE_HISTORY_WRITE','Waiting for a write of a newly created timeline history file'),
(4, 3,'TWOPHASE_FILE_READ','Waiting for a read of a two phase state file'),
(4, 4,'TWOPHASE_FILE_SYNC','Waiting for a two phase state file to reach durable storage'),
(4, 5,'TWOPHASE_FILE_WRITE','Waiting for a write of a two phase state file'),
(4, 6,'VERSION_FILE_SYNC','Waiting for the version file to reach durable storage while creating a database'),
(4, 7,'VERSION_FILE_WRITE','Waiting for the version file to be written while creating a database'),
(4, 8,'WALSENDER_TIMELINE_HISTORY_READ','Waiting for a read from a timeline history file during a walsender timeline command'),
(4, 9,'WAL_BOOTSTRAP_SYNC','Waiting for WAL to reach durable storage during bootstrapping'),
(4, 0,'WAL_BOOTSTRAP_WRITE','Waiting for a write of a WAL page during bootstrapping'),
(4, 1,'WAL_COPY_READ','Waiting for a read when creating a new WAL segment by copying an existing one'),
(4, 2,'WAL_COPY_SYNC','Waiting for a new WAL segment created by copying an existing one to reach durable storage'),
(4, 3,'WAL_COPY_WRITE','Waiting for a write when creating a new WAL segment by copying an existing one'),
(4, 4,'WAL_INIT_SYNC','Waiting for a newly initialized WAL file to reach durable storage'),
(4, 5,'WAL_INIT_WRITE','Waiting for a write while initializing a new WAL file'),
(4, 6,'WAL_READ','Waiting for a read from a WAL file'),
(4, 7,'WAL_SUMMARY_READ','Waiting for a read from a WAL summary file'),
(4, 8,'WAL_SUMMARY_WRITE','Waiting for a write to a WAL summary file'),
(4, 9,'WAL_SYNC','Waiting for a WAL file to reach durable storage'),
(4, 0,'WAL_SYNC_METHOD_ASSIGN','Waiting for data to reach durable storage while assigning a new WAL sync method'),
(4, 1,'WAL_WRITE','Waiting for a write to a WAL file')
;

-- ----------------------------------------
-- ClassName - BufferPin
INSERT INTO t$wait_event (class_id,event_seq,event_name,event_desc) VALUES
(5, 1,'BUFFER_PIN','Waiting to acquire an exclusive pin on a buffer')
;
-- ----------------------------------------
-- ClassName - Extension
INSERT INTO t$wait_event (class_id,event_seq,event_name,event_desc) VALUES
(6, 1,'Extension','Waiting in an extension')
;

-- ----------------------------------------
-- ClassName - LWLock
INSERT INTO t$wait_event (class_id,event_seq,event_name,event_desc) VALUES
(7, 1,'ShmemIndex','Waiting to find or allocate space in shared memory'),
(7, 2,'OidGen','Waiting to allocate a new OID'),
(7, 3,'XidGen','Waiting to allocate a new transaction ID'),
(7, 4,'ProcArray','Waiting to access the shared per-process data structures'),
(7, 5,'SInvalRead','Waiting to retrieve messages from the shared catalog invalidation queue'),
(7, 6,'SInvalWrite','Waiting to add a message to the shared catalog invalidation queue'),
(7, 7,'WALBufMapping','Waiting to replace a page in WAL buffers'),
(7, 8,'WALWrite','Waiting for WAL buffers to be written to disk'),
(7, 9,'ControlFile','Waiting to read or update the <filename>pg_control</filename> file or create a new WAL file'),
(7, 0,'MultiXactGen','Waiting to read or update shared multixact state'),
(7, 1,'RelCacheInit','Waiting to read or update a <filename>pg_internalinit</filename> relation cache initialization file'),
(7, 2,'CheckpointerComm','Waiting to manage fsync requests'),
(7, 3,'TwoPhaseState','Waiting to read or update the state of prepared transactions'),
(7, 4,'TablespaceCreate','Waiting to create or drop a tablespace'),
(7, 5,'BtreeVacuum','Waiting to read or update vacuum-related information for a B-tree index'),
(7, 6,'AddinShmemInit','Waiting to manage an extension space allocation in shared memory'),
(7, 7,'Autovacuum','Waiting to read or update the current state of autovacuum workers'),
(7, 8,'AutovacuumSchedule','Waiting to ensure that a table selected for autovacuum still needs vacuuming'),
(7, 9,'SyncScan','Waiting to select the starting location of a synchronized table scan'),
(7, 0,'RelationMapping','Waiting to read or update a pg_filenodemap file (used to track the filenode assignments of certain system catalogs)'),
(7, 1,'NotifyQueue','Waiting to read or update <command>NOTIFY</command> messages'),
(7, 2,'SerializableXactHash','Waiting to read or update information about serializable transactions'),
(7, 3,'SerializableFinishedList','Waiting to access the list of finished serializable transactions'),
(7, 4,'SerializablePredicateList','Waiting to access the list of predicate locks held by serializable transactions'),
(7, 5,'SyncRep','Waiting to read or update information about the state of synchronous replication'),
(7, 6,'BackgroundWorker','Waiting to read or update background worker state'),
(7, 7,'DynamicSharedMemoryControl','Waiting to read or update dynamic shared memory allocation information'),
(7, 8,'AutoFile','Waiting to update the <filename>postgresqlauto.conf</filename> file'),
(7, 9,'ReplicationSlotAllocation','Waiting to allocate or free a replication slot'),
(7, 0,'ReplicationSlotControl','Waiting to read or update replication slot state'),
(7, 1,'CommitTs','Waiting to read or update the last value set for a transaction commit timestamp'),
(7, 2,'ReplicationOrigin','Waiting to create, drop or use a replication origin'),
(7, 3,'MultiXactTruncation','Waiting to read or truncate multixact information'),
(7, 4,'LogicalRepWorker','Waiting to read or update the state of logical replication workers'),
(7, 5,'XactTruncation','Waiting to execute pg_xact_status or update the oldest transaction ID available to it'),
(7, 6,'WrapLimitsVacuum','Waiting to update limits on transaction id and multixact consumption'),
(7, 7,'NotifyQueueTail','Waiting to update limit on <command>NOTIFY</command> message storage'),
(7, 8,'WaitEventCustom','Waiting to read or update custom wait events information'),
(7, 9,'WALSummarizer','Waiting to read or update WAL summarization state'),
(7, 0,'DSMRegistry','Waiting to read or update the dynamic shared memory registry'),
(7, 1,'InjectionPoint','Waiting to read or update information related to injection points'),
(7, 2,'SerialControl','Waiting to read or update shared <filename>pg_serial</filename> state'),
(7, 3,'AioWorkerSubmissionQueue','Waiting to access AIO worker submission queue'),
(7, 4,'XactBuffer','Waiting for I/O on a transaction status SLRU buffer'),
(7, 5,'CommitTsBuffer','Waiting for I/O on a commit timestamp SLRU buffer'),
(7, 6,'SubtransBuffer','Waiting for I/O on a sub-transaction SLRU buffer'),
(7, 7,'MultiXactOffsetBuffer','Waiting for I/O on a multixact offset SLRU buffer'),
(7, 8,'MultiXactMemberBuffer','Waiting for I/O on a multixact member SLRU buffer'),
(7, 9,'NotifyBuffer','Waiting for I/O on a <command>NOTIFY</command> message SLRU buffer'),
(7, 0,'SerialBuffer','Waiting for I/O on a serializable transaction conflict SLRU buffer'),
(7, 1,'WALInsert','Waiting to insert WAL data into a memory buffer'),
(7, 2,'BufferContent','Waiting to access a data page in memory'),
(7, 3,'ReplicationOriginState','Waiting to read or update the progress of one replication origin'),
(7, 4,'ReplicationSlotIO','Waiting for I/O on a replication slot'),
(7, 5,'LockFastPath','Waiting to read or update a process fast-path lock information'),
(7, 6,'BufferMapping','Waiting to associate a data block with a buffer in the buffer pool'),
(7, 7,'LockManager','Waiting to read or update information about <quote>heavyweight</quote> locks'),
(7, 8,'PredicateLockManager','Waiting to access predicate lock information used by serializable transactions'),
(7, 9,'ParallelHashJoin','Waiting to synchronize workers during Parallel Hash Join plan execution'),
(7, 0,'ParallelBtreeScan','Waiting to synchronize workers during Parallel B-tree scan plan execution'),
(7, 1,'ParallelQueryDSA','Waiting for parallel query dynamic shared memory allocation'),
(7, 2,'PerSessionDSA','Waiting for parallel query dynamic shared memory allocation'),
(7, 3,'PerSessionRecordType','Waiting to access a parallel querys information about composite types'),
(7, 4,'PerSessionRecordTypmod','Waiting to access a parallel querys information about type modifiers that identify anonymous record types'),
(7, 5,'SharedTupleStore','Waiting to access a shared tuple store during parallel query'),
(7, 6,'SharedTidBitmap','Waiting to access a shared TID bitmap during a parallel bitmap index scan'),
(7, 7,'ParallelAppend','Waiting to choose the next subplan during Parallel Append plan execution'),
(7, 8,'PerXactPredicateList','Waiting to access the list of predicate locks held by the current serializable txn during a parallel query'),
(7, 9,'PgStatsDSA','Waiting for stats dynamic shared memory allocator access'),
(7, 0,'PgStatsHash','Waiting for stats shared memory hash table access'),
(7, 1,'PgStatsData','Waiting for shared memory stats data access'),
(7, 2,'LogicalRepLauncherDSA','Waiting to access logical replication launchers dynamic shared memory allocator'),
(7, 3,'LogicalRepLauncherHash','Waiting to access logical replication launchers shared hash table'),
(7, 4,'DSMRegistryDSA','Waiting to access dynamic shared memory registrys dynamic shared memory allocator'),
(7, 5,'DSMRegistryHash','Waiting to access dynamic shared memory registrys shared hash table'),
(7, 6,'CommitTsSLRU','Waiting to access the commit timestamp SLRU cache'),
(7, 7,'MultiXactOffsetSLRU','Waiting to access the multixact offset SLRU cache'),
(7, 8,'MultiXactMemberSLRU','Waiting to access the multixact member SLRU cache'),
(7, 9,'NotifySLRU','Waiting to access the <command>NOTIFY</command> message SLRU cache'),
(7, 0,'SerialSLRU','Waiting to access the serializable transaction conflict SLRU cache'),
(7, 1,'SubtransSLRU','Waiting to access the sub-transaction SLRU cache'),
(7, 2,'XactSLRU','Waiting to access the transaction status SLRU cache'),
(7, 3,'ParallelVacuumDSA','Waiting for parallel vacuum dynamic shared memory allocation'),
(7, 4,'AioUringCompletion','Waiting for another process to complete IO via io_uring')
;


-- ----------------------------------------
-- ClassName - Lock
INSERT INTO t$wait_event (class_id,event_seq,event_name,event_desc) VALUES
(8, 1,'relation','Waiting to acquire a lock on a relation'),
(8, 2,'extend','Waiting to extend a relation'),
(8, 3,'frozenid','Waiting to update datfrozenxid and datminmxid columns of pg_database'),
(8, 4,'page','Waiting to acquire a lock on a page of a relation'),
(8, 5,'tuple','Waiting to acquire a lock on a tuple'),
(8, 6,'transactionid','Waiting for a transaction to finish'),
(8, 7,'virtualxid','Waiting to acquire a virtual transaction ID lock'),
(8, 8,'spectoken','Waiting to acquire a speculative insertion lock'),
(8, 9,'object','Waiting to acquire a lock on a non-relation database object'),
(8,10,'userlock','Waiting to acquire a user lock'),
(8,11,'advisory','Waiting to acquire an advisory user lock'),
(8,12,'applytransaction','Waiting to acquire a lock on a remote transaction being applied by a logical replication subscriber')
;

-- ----------------------------------------
CREATE OR REPLACE VIEW v$wait_event AS
SELECT 
	c.id as class_id,  
	c.id*100+e.event_seq as event_id,
	c.class as wait_class,
	e.event_name,
	e.event_desc 
FROM t$wait_class c, t$wait_event e
WHERE c.id=e.class_id
ORDER BY event_id;
-- ================================================================================

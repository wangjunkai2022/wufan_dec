.class public Lcom/tencent/cos/utils/RecordLog;
.super Ljava/lang/Object;
.source "RecordLog.java"


# static fields
.field private static final BUFFER_SIZE:J = 0x8000L

.field private static final LOG_FLUSH_DURATION:J = 0x2710L

.field private static final MAX_FILE_COUNT:I = 0x1e

.field private static final MAX_FILE_SIZE:I = 0x8000

.field private static handlerThread:Landroid/os/HandlerThread;

.field private static final instance:[B

.field private static final object:[B

.field private static recordLog:Lcom/tencent/cos/utils/RecordLog;


# instance fields
.field private final MSG_DELETE_FILE:I

.field private final MSG_FLUSH_ALL:I

.field private final MSG_FLUSH_CONTENT:I

.field private bufferRecord:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/cos/utils/Record;",
            ">;"
        }
    .end annotation
.end field

.field private fileFilter:Ljava/io/FileFilter;

.field private flag:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private logFileDir:Ljava/lang/String;

.field private logRootDir:Ljava/lang/String;

.field private volatile mBufferSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 1
    sput-object v1, Lcom/tencent/cos/utils/RecordLog;->object:[B

    new-array v0, v0, [B

    .line 2
    sput-object v0, Lcom/tencent/cos/utils/RecordLog;->instance:[B

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tencent/cos/utils/RecordLog;->flag:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/tencent/cos/utils/RecordLog;->logRootDir:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/tencent/cos/utils/RecordLog;->logFileDir:Ljava/lang/String;

    .line 5
    new-instance v1, Lcom/tencent/cos/utils/RecordLog$1;

    invoke-direct {v1, p0}, Lcom/tencent/cos/utils/RecordLog$1;-><init>(Lcom/tencent/cos/utils/RecordLog;)V

    iput-object v1, p0, Lcom/tencent/cos/utils/RecordLog;->fileFilter:Ljava/io/FileFilter;

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcom/tencent/cos/utils/RecordLog;->MSG_FLUSH_ALL:I

    const/4 v2, 0x1

    .line 7
    iput v2, p0, Lcom/tencent/cos/utils/RecordLog;->MSG_FLUSH_CONTENT:I

    const/4 v3, 0x2

    .line 8
    iput v3, p0, Lcom/tencent/cos/utils/RecordLog;->MSG_DELETE_FILE:I

    .line 9
    iput-object v0, p0, Lcom/tencent/cos/utils/RecordLog;->handler:Landroid/os/Handler;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/utils/RecordLog;->bufferRecord:Ljava/util/List;

    const-wide/16 v3, 0x0

    .line 11
    iput-wide v3, p0, Lcom/tencent/cos/utils/RecordLog;->mBufferSize:J

    .line 12
    iput-object p2, p0, Lcom/tencent/cos/utils/RecordLog;->flag:Ljava/lang/String;

    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "android"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "data"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "logs"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/utils/RecordLog;->logRootDir:Ljava/lang/String;

    .line 15
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "log_handlerThread"

    invoke-direct {p1, p2, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object p1, Lcom/tencent/cos/utils/RecordLog;->handlerThread:Landroid/os/HandlerThread;

    .line 16
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 17
    new-instance p1, Lcom/tencent/cos/utils/RecordLog$2;

    sget-object p2, Lcom/tencent/cos/utils/RecordLog;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/tencent/cos/utils/RecordLog$2;-><init>(Lcom/tencent/cos/utils/RecordLog;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/tencent/cos/utils/RecordLog;->handler:Landroid/os/Handler;

    .line 18
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 19
    iput v1, p1, Landroid/os/Message;->what:I

    .line 20
    iget-object p2, p0, Lcom/tencent/cos/utils/RecordLog;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/cos/utils/RecordLog;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/cos/utils/RecordLog;->flag:Ljava/lang/String;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/cos/utils/RecordLog;
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/cos/utils/RecordLog;->instance:[B

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/tencent/cos/utils/RecordLog;->recordLog:Lcom/tencent/cos/utils/RecordLog;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/tencent/cos/utils/RecordLog;

    invoke-direct {v1, p0, p1}, Lcom/tencent/cos/utils/RecordLog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/tencent/cos/utils/RecordLog;->recordLog:Lcom/tencent/cos/utils/RecordLog;

    .line 4
    :cond_0
    sget-object p0, Lcom/tencent/cos/utils/RecordLog;->recordLog:Lcom/tencent/cos/utils/RecordLog;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public appendRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/tencent/cos/utils/Record;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/tencent/cos/utils/Record;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide p1, p0, Lcom/tencent/cos/utils/RecordLog;->mBufferSize:J

    const-wide/32 p3, 0x8000

    cmp-long v1, p1, p3

    if-gtz v1, :cond_0

    iget-wide p1, p0, Lcom/tencent/cos/utils/RecordLog;->mBufferSize:J

    invoke-virtual {v0}, Lcom/tencent/cos/utils/Record;->getLength()J

    move-result-wide v1

    add-long/2addr p1, v1

    cmp-long v1, p1, p3

    if-lez v1, :cond_1

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/tencent/cos/utils/RecordLog;->handler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x1

    .line 5
    iput p2, p1, Landroid/os/Message;->what:I

    .line 6
    iget-object p2, p0, Lcom/tencent/cos/utils/RecordLog;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/tencent/cos/utils/RecordLog;->bufferRecord:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-wide p1, p0, Lcom/tencent/cos/utils/RecordLog;->mBufferSize:J

    invoke-virtual {v0}, Lcom/tencent/cos/utils/Record;->getLength()J

    move-result-wide p3

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/tencent/cos/utils/RecordLog;->mBufferSize:J

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public flush()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/cos/utils/RecordLog;->mBufferSize:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    monitor-exit p0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/utils/RecordLog;->bufferRecord:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/tencent/cos/utils/RecordLog;->write(Ljava/util/List;)V

    .line 4
    iget-object v0, p0, Lcom/tencent/cos/utils/RecordLog;->bufferRecord:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iput-wide v2, p0, Lcom/tencent/cos/utils/RecordLog;->mBufferSize:J

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIndexFromFile(Ljava/io/File;)I
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2e

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public getLogFile(J)Ljava/io/File;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/cos/utils/RecordLog;->logRootDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/cos/utils/RecordLog;->getLongDate(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "1."

    const-string v2, ".log"

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 5
    new-instance p2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/cos/utils/RecordLog;->flag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/utils/RecordLog;->fileFilter:Ljava/io/FileFilter;

    invoke-virtual {p2, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p2

    .line 7
    array-length v0, p2

    if-nez v0, :cond_1

    .line 8
    new-instance p2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/cos/utils/RecordLog;->flag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 9
    :cond_1
    new-instance v0, Lcom/tencent/cos/utils/RecordLog$3;

    invoke-direct {v0, p0}, Lcom/tencent/cos/utils/RecordLog$3;-><init>(Lcom/tencent/cos/utils/RecordLog;)V

    invoke-static {p2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 10
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p2, v0

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/32 v5, 0x8000

    cmp-long v1, v3, v5

    if-lez v1, :cond_2

    .line 12
    invoke-virtual {p0, v0}, Lcom/tencent/cos/utils/RecordLog;->getIndexFromFile(Ljava/io/File;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 13
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/cos/utils/RecordLog;->flag:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 14
    :cond_2
    array-length p1, p2

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, p1, -0x1e

    if-ge v1, v2, :cond_3

    .line 15
    aget-object v2, p2, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getLogFileDir()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/cos/utils/RecordLog;->logRootDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/cos/utils/RecordLog;->getTodayDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 5
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/utils/RecordLog;->logFileDir:Ljava/lang/String;

    return-object v0
.end method

.method public getLogRootDir()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/utils/RecordLog;->logRootDir:Ljava/lang/String;

    return-object v0
.end method

.method public getLongDate(J)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTodayDate()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 2
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/cos/utils/Record;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/tencent/cos/utils/RecordLog;->object:[B

    monitor-enter v0

    if-nez p1, :cond_0

    .line 2
    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :cond_0
    const/4 v1, 0x0

    .line 3
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/tencent/cos/utils/RecordLog;->getLogFile(J)Ljava/io/File;

    move-result-object v2

    .line 4
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v1, 0x0

    .line 5
    :goto_0
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/cos/utils/Record;

    invoke-virtual {v2}, Lcom/tencent/cos/utils/Record;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/FileOutputStream;->write([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 9
    :goto_1
    :try_start_4
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object v1, v3

    goto :goto_5

    :catch_1
    move-exception p1

    move-object v1, v3

    goto :goto_2

    :catch_2
    move-exception p1

    move-object v1, v3

    goto :goto_3

    :catchall_2
    move-exception p1

    goto :goto_5

    :catch_3
    move-exception p1

    .line 10
    :goto_2
    :try_start_5
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_2

    .line 11
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    :catch_4
    move-exception p1

    goto :goto_1

    :catch_5
    move-exception p1

    .line 12
    :goto_3
    :try_start_7
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v1, :cond_2

    .line 13
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    :catch_6
    move-exception p1

    goto :goto_1

    .line 14
    :cond_2
    :goto_4
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    return-void

    :goto_5
    if-eqz v1, :cond_3

    .line 15
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_6

    :catch_7
    move-exception v1

    .line 16
    :try_start_b
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 17
    :cond_3
    :goto_6
    throw p1

    .line 18
    :goto_7
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_9

    :goto_8
    throw p1

    :goto_9
    goto :goto_8
.end method

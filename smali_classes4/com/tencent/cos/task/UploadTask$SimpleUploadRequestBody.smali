.class public Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;
.super Lokhttp3/RequestBody;
.source "UploadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/task/UploadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SimpleUploadRequestBody"
.end annotation


# instance fields
.field private final SEGMENT_SIZE:I

.field private contentType:Ljava/lang/String;

.field private dataByte:[B

.field private dataFile:Ljava/io/File;

.field private dataStream:Ljava/io/InputStream;

.field final synthetic this$0:Lcom/tencent/cos/task/UploadTask;

.field private totalLength:J


# direct methods
.method public constructor <init>(Lcom/tencent/cos/task/UploadTask;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->this$0:Lcom/tencent/cos/task/UploadTask;

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    const/16 p1, 0x800

    .line 2
    iput p1, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->SEGMENT_SIZE:I

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->dataFile:Ljava/io/File;

    .line 4
    iput-object p1, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->dataStream:Ljava/io/InputStream;

    .line 5
    iput-object p1, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->dataByte:[B

    const-string p1, "text/plain"

    .line 6
    iput-object p1, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->contentType:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->dataFile:Ljava/io/File;

    if-eqz p3, :cond_0

    .line 8
    iput-object p3, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->contentType:Ljava/lang/String;

    .line 9
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->totalLength:J

    return-void
.end method

.method public constructor <init>(Lcom/tencent/cos/task/UploadTask;Ljava/io/InputStream;Ljava/lang/String;J)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->this$0:Lcom/tencent/cos/task/UploadTask;

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    const/16 p1, 0x800

    .line 20
    iput p1, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->SEGMENT_SIZE:I

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->dataFile:Ljava/io/File;

    .line 22
    iput-object p1, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->dataStream:Ljava/io/InputStream;

    .line 23
    iput-object p1, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->dataByte:[B

    const-string p1, "text/plain"

    .line 24
    iput-object p1, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->contentType:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->dataStream:Ljava/io/InputStream;

    if-eqz p3, :cond_0

    .line 26
    iput-object p3, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->contentType:Ljava/lang/String;

    .line 27
    :cond_0
    iput-wide p4, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->totalLength:J

    return-void
.end method

.method public constructor <init>(Lcom/tencent/cos/task/UploadTask;[BLjava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->this$0:Lcom/tencent/cos/task/UploadTask;

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    const/16 p1, 0x800

    .line 11
    iput p1, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->SEGMENT_SIZE:I

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->dataFile:Ljava/io/File;

    .line 13
    iput-object p1, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->dataStream:Ljava/io/InputStream;

    .line 14
    iput-object p1, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->dataByte:[B

    const-string p1, "text/plain"

    .line 15
    iput-object p1, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->contentType:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->dataByte:[B

    if-eqz p3, :cond_0

    .line 17
    iput-object p3, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->contentType:Ljava/lang/String;

    .line 18
    :cond_0
    array-length p1, p2

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->totalLength:J

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->totalLength:J

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->contentType:Ljava/lang/String;

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->dataStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v1}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->dataByte:[B

    if-eqz v1, :cond_1

    .line 4
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->dataByte:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v1}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->dataFile:Ljava/io/File;

    if-eqz v1, :cond_6

    .line 6
    invoke-static {v1}, Lokio/Okio;->source(Ljava/io/File;)Lokio/Source;

    move-result-object v0

    :goto_0
    const-wide/16 v1, 0x0

    .line 7
    :cond_2
    :goto_1
    iget-wide v3, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->totalLength:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_4

    sub-long/2addr v3, v1

    const-wide/16 v5, 0x800

    .line 8
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 9
    invoke-interface {p1}, Lokio/BufferedSink;->buffer()Lokio/Buffer;

    move-result-object v5

    invoke-interface {v0, v5, v3, v4}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    add-long/2addr v1, v3

    .line 10
    invoke-interface {p1}, Lokio/BufferedSink;->flush()V

    .line 11
    iget-object v3, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->this$0:Lcom/tencent/cos/task/UploadTask;

    iget-object v3, v3, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v3}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->this$0:Lcom/tencent/cos/task/UploadTask;

    iget-object v3, v3, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v3}, Lcom/tencent/cos/network/HttpRequest;->isSliceUpload()Z

    move-result v3

    if-nez v3, :cond_2

    .line 12
    iget-object v3, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->this$0:Lcom/tencent/cos/task/UploadTask;

    iget-object v3, v3, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v3}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/tencent/cos/task/listener/IUploadTaskListener;

    .line 13
    iget-object v3, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->this$0:Lcom/tencent/cos/task/UploadTask;

    iget-object v3, v3, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v3}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    move-result-object v9

    iget-wide v12, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->totalLength:J

    move-wide v10, v1

    invoke-interface/range {v8 .. v13}, Lcom/tencent/cos/task/listener/IUploadTaskListener;->onProgress(Lcom/tencent/cos/model/COSRequest;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    .line 14
    invoke-interface {v0}, Lokio/Source;->close()V

    :cond_5
    return-void

    .line 15
    :cond_6
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u6570\u636e\u6765\u6e90\u4e3anull"

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 16
    :try_start_2
    iget-object v1, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->this$0:Lcom/tencent/cos/task/UploadTask;

    iget-boolean v1, v1, Lcom/tencent/cos/task/Task;->isCancelled:Z

    if-eqz v1, :cond_7

    .line 17
    invoke-static {}, Lcom/tencent/cos/task/UploadTask;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "task: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/cos/task/UploadTask$SimpleUploadRequestBody;->this$0:Lcom/tencent/cos/task/UploadTask;

    iget-object v3, v3, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    invoke-virtual {v3}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/cos/model/COSRequest;->getRequestId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is cancelled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 18
    :cond_7
    invoke-static {}, Lcom/tencent/cos/task/UploadTask;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    :goto_3
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    if-eqz v0, :cond_8

    .line 20
    invoke-interface {v0}, Lokio/Source;->close()V

    :cond_8
    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

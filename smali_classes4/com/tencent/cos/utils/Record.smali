.class public Lcom/tencent/cos/utils/Record;
.super Ljava/lang/Object;
.source "Record.java"


# instance fields
.field private level:Ljava/lang/String;

.field private msg:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private threadId:J

.field private threadName:Ljava/lang/String;

.field private throwable:Ljava/lang/Throwable;

.field private timestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tencent/cos/utils/Record;->tag:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/tencent/cos/utils/Record;->msg:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/tencent/cos/utils/Record;->throwable:Ljava/lang/Throwable;

    .line 5
    iput-object v0, p0, Lcom/tencent/cos/utils/Record;->level:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/tencent/cos/utils/Record;->threadName:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/tencent/cos/utils/Record;->level:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lcom/tencent/cos/utils/Record;->tag:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/tencent/cos/utils/Record;->msg:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/tencent/cos/utils/Record;->throwable:Ljava/lang/Throwable;

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/tencent/cos/utils/Record;->timestamp:J

    .line 12
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/tencent/cos/utils/Record;->threadId:J

    .line 13
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/utils/Record;->threadName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLength()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/utils/Record;->msg:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x28

    int-to-long v0, v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/tencent/cos/utils/Record;->level:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-wide v1, p0, Lcom/tencent/cos/utils/Record;->timestamp:J

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v1, v2, v3}, Lcom/tencent/cos/utils/TimesUtils;->timeUtils(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/cos/utils/Record;->threadName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/tencent/cos/utils/Record;->threadId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/cos/utils/Record;->tag:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/cos/utils/Record;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v1, p0, Lcom/tencent/cos/utils/Record;->throwable:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    const-string v1, " * Exception :\n"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/cos/utils/Record;->throwable:Ljava/lang/Throwable;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "\n"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

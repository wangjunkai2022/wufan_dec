.class public Lorg/jboss/netty/channel/a0;
.super Ljava/lang/Object;
.source "DefaultFileRegion.java"

# interfaces
.implements Lorg/jboss/netty/channel/g0;


# instance fields
.field private final a:Ljava/nio/channels/FileChannel;

.field private final b:J

.field private final c:J

.field private final d:Z


# direct methods
.method public constructor <init>(Ljava/nio/channels/FileChannel;JJ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 1
    invoke-direct/range {v0 .. v6}, Lorg/jboss/netty/channel/a0;-><init>(Ljava/nio/channels/FileChannel;JJZ)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/FileChannel;JJZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/jboss/netty/channel/a0;->a:Ljava/nio/channels/FileChannel;

    .line 4
    iput-wide p2, p0, Lorg/jboss/netty/channel/a0;->b:J

    .line 5
    iput-wide p4, p0, Lorg/jboss/netty/channel/a0;->c:J

    .line 6
    iput-boolean p6, p0, Lorg/jboss/netty/channel/a0;->d:Z

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/a0;->a:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/jboss/netty/channel/a0;->d:Z

    return v0
.end method

.method public getCount()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/jboss/netty/channel/a0;->c:J

    return-wide v0
.end method

.method public getPosition()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/jboss/netty/channel/a0;->b:J

    return-wide v0
.end method

.method public transferTo(Ljava/nio/channels/WritableByteChannel;J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lorg/jboss/netty/channel/a0;->c:J

    sub-long v5, v0, p2

    const-wide/16 v0, 0x0

    cmp-long v2, v5, v0

    if-ltz v2, :cond_1

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1

    cmp-long v2, v5, v0

    if-nez v2, :cond_0

    return-wide v0

    .line 2
    :cond_0
    iget-object v2, p0, Lorg/jboss/netty/channel/a0;->a:Ljava/nio/channels/FileChannel;

    iget-wide v0, p0, Lorg/jboss/netty/channel/a0;->b:J

    add-long v3, v0, p2

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide p1

    return-wide p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "position out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " (expected: 0 - "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lorg/jboss/netty/channel/a0;->c:J

    const-wide/16 v1, 0x1

    sub-long/2addr p2, v1

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

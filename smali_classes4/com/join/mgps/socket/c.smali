.class public Lcom/join/mgps/socket/c;
.super Ljava/lang/Object;
.source "SocketReceiverService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/socket/c$a;
    }
.end annotation


# static fields
.field private static final n:Ljava/lang/String;


# instance fields
.field a:Ljava/net/Socket;

.field b:Ljava/io/DataInputStream;

.field c:Ljava/io/BufferedOutputStream;

.field d:Landroid/content/Context;

.field e:J

.field f:J

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:I

.field k:I

.field l:Lcom/join/mgps/socket/c$a;

.field m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/socket/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/socket/c;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/socket/c;->b:Ljava/io/DataInputStream;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/socket/c;->c:Ljava/io/BufferedOutputStream;

    const-wide/16 v1, 0x0

    .line 4
    iput-wide v1, p0, Lcom/join/mgps/socket/c;->e:J

    .line 5
    iput-wide v1, p0, Lcom/join/mgps/socket/c;->f:J

    .line 6
    iput-object v0, p0, Lcom/join/mgps/socket/c;->g:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/join/mgps/socket/c;->h:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/join/mgps/socket/c;->i:Ljava/lang/String;

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/join/mgps/socket/c;->j:I

    const/4 v0, 0x1

    .line 10
    iput v0, p0, Lcom/join/mgps/socket/c;->k:I

    .line 11
    iput-boolean v0, p0, Lcom/join/mgps/socket/c;->m:Z

    .line 12
    iput-object p1, p0, Lcom/join/mgps/socket/c;->a:Ljava/net/Socket;

    .line 13
    iput-object p2, p0, Lcom/join/mgps/socket/c;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/socket/c;->b:Ljava/io/DataInputStream;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/socket/c;->c:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method b(JJ)I
    .locals 1

    long-to-float v0, p3

    long-to-float p1, p1

    div-float/2addr v0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float v0, v0, p1

    float-to-int p1, v0

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getReceiverProgress: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":::size::::"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return p1
.end method

.method c(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/c;->l:Lcom/join/mgps/socket/c$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/c$a;->a(Z)V

    .line 3
    :cond_0
    iput p1, p0, Lcom/join/mgps/socket/c;->k:I

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/socket/c;->d()V

    return-void
.end method

.method d()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/socket/c;->f:J

    iget-wide v2, p0, Lcom/join/mgps/socket/c;->e:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/join/mgps/socket/c;->b(JJ)I

    move-result v0

    .line 2
    new-instance v1, Lcom/join/mgps/socket/entity/c;

    invoke-direct {v1}, Lcom/join/mgps/socket/entity/c;-><init>()V

    .line 3
    iput v0, v1, Lcom/join/mgps/socket/entity/c;->u:I

    .line 4
    iget-object v0, p0, Lcom/join/mgps/socket/c;->h:Ljava/lang/String;

    iput-object v0, v1, Lcom/join/mgps/socket/entity/c;->s:Ljava/lang/String;

    .line 5
    iget v0, p0, Lcom/join/mgps/socket/c;->k:I

    iput v0, v1, Lcom/join/mgps/socket/entity/c;->v:I

    .line 6
    iget-object v2, p0, Lcom/join/mgps/socket/c;->i:Ljava/lang/String;

    iput-object v2, v1, Lcom/join/mgps/socket/entity/c;->x:Ljava/lang/String;

    .line 7
    iget-object v2, p0, Lcom/join/mgps/socket/c;->g:Ljava/lang/String;

    iput-object v2, v1, Lcom/join/mgps/socket/entity/c;->t:Ljava/lang/String;

    const/4 v2, 0x1

    .line 8
    iput v2, v1, Lcom/join/mgps/socket/entity/a;->a:I

    .line 9
    iput v2, v1, Lcom/join/mgps/socket/entity/c;->w:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receiverFile: \u63a5\u6536\u5b8c\u6210:::"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/socket/c;->l:Lcom/join/mgps/socket/c$a;

    iget-boolean v2, v2, Lcom/join/mgps/socket/c$a;->a:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    iget-object v0, p0, Lcom/join/mgps/socket/c;->l:Lcom/join/mgps/socket/c$a;

    if-eqz v0, :cond_1

    .line 12
    iget-boolean v0, v0, Lcom/join/mgps/socket/c$a;->a:Z

    if-eqz v0, :cond_1

    return-void

    .line 13
    :cond_1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    return-void
.end method

.method e(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/socket/entity/g;

    invoke-direct {v0}, Lcom/join/mgps/socket/entity/g;-><init>()V

    .line 2
    iput-object p1, v0, Lcom/join/mgps/socket/entity/g;->s:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    iput p1, v0, Lcom/join/mgps/socket/entity/a;->a:I

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    return-void
.end method

.method f(Ljava/io/DataInputStream;)V
    .locals 14

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x100000

    new-array v1, v0, [B

    const-wide/16 v2, 0x0

    .line 1
    iput-wide v2, p0, Lcom/join/mgps/socket/c;->e:J

    .line 2
    iput-wide v2, p0, Lcom/join/mgps/socket/c;->f:J

    const/4 v2, 0x0

    .line 3
    iput-object v2, p0, Lcom/join/mgps/socket/c;->g:Ljava/lang/String;

    .line 4
    iput-object v2, p0, Lcom/join/mgps/socket/c;->h:Ljava/lang/String;

    .line 5
    iput-object v2, p0, Lcom/join/mgps/socket/c;->i:Ljava/lang/String;

    const/4 v2, 0x0

    .line 6
    iput v2, p0, Lcom/join/mgps/socket/c;->j:I

    const/4 v3, 0x4

    .line 7
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/join/mgps/socket/c;->f:J

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receiverFile: \u6587\u4ef6\u5927\u5c0f "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/join/mgps/socket/c;->f:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/join/mgps/socket/c;->h:Ljava/lang/String;

    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receiverFile: \u6587\u4ef6\u4fdd\u5b58\u540d\u79f0 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/join/mgps/socket/c;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/join/mgps/socket/c;->i:Ljava/lang/String;

    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receiverFile: \u6587\u4ef6\u7f16\u53f7 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/join/mgps/socket/c;->i:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/join/mgps/socket/c;->d:Landroid/content/Context;

    invoke-static {v5}, Lcom/join/mgps/Util/q1;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/join/mgps/socket/c;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/join/mgps/socket/c;->g:Ljava/lang/String;

    .line 14
    invoke-static {v4}, Lcom/join/mgps/Util/g0;->y(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 15
    iget-object v4, p0, Lcom/join/mgps/socket/c;->g:Ljava/lang/String;

    invoke-static {v4}, Lcom/join/mgps/Util/g0;->B(Ljava/lang/String;)Z

    .line 16
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receiverFile: \u6587\u4ef6\u5b8c\u6574\u540d "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/join/mgps/socket/c;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/join/mgps/socket/c;->g:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v4, p0, Lcom/join/mgps/socket/c;->c:Ljava/io/BufferedOutputStream;

    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveFile: \u6587\u4ef6\u5927\u5c0f\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/join/mgps/socket/c;->f:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "::::::\u6587\u4ef6\u5b8c\u6574\u8def\u5f84\uff1a\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/join/mgps/socket/c;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    new-instance v4, Lcom/join/mgps/socket/c$a;

    invoke-direct {v4, p0}, Lcom/join/mgps/socket/c$a;-><init>(Lcom/join/mgps/socket/c;)V

    iput-object v4, p0, Lcom/join/mgps/socket/c;->l:Lcom/join/mgps/socket/c$a;

    .line 20
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 21
    :goto_0
    iget-boolean v4, p0, Lcom/join/mgps/socket/c;->m:Z

    if-eqz v4, :cond_7

    .line 22
    iget-wide v4, p0, Lcom/join/mgps/socket/c;->e:J

    int-to-long v6, v0

    add-long/2addr v6, v4

    iget-wide v8, p0, Lcom/join/mgps/socket/c;->f:J

    const/4 v10, 0x2

    const/4 v11, 0x3

    const/4 v12, -0x1

    cmp-long v13, v6, v8

    if-lez v13, :cond_4

    sub-long/2addr v8, v4

    long-to-int v4, v8

    .line 23
    invoke-virtual {p1, v1, v2, v4}, Ljava/io/DataInputStream;->read([BII)I

    move-result v4

    iput v4, p0, Lcom/join/mgps/socket/c;->j:I

    if-eq v4, v12, :cond_3

    .line 24
    iget-object v5, p0, Lcom/join/mgps/socket/c;->c:Ljava/io/BufferedOutputStream;

    invoke-virtual {v5, v1, v2, v4}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 25
    iget-wide v4, p0, Lcom/join/mgps/socket/c;->e:J

    iget v6, p0, Lcom/join/mgps/socket/c;->j:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/join/mgps/socket/c;->e:J

    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receiverFile: \u63a5\u6536\u4e86\u591a\u5c11"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/join/mgps/socket/c;->j:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "----bufferSize-----"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-wide v4, p0, Lcom/join/mgps/socket/c;->f:J

    iget-wide v6, p0, Lcom/join/mgps/socket/c;->e:J

    cmp-long v8, v4, v6

    if-lez v8, :cond_2

    .line 28
    iput v10, p0, Lcom/join/mgps/socket/c;->k:I

    goto :goto_0

    .line 29
    :cond_2
    invoke-virtual {p0, v11}, Lcom/join/mgps/socket/c;->c(I)V

    goto :goto_1

    .line 30
    :cond_3
    invoke-virtual {p0, v3}, Lcom/join/mgps/socket/c;->c(I)V

    goto :goto_1

    .line 31
    :cond_4
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/DataInputStream;->read([BII)I

    move-result v4

    iput v4, p0, Lcom/join/mgps/socket/c;->j:I

    if-eq v4, v12, :cond_6

    .line 32
    iget-object v5, p0, Lcom/join/mgps/socket/c;->c:Ljava/io/BufferedOutputStream;

    invoke-virtual {v5, v1, v2, v4}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 33
    iget-wide v4, p0, Lcom/join/mgps/socket/c;->e:J

    iget v6, p0, Lcom/join/mgps/socket/c;->j:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/join/mgps/socket/c;->e:J

    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receiverFile000000: \u63a5\u6536\u4e86\u591a\u5c11"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/join/mgps/socket/c;->j:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "-----bufferSize------"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    iget-wide v4, p0, Lcom/join/mgps/socket/c;->f:J

    iget-wide v6, p0, Lcom/join/mgps/socket/c;->e:J

    cmp-long v8, v4, v6

    if-lez v8, :cond_5

    .line 36
    iput v10, p0, Lcom/join/mgps/socket/c;->k:I

    goto/16 :goto_0

    .line 37
    :cond_5
    invoke-virtual {p0, v11}, Lcom/join/mgps/socket/c;->c(I)V

    goto :goto_1

    .line 38
    :cond_6
    invoke-virtual {p0, v3}, Lcom/join/mgps/socket/c;->c(I)V

    .line 39
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/socket/c;->c:Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :try_start_1
    iget-object p1, p0, Lcom/join/mgps/socket/c;->l:Lcom/join/mgps/socket/c$a;

    if-eqz p1, :cond_8

    .line 41
    invoke-virtual {p1, v2}, Lcom/join/mgps/socket/c$a;->a(Z)V

    .line 42
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/socket/c;->c:Ljava/io/BufferedOutputStream;

    if-eqz p1, :cond_a

    .line 43
    iget-object p1, p0, Lcom/join/mgps/socket/c;->c:Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 44
    :try_start_2
    iget-object v0, p0, Lcom/join/mgps/socket/c;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/g0;->i(Ljava/lang/String;)Z

    .line 45
    invoke-virtual {p0, v3}, Lcom/join/mgps/socket/c;->c(I)V

    .line 46
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    :try_start_3
    iget-object p1, p0, Lcom/join/mgps/socket/c;->l:Lcom/join/mgps/socket/c$a;

    if-eqz p1, :cond_9

    .line 48
    invoke-virtual {p1, v2}, Lcom/join/mgps/socket/c$a;->a(Z)V

    .line 49
    :cond_9
    iget-object p1, p0, Lcom/join/mgps/socket/c;->c:Ljava/io/BufferedOutputStream;

    if-eqz p1, :cond_a

    .line 50
    iget-object p1, p0, Lcom/join/mgps/socket/c;->c:Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 51
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_a
    :goto_2
    return-void

    .line 52
    :goto_3
    :try_start_4
    iget-object v0, p0, Lcom/join/mgps/socket/c;->l:Lcom/join/mgps/socket/c$a;

    if-eqz v0, :cond_b

    .line 53
    invoke-virtual {v0, v2}, Lcom/join/mgps/socket/c$a;->a(Z)V

    .line 54
    :cond_b
    iget-object v0, p0, Lcom/join/mgps/socket/c;->c:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_c

    .line 55
    iget-object v0, p0, Lcom/join/mgps/socket/c;->c:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 57
    :cond_c
    :goto_4
    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method g(Ljava/io/DataInputStream;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/socket/c;->e(Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receiverText: \u63a5\u6536\u7684\u6587\u672c\u6570\u636e\u4e3a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public h(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/socket/c;->m:Z

    return-void
.end method

.method public run()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocketReceiverService: \u63a5\u6536\u5927\u5c0f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/socket/c;->a:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getReceiveBufferSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lcom/join/mgps/socket/c;->a:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/join/mgps/socket/c;->b:Ljava/io/DataInputStream;

    .line 3
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/join/mgps/socket/c;->m:Z

    if-eqz v0, :cond_4

    .line 4
    iget-object v0, p0, Lcom/join/mgps/socket/c;->a:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/join/mgps/socket/c;->b:Ljava/io/DataInputStream;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/socket/c;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lcom/join/mgps/socket/c;->b:Ljava/io/DataInputStream;

    invoke-virtual {p0, v0}, Lcom/join/mgps/socket/c;->g(Ljava/io/DataInputStream;)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 7
    iget-object v0, p0, Lcom/join/mgps/socket/c;->b:Ljava/io/DataInputStream;

    invoke-virtual {p0, v0}, Lcom/join/mgps/socket/c;->f(Ljava/io/DataInputStream;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    :goto_1
    const-wide/16 v0, 0x3e8

    .line 8
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 10
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_2
    return-void
.end method

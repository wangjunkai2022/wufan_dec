.class public Lcom/join/mgps/socket/d;
.super Ljava/lang/Object;
.source "SocketSendService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/socket/d$a;
    }
.end annotation


# static fields
.field private static final m:Ljava/lang/String;


# instance fields
.field a:Ljava/io/DataOutputStream;

.field b:Ljava/io/BufferedInputStream;

.field c:Ljava/net/Socket;

.field d:Landroid/content/Context;

.field e:J

.field f:J

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:I

.field j:Lcom/join/mgps/socket/d$a;

.field k:Z

.field l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/socket/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/socket/d;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/socket/d;->a:Ljava/io/DataOutputStream;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/socket/d;->b:Ljava/io/BufferedInputStream;

    const-wide/16 v1, 0x0

    .line 4
    iput-wide v1, p0, Lcom/join/mgps/socket/d;->e:J

    .line 5
    iput-wide v1, p0, Lcom/join/mgps/socket/d;->f:J

    .line 6
    iput-object v0, p0, Lcom/join/mgps/socket/d;->g:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/join/mgps/socket/d;->h:Ljava/lang/String;

    const/4 v1, 0x2

    .line 8
    iput v1, p0, Lcom/join/mgps/socket/d;->i:I

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/join/mgps/socket/d;->k:Z

    .line 10
    iput-object v0, p0, Lcom/join/mgps/socket/d;->l:Ljava/lang/String;

    .line 11
    iput-object p1, p0, Lcom/join/mgps/socket/d;->c:Ljava/net/Socket;

    .line 12
    iput-object p2, p0, Lcom/join/mgps/socket/d;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/socket/d;->a:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/socket/d;->b:Ljava/io/BufferedInputStream;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 6
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
    iget-object v0, p0, Lcom/join/mgps/socket/d;->j:Lcom/join/mgps/socket/d$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/d$a;->a(Z)V

    .line 3
    :cond_0
    iput p1, p0, Lcom/join/mgps/socket/d;->i:I

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/socket/d;->d()V

    return-void
.end method

.method d()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/socket/d;->f:J

    iget-wide v2, p0, Lcom/join/mgps/socket/d;->e:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/join/mgps/socket/d;->b(JJ)I

    move-result v0

    .line 2
    new-instance v1, Lcom/join/mgps/socket/entity/c;

    invoke-direct {v1}, Lcom/join/mgps/socket/entity/c;-><init>()V

    .line 3
    iput v0, v1, Lcom/join/mgps/socket/entity/c;->u:I

    .line 4
    iget-object v0, p0, Lcom/join/mgps/socket/d;->g:Ljava/lang/String;

    iput-object v0, v1, Lcom/join/mgps/socket/entity/c;->s:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/socket/d;->l:Ljava/lang/String;

    iput-object v0, v1, Lcom/join/mgps/socket/entity/c;->t:Ljava/lang/String;

    .line 6
    iget v0, p0, Lcom/join/mgps/socket/d;->i:I

    iput v0, v1, Lcom/join/mgps/socket/entity/c;->v:I

    const/4 v2, 0x1

    .line 7
    iput v2, v1, Lcom/join/mgps/socket/entity/a;->a:I

    .line 8
    iget-object v2, p0, Lcom/join/mgps/socket/d;->h:Ljava/lang/String;

    iput-object v2, v1, Lcom/join/mgps/socket/entity/c;->x:Ljava/lang/String;

    const/4 v2, 0x0

    .line 9
    iput v2, v1, Lcom/join/mgps/socket/entity/c;->w:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/socket/d;->j:Lcom/join/mgps/socket/d$a;

    if-eqz v0, :cond_1

    .line 11
    iget-boolean v0, v0, Lcom/join/mgps/socket/d$a;->a:Z

    if-eqz v0, :cond_1

    return-void

    .line 12
    :cond_1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    return-void
.end method

.method e(Lcom/join/mgps/socket/entity/d;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/d;->a:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/join/mgps/socket/d;->e:J

    .line 3
    iput-wide v0, p0, Lcom/join/mgps/socket/d;->f:J

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/join/mgps/socket/d;->g:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/socket/entity/d;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/socket/d;->l:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/join/mgps/socket/d;->h:Ljava/lang/String;

    .line 7
    invoke-static {v1}, Lcom/join/mgps/Util/g0;->x(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/join/mgps/socket/d;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 9
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/join/mgps/socket/d;->b:Ljava/io/BufferedInputStream;

    .line 10
    iget-object v0, p0, Lcom/join/mgps/socket/d;->a:Ljava/io/DataOutputStream;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/socket/d;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/socket/entity/d;->c()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/join/mgps/socket/d;->f:J

    .line 13
    iget-object v0, p0, Lcom/join/mgps/socket/d;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/socket/d;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/socket/entity/d;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/socket/d;->g:Ljava/lang/String;

    .line 16
    iget-object v3, p0, Lcom/join/mgps/socket/d;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/socket/d;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/socket/entity/d;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/socket/d;->h:Ljava/lang/String;

    .line 19
    iget-object v0, p0, Lcom/join/mgps/socket/d;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcom/join/mgps/socket/d;->a:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    const/high16 p1, 0x100000

    new-array v0, p1, [B

    .line 21
    new-instance v3, Lcom/join/mgps/socket/d$a;

    invoke-direct {v3, p0}, Lcom/join/mgps/socket/d$a;-><init>(Lcom/join/mgps/socket/d;)V

    iput-object v3, p0, Lcom/join/mgps/socket/d;->j:Lcom/join/mgps/socket/d$a;

    .line 22
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 23
    :goto_0
    iget-object v3, p0, Lcom/join/mgps/socket/d;->b:Ljava/io/BufferedInputStream;

    invoke-virtual {v3, v0, v1, p1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 24
    iget-object v4, p0, Lcom/join/mgps/socket/d;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v4, v0, v1, v3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 25
    iget-wide v4, p0, Lcom/join/mgps/socket/d;->e:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/join/mgps/socket/d;->e:J

    .line 26
    iget-wide v6, p0, Lcom/join/mgps/socket/d;->f:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    .line 27
    iput v2, p0, Lcom/join/mgps/socket/d;->i:I

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    .line 28
    invoke-virtual {p0, v3}, Lcom/join/mgps/socket/d;->c(I)V

    goto :goto_0

    .line 29
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/socket/d;->a:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 30
    iget-object p1, p0, Lcom/join/mgps/socket/d;->b:Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    iget-object p1, p0, Lcom/join/mgps/socket/d;->j:Lcom/join/mgps/socket/d$a;

    if-eqz p1, :cond_4

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    const/4 v0, 0x4

    .line 32
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/socket/d;->c(I)V

    .line 33
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    iget-object p1, p0, Lcom/join/mgps/socket/d;->j:Lcom/join/mgps/socket/d$a;

    if-eqz p1, :cond_4

    .line 35
    :goto_1
    invoke-virtual {p1, v1}, Lcom/join/mgps/socket/d$a;->a(Z)V

    goto :goto_3

    .line 36
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/socket/d;->j:Lcom/join/mgps/socket/d$a;

    if-eqz v0, :cond_3

    .line 37
    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/d$a;->a(Z)V

    .line 38
    :cond_3
    throw p1

    :cond_4
    :goto_3
    return-void
.end method

.method f(Lcom/join/mgps/socket/entity/h;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/socket/entity/h;->a()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/socket/d;->a:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "$HB$"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "$DMH$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/socket/d;->a:Ljava/io/DataOutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/socket/d;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/socket/d;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/socket/d;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receiverText: \u53d1\u9001\u7684\u6587\u672c\u6570\u636e\u4e3a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    return-void
.end method

.method public g(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/socket/d;->k:Z

    return-void
.end method

.method public run()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v2, p0, Lcom/join/mgps/socket/d;->c:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/join/mgps/socket/d;->a:Ljava/io/DataOutputStream;

    .line 2
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/join/mgps/socket/d;->k:Z

    if-eqz v0, :cond_5

    .line 3
    iget-object v0, p0, Lcom/join/mgps/socket/d;->c:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/join/mgps/socket/d;->a:Ljava/io/DataOutputStream;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcom/join/mgps/socket/a;->b()Lcom/join/mgps/socket/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/socket/a;->c()Lcom/join/mgps/socket/entity/e;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    instance-of v1, v0, Lcom/join/mgps/socket/entity/h;

    if-eqz v1, :cond_3

    .line 6
    check-cast v0, Lcom/join/mgps/socket/entity/h;

    invoke-virtual {p0, v0}, Lcom/join/mgps/socket/d;->f(Lcom/join/mgps/socket/entity/h;)V

    goto :goto_1

    .line 7
    :cond_3
    instance-of v1, v0, Lcom/join/mgps/socket/entity/d;

    if-eqz v1, :cond_4

    .line 8
    check-cast v0, Lcom/join/mgps/socket/entity/d;

    invoke-virtual {p0, v0}, Lcom/join/mgps/socket/d;->e(Lcom/join/mgps/socket/entity/d;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_4
    :goto_1
    const-wide/16 v0, 0x3e8

    .line 9
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 11
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    return-void
.end method

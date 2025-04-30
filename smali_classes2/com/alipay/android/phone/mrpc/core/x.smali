.class public final Lcom/alipay/android/phone/mrpc/core/x;
.super Lcom/alipay/android/phone/mrpc/core/k;


# instance fields
.field private g:Lcom/alipay/android/phone/mrpc/core/u;


# direct methods
.method public constructor <init>(Lcom/alipay/android/phone/mrpc/core/u;Ljava/lang/reflect/Method;ILjava/lang/String;[BZ)V
    .locals 7

    const-string v5, "application/x-www-form-urlencoded"

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/alipay/android/phone/mrpc/core/k;-><init>(Ljava/lang/reflect/Method;ILjava/lang/String;[BLjava/lang/String;Z)V

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/x;->g:Lcom/alipay/android/phone/mrpc/core/u;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 6

    const-string v0, ""

    new-instance v1, Lcom/alipay/android/phone/mrpc/core/c0;

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/x;->g:Lcom/alipay/android/phone/mrpc/core/u;

    invoke-interface {v2}, Lcom/alipay/android/phone/mrpc/core/u;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/android/phone/mrpc/core/c0;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/k;->b:[B

    iput-object v2, v1, Lcom/alipay/android/phone/mrpc/core/c0;->d:[B

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/k;->e:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/android/phone/mrpc/core/c0;->e:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/alipay/android/phone/mrpc/core/k;->f:Z

    iput-boolean v2, v1, Lcom/alipay/android/phone/mrpc/core/c0;->h:Z

    iget v2, p0, Lcom/alipay/android/phone/mrpc/core/k;->d:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Lcom/alipay/android/phone/mrpc/core/c0;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/k;->c:Ljava/lang/String;

    const-string v3, "operationType"

    invoke-virtual {v1, v3, v2}, Lcom/alipay/android/phone/mrpc/core/c0;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/x;->g:Lcom/alipay/android/phone/mrpc/core/u;

    invoke-interface {v2}, Lcom/alipay/android/phone/mrpc/core/u;->d()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "gzip"

    invoke-virtual {v1, v3, v2}, Lcom/alipay/android/phone/mrpc/core/c0;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/apache/http/message/BasicHeader;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "uuid"

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/mrpc/core/c0;->f(Lorg/apache/http/Header;)V

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/x;->g:Lcom/alipay/android/phone/mrpc/core/u;

    invoke-interface {v2}, Lcom/alipay/android/phone/mrpc/core/u;->c()Lcom/alipay/android/phone/mrpc/core/l;

    move-result-object v2

    iget-object v2, v2, Lcom/alipay/android/phone/mrpc/core/l;->b:Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/Header;

    invoke-virtual {v1, v3}, Lcom/alipay/android/phone/mrpc/core/c0;->f(Lorg/apache/http/Header;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    invoke-virtual {v1}, Lcom/alipay/android/phone/mrpc/core/c0;->toString()Ljava/lang/String;

    const/16 v2, 0x9

    const/16 v3, 0xd

    :try_start_0
    iget-object v4, p0, Lcom/alipay/android/phone/mrpc/core/x;->g:Lcom/alipay/android/phone/mrpc/core/u;

    invoke-interface {v4}, Lcom/alipay/android/phone/mrpc/core/u;->b()Lcom/alipay/android/phone/mrpc/core/m;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/alipay/android/phone/mrpc/core/m;->a(Lcom/alipay/android/phone/mrpc/core/d;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/mrpc/core/e;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alipay/android/phone/mrpc/core/e;->b()[B

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v1, Lcom/alipay/android/phone/mrpc/core/c;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "response is null"

    invoke-direct {v1, v4, v5}, Lcom/alipay/android/phone/mrpc/core/c;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    new-instance v2, Lcom/alipay/android/phone/mrpc/core/c;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Lcom/alipay/android/phone/mrpc/core/c;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_2

    instance-of v4, v3, Lcom/alipay/android/phone/mrpc/core/a;

    if-eqz v4, :cond_2

    check-cast v3, Lcom/alipay/android/phone/mrpc/core/a;

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/c;

    invoke-virtual {v3}, Lcom/alipay/android/phone/mrpc/core/a;->a()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 v1, 0x10

    goto :goto_1

    :pswitch_1
    const/16 v1, 0xf

    goto :goto_1

    :pswitch_2
    const/16 v1, 0x8

    goto :goto_1

    :pswitch_3
    const/4 v1, 0x7

    goto :goto_1

    :pswitch_4
    const/4 v1, 0x6

    goto :goto_1

    :pswitch_5
    const/4 v1, 0x5

    goto :goto_1

    :pswitch_6
    const/4 v1, 0x4

    goto :goto_1

    :pswitch_7
    const/4 v1, 0x3

    goto :goto_1

    :pswitch_8
    const/4 v1, 0x2

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3}, Lcom/alipay/android/phone/mrpc/core/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/phone/mrpc/core/c;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v3, Lcom/alipay/android/phone/mrpc/core/c;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v3, v2, v0, v1}, Lcom/alipay/android/phone/mrpc/core/c;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_2
    move-exception v1

    new-instance v2, Lcom/alipay/android/phone/mrpc/core/c;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Lcom/alipay/android/phone/mrpc/core/c;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw v2

    :goto_3
    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

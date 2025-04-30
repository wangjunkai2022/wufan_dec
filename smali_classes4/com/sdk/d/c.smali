.class public Lcom/sdk/d/c;
.super Lcom/sdk/d/e$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdk/d/e;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sdk/d/e$c<",
        "TParams;TResult;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/sdk/d/e;


# direct methods
.method public constructor <init>(Lcom/sdk/d/e;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/d/c;->b:Lcom/sdk/d/e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sdk/d/e$c;-><init>(Lcom/sdk/d/c;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sdk/d/c;->b:Lcom/sdk/d/e;

    invoke-static {v0}, Lcom/sdk/d/e;->a(Lcom/sdk/d/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/sdk/d/c;->b:Lcom/sdk/d/e;

    iget-object v2, p0, Lcom/sdk/d/e$c;->a:[Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/sdk/a/e;

    .line 1
    iget-object v4, v3, Lcom/sdk/a/e;->p:Lcom/sdk/a/e$a;

    sget-object v5, Lcom/sdk/a/e$a;->e:Lcom/sdk/a/e$a;

    if-eq v4, v5, :cond_5

    if-eqz v2, :cond_5

    array-length v4, v2

    if-nez v4, :cond_0

    goto/16 :goto_0

    :cond_0
    array-length v4, v2

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-ne v4, v5, :cond_1

    aget-object v4, v2, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sdk/a/e;->t:Ljava/lang/String;

    iput-boolean v1, v3, Lcom/sdk/a/e;->u:Z

    aget-object v4, v2, v7

    check-cast v4, Ljava/lang/Boolean;

    iput-object v4, v3, Lcom/sdk/a/e;->v:Ljava/lang/Boolean;

    aget-object v4, v2, v6

    check-cast v4, Ljava/lang/Boolean;

    iput-object v4, v3, Lcom/sdk/a/e;->w:Ljava/lang/Boolean;

    :cond_1
    array-length v4, v2

    if-ne v4, v7, :cond_2

    aget-object v4, v2, v1

    check-cast v4, Ljava/lang/Boolean;

    iput-object v4, v3, Lcom/sdk/a/e;->x:Ljava/lang/Boolean;

    :cond_2
    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, v3, Lcom/sdk/a/e;->s:J

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-virtual {v3, v8}, Lcom/sdk/d/e;->a([Ljava/lang/Object;)V

    aget-object v2, v2, v4

    check-cast v2, Lcom/sdk/a/g;

    invoke-virtual {v2}, Lcom/sdk/a/g;->a()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/sdk/a/e;->o:Ljava/lang/String;

    invoke-virtual {v2, v8, v4}, Lcom/sdk/a/g;->a(Ljava/lang/String;Z)Ljava/net/HttpURLConnection;

    move-result-object v8

    if-nez v8, :cond_3

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    new-instance v5, Lcom/sdk/a/i;

    invoke-virtual {v3}, Lcom/sdk/a/e;->b()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v4, v8, v4}, Lcom/sdk/a/i;-><init>(ILjava/lang/Object;Z)V

    aput-object v5, v2, v1

    invoke-virtual {v3, v2}, Lcom/sdk/d/e;->a([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v3, v2, v8}, Lcom/sdk/a/e;->b(Lcom/sdk/a/g;Ljava/net/HttpURLConnection;)Lcom/sdk/a/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sdk/a/i;->a()I

    move-result v8

    if-nez v8, :cond_4

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v4

    aput-object v2, v8, v1

    invoke-virtual {v3, v8}, Lcom/sdk/d/e;->a([Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v4

    invoke-virtual {v2}, Lcom/sdk/a/i;->a()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v1

    invoke-virtual {v2}, Lcom/sdk/a/i;->b()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v5, v7

    invoke-virtual {v3, v5}, Lcom/sdk/d/e;->a([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sdk/o/c;->c(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u7f51\u7edc\u8bbf\u95ee\u5f02\u5e38\uff1a\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v8, v3, Lcom/sdk/d/e;->h:Ljava/lang/Boolean;

    const-string v9, "PriorityAsyncTask"

    invoke-static {v9, v5, v8}, Lcom/sdk/o/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u7f51\u7edc\u8bbf\u95ee\u5f02\u5e38httphander330\uff1a\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v3, Lcom/sdk/d/e;->h:Ljava/lang/Boolean;

    invoke-static {v9, v2, v5}, Lcom/sdk/o/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const v4, 0x49bb2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    const-string v1, "\u7f51\u7edc\u8bbf\u95ee\u5f02\u5e38"

    aput-object v1, v2, v7

    invoke-virtual {v3, v2}, Lcom/sdk/d/e;->a([Ljava/lang/Object;)V

    :cond_5
    :goto_0
    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/sdk/d/e;->a(Lcom/sdk/d/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

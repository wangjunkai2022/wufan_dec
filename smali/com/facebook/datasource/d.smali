.class public Lcom/facebook/datasource/d;
.super Ljava/lang/Object;
.source "DataSources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/datasource/d$d;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)Lcom/facebook/common/internal/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/facebook/common/internal/k<",
            "Lcom/facebook/datasource/c<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/datasource/d$a;

    invoke-direct {v0, p0}, Lcom/facebook/datasource/d$a;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Object;)Lcom/facebook/datasource/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/facebook/datasource/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/datasource/i;->s()Lcom/facebook/datasource/i;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Lcom/facebook/datasource/i;->setResult(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static c(Ljava/lang/Throwable;)Lcom/facebook/datasource/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/facebook/datasource/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/datasource/i;->s()Lcom/facebook/datasource/i;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Lcom/facebook/datasource/i;->m(Ljava/lang/Throwable;)Z

    return-object v0
.end method

.method public static d(Lcom/facebook/datasource/c;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/datasource/c<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2
    new-instance v1, Lcom/facebook/datasource/d$d;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/facebook/datasource/d$d;-><init>(Lcom/facebook/datasource/d$a;)V

    .line 3
    new-instance v3, Lcom/facebook/datasource/d$d;

    invoke-direct {v3, v2}, Lcom/facebook/datasource/d$d;-><init>(Lcom/facebook/datasource/d$a;)V

    .line 4
    new-instance v2, Lcom/facebook/datasource/d$b;

    invoke-direct {v2, v1, v0, v3}, Lcom/facebook/datasource/d$b;-><init>(Lcom/facebook/datasource/d$d;Ljava/util/concurrent/CountDownLatch;Lcom/facebook/datasource/d$d;)V

    new-instance v4, Lcom/facebook/datasource/d$c;

    invoke-direct {v4}, Lcom/facebook/datasource/d$c;-><init>()V

    invoke-interface {p0, v2, v4}, Lcom/facebook/datasource/c;->e(Lcom/facebook/datasource/e;Ljava/util/concurrent/Executor;)V

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 6
    iget-object p0, v3, Lcom/facebook/datasource/d$d;->a:Ljava/lang/Object;

    if-nez p0, :cond_0

    .line 7
    iget-object p0, v1, Lcom/facebook/datasource/d$d;->a:Ljava/lang/Object;

    return-object p0

    .line 8
    :cond_0
    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

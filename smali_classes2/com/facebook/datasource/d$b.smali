.class final Lcom/facebook/datasource/d$b;
.super Ljava/lang/Object;
.source "DataSources.java"

# interfaces
.implements Lcom/facebook/datasource/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/datasource/d;->d(Lcom/facebook/datasource/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/datasource/e<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/datasource/d$d;

.field final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field final synthetic c:Lcom/facebook/datasource/d$d;


# direct methods
.method constructor <init>(Lcom/facebook/datasource/d$d;Ljava/util/concurrent/CountDownLatch;Lcom/facebook/datasource/d$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/datasource/d$b;->a:Lcom/facebook/datasource/d$d;

    iput-object p2, p0, Lcom/facebook/datasource/d$b;->b:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/facebook/datasource/d$b;->c:Lcom/facebook/datasource/d$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/datasource/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/facebook/datasource/d$b;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public b(Lcom/facebook/datasource/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/datasource/d$b;->c:Lcom/facebook/datasource/d$d;

    invoke-interface {p1}, Lcom/facebook/datasource/c;->d()Ljava/lang/Throwable;

    move-result-object p1

    iput-object p1, v0, Lcom/facebook/datasource/d$d;->a:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object p1, p0, Lcom/facebook/datasource/d$b;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/facebook/datasource/d$b;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 3
    throw p1
.end method

.method public c(Lcom/facebook/datasource/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/facebook/datasource/c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/datasource/d$b;->a:Lcom/facebook/datasource/d$d;

    invoke-interface {p1}, Lcom/facebook/datasource/c;->g()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/facebook/datasource/d$d;->a:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object p1, p0, Lcom/facebook/datasource/d$b;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/facebook/datasource/d$b;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4
    throw p1
.end method

.method public d(Lcom/facebook/datasource/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/c<",
            "TT;>;)V"
        }
    .end annotation

    return-void
.end method

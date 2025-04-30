.class public Lcom/sdk/d/d;
.super Ljava/util/concurrent/FutureTask;
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
        "Ljava/util/concurrent/FutureTask<",
        "TResult;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/sdk/d/e;


# direct methods
.method public constructor <init>(Lcom/sdk/d/e;Ljava/util/concurrent/Callable;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/d/d;->a:Lcom/sdk/d/e;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method public done()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/sdk/d/d;->a:Lcom/sdk/d/e;

    invoke-super {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdk/d/e;->b(Lcom/sdk/d/e;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/sdk/d/d;->a:Lcom/sdk/d/e;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sdk/d/e;->b(Lcom/sdk/d/e;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sdk/d/d;->a:Lcom/sdk/d/e;

    iget-object v1, v1, Lcom/sdk/d/e;->h:Ljava/lang/Boolean;

    const-string v2, "PriorityAsyncTask"

    invoke-static {v2, v0, v1}, Lcom/sdk/o/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    :goto_0
    return-void
.end method

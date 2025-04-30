.class public abstract Lcom/facebook/datasource/a;
.super Ljava/lang/Object;
.source "BaseBooleanSubscriber.java"

# interfaces
.implements Lcom/facebook/datasource/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/datasource/e<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
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
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public b(Lcom/facebook/datasource/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/c<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/facebook/datasource/a;->e(Lcom/facebook/datasource/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-interface {p1}, Lcom/facebook/datasource/c;->close()Z

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lcom/facebook/datasource/c;->close()Z

    .line 3
    throw v0
.end method

.method public c(Lcom/facebook/datasource/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/c<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p1}, Lcom/facebook/datasource/c;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/datasource/a;->f(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-interface {p1}, Lcom/facebook/datasource/c;->close()Z

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lcom/facebook/datasource/c;->close()Z

    .line 3
    throw v0
.end method

.method public d(Lcom/facebook/datasource/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/c<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected abstract e(Lcom/facebook/datasource/c;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/c<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract f(Z)V
.end method

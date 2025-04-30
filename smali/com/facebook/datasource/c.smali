.class public interface abstract Lcom/facebook/datasource/c;
.super Ljava/lang/Object;
.source "DataSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a()Z
.end method

.method public abstract c()Z
.end method

.method public abstract close()Z
.end method

.method public abstract d()Ljava/lang/Throwable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract e(Lcom/facebook/datasource/e;Ljava/util/concurrent/Executor;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/e<",
            "TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation
.end method

.method public abstract f()Z
.end method

.method public abstract g()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getProgress()F
.end method

.method public abstract h()Z
.end method

.method public abstract isClosed()Z
.end method

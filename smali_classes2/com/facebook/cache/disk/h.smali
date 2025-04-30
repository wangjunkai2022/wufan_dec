.class public interface abstract Lcom/facebook/cache/disk/h;
.super Ljava/lang/Object;
.source "FileCache.java"

# interfaces
.implements Lcom/facebook/common/disk/a;


# virtual methods
.method public abstract a()Lcom/facebook/cache/disk/c$a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b(Lcom/facebook/cache/common/c;)Z
.end method

.method public abstract c(Lcom/facebook/cache/common/c;)La0/a;
.end method

.method public abstract clearAll()V
.end method

.method public abstract e(J)J
.end method

.method public abstract f(Lcom/facebook/cache/common/c;)Z
.end method

.method public abstract getCount()J
.end method

.method public abstract getSize()J
.end method

.method public abstract h(Lcom/facebook/cache/common/c;)V
.end method

.method public abstract i(Lcom/facebook/cache/common/c;)Z
.end method

.method public abstract insert(Lcom/facebook/cache/common/c;Lcom/facebook/cache/common/j;)La0/a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isEnabled()Z
.end method

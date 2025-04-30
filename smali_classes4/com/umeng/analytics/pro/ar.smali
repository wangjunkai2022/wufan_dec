.class public interface abstract Lcom/umeng/analytics/pro/ar;
.super Ljava/lang/Object;
.source "TBase.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/umeng/analytics/pro/ar<",
        "**>;F::",
        "Lcom/umeng/analytics/pro/ay;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract deepCopy()Lcom/umeng/analytics/pro/ar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/umeng/analytics/pro/ar<",
            "TT;TF;>;"
        }
    .end annotation
.end method

.method public abstract fieldForId(I)Lcom/umeng/analytics/pro/ay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TF;"
        }
    .end annotation
.end method

.method public abstract read(Lcom/umeng/analytics/pro/bq;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/ax;
        }
    .end annotation
.end method

.method public abstract write(Lcom/umeng/analytics/pro/bq;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/ax;
        }
    .end annotation
.end method

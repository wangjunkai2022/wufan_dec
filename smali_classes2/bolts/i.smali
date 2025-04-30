.class public Lbolts/i;
.super Ljava/lang/Object;
.source "TaskCompletionSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lbolts/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbolts/h<",
            "TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lbolts/h;

    invoke-direct {v0}, Lbolts/h;-><init>()V

    iput-object v0, p0, Lbolts/i;->a:Lbolts/h;

    return-void
.end method


# virtual methods
.method public a()Lbolts/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/h<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lbolts/i;->a:Lbolts/h;

    return-object v0
.end method

.method public b()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lbolts/i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot cancel a completed task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lbolts/i;->e(Ljava/lang/Exception;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot set the error on a completed task."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lbolts/i;->a:Lbolts/h;

    invoke-virtual {v0}, Lbolts/h;->R()Z

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/Exception;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lbolts/i;->a:Lbolts/h;

    invoke-virtual {v0, p1}, Lbolts/h;->S(Ljava/lang/Exception;)Z

    move-result p1

    return p1
.end method

.method public f(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lbolts/i;->a:Lbolts/h;

    invoke-virtual {v0, p1}, Lbolts/h;->T(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lbolts/i;->f(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot set the result of a completed task."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

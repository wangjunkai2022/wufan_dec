.class public interface abstract Lcom/sdk/Unicorn/base/api/CallBack;
.super Ljava/lang/Object;
.source ""


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
.method public abstract onFailed(IILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSuccess(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "ITT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.class public interface abstract Lcom/tencent/cos/task/listener/ITaskListener;
.super Ljava/lang/Object;
.source "ITaskListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Lcom/tencent/cos/model/COSRequest;",
        "T2:",
        "Lcom/tencent/cos/model/COSResult;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onFailed(Lcom/tencent/cos/model/COSRequest;Lcom/tencent/cos/model/COSResult;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;TT2;)V"
        }
    .end annotation
.end method

.method public abstract onSuccess(Lcom/tencent/cos/model/COSRequest;Lcom/tencent/cos/model/COSResult;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;TT2;)V"
        }
    .end annotation
.end method

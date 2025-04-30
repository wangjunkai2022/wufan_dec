.class public interface abstract Lcom/tencent/cos/task/listener/ITaskStateListener;
.super Ljava/lang/Object;
.source "ITaskStateListener.java"


# virtual methods
.method public abstract onCancel()V
.end method

.method public abstract onError(ILjava/lang/String;)V
.end method

.method public abstract onFail()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResponse(Lcom/tencent/cos/model/COSResult;)V
.end method

.method public abstract onRetry()V
.end method

.method public abstract onSendBegin()V
.end method

.method public abstract onSendFinish()V
.end method

.method public abstract onTimeout()V
.end method

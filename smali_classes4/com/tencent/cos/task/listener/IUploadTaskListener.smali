.class public interface abstract Lcom/tencent/cos/task/listener/IUploadTaskListener;
.super Ljava/lang/Object;
.source "IUploadTaskListener.java"

# interfaces
.implements Lcom/tencent/cos/task/listener/ITaskListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Lcom/tencent/cos/model/COSRequest;",
        "T2:",
        "Lcom/tencent/cos/model/COSResult;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/tencent/cos/task/listener/ITaskListener;"
    }
.end annotation


# virtual methods
.method public abstract onCancel(Lcom/tencent/cos/model/COSRequest;Lcom/tencent/cos/model/COSResult;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;TT2;)V"
        }
    .end annotation
.end method

.method public abstract onProgress(Lcom/tencent/cos/model/COSRequest;JJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;JJ)V"
        }
    .end annotation
.end method

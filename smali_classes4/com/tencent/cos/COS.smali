.class public interface abstract Lcom/tencent/cos/COS;
.super Ljava/lang/Object;
.source "COS.java"


# virtual methods
.method public abstract cancelTask(I)Z
.end method

.method public abstract createDir(Lcom/tencent/cos/model/CreateDirRequest;)Lcom/tencent/cos/model/CreateDirResult;
.end method

.method public abstract deleteObject(Lcom/tencent/cos/model/DeleteObjectRequest;)Lcom/tencent/cos/model/DeleteObjectResult;
.end method

.method public abstract getObject(Lcom/tencent/cos/model/GetObjectRequest;)Lcom/tencent/cos/model/GetObjectResult;
.end method

.method public abstract getObjectMetadata(Lcom/tencent/cos/model/GetObjectMetadataRequest;)Lcom/tencent/cos/model/GetObjectMetadataResult;
.end method

.method public abstract headBucket(Lcom/tencent/cos/model/HeadBucketRequest;)Lcom/tencent/cos/model/HeadBucketResult;
.end method

.method public abstract listDir(Lcom/tencent/cos/model/ListDirRequest;)Lcom/tencent/cos/model/ListDirResult;
.end method

.method public abstract listTasks()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/cos/task/Task;",
            ">;"
        }
    .end annotation
.end method

.method public abstract pauseTask(I)Z
.end method

.method public abstract putObject(Lcom/tencent/cos/model/PutObjectRequest;)Lcom/tencent/cos/model/PutObjectResult;
.end method

.method public abstract removeEmptyDir(Lcom/tencent/cos/model/RemoveEmptyDirRequest;)Lcom/tencent/cos/model/RemoveEmptyDirResult;
.end method

.method public abstract resumeTask(I)Z
.end method

.method public abstract updateObject(Lcom/tencent/cos/model/UpdateObjectRequest;)Lcom/tencent/cos/model/UpdateObjectResult;
.end method

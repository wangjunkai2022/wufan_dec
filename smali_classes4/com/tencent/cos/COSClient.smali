.class public Lcom/tencent/cos/COSClient;
.super Ljava/lang/Object;
.source "COSClient.java"

# interfaces
.implements Lcom/tencent/cos/COS;


# static fields
.field private static context:Landroid/content/Context; = null

.field private static enableLog:Z = true


# instance fields
.field private appid:Ljava/lang/String;

.field private config:Lcom/tencent/cos/COSConfig;

.field private taskManager:Lcom/tencent/cos/task/TaskManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/cos/COSConfig;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sput-object p1, Lcom/tencent/cos/COSClient;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/tencent/cos/COSClient;->appid:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/tencent/cos/COSClient;->config:Lcom/tencent/cos/COSConfig;

    .line 5
    new-instance p1, Lcom/tencent/cos/task/TaskManager;

    sget-object p2, Lcom/tencent/cos/COSClient;->context:Landroid/content/Context;

    iget-object p3, p0, Lcom/tencent/cos/COSClient;->config:Lcom/tencent/cos/COSConfig;

    invoke-direct {p1, p2, p3, p4}, Lcom/tencent/cos/task/TaskManager;-><init>(Landroid/content/Context;Lcom/tencent/cos/COSConfig;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/cos/COSClient;->taskManager:Lcom/tencent/cos/task/TaskManager;

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/cos/COSClient;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static isEnableLog()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/tencent/cos/COSClient;->enableLog:Z

    return v0
.end method


# virtual methods
.method public cancelTask(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/COSClient;->taskManager:Lcom/tencent/cos/task/TaskManager;

    invoke-virtual {v0, p1}, Lcom/tencent/cos/task/TaskManager;->cancelTask(I)Z

    move-result p1

    return p1
.end method

.method public createDir(Lcom/tencent/cos/model/CreateDirRequest;)Lcom/tencent/cos/model/CreateDirResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/COSClient;->appid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tencent/cos/model/COSRequest;->setAppid(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/cos/COSClient;->taskManager:Lcom/tencent/cos/task/TaskManager;

    invoke-virtual {v0, p1}, Lcom/tencent/cos/task/TaskManager;->sendCmdRequest(Lcom/tencent/cos/model/COSRequest;)Lcom/tencent/cos/model/COSResult;

    move-result-object p1

    check-cast p1, Lcom/tencent/cos/model/CreateDirResult;

    return-object p1
.end method

.method public deleteObject(Lcom/tencent/cos/model/DeleteObjectRequest;)Lcom/tencent/cos/model/DeleteObjectResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/COSClient;->appid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tencent/cos/model/COSRequest;->setAppid(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/cos/COSClient;->taskManager:Lcom/tencent/cos/task/TaskManager;

    invoke-virtual {v0, p1}, Lcom/tencent/cos/task/TaskManager;->sendCmdRequest(Lcom/tencent/cos/model/COSRequest;)Lcom/tencent/cos/model/COSResult;

    move-result-object p1

    check-cast p1, Lcom/tencent/cos/model/DeleteObjectResult;

    return-object p1
.end method

.method public enableLog(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lcom/tencent/cos/COSClient;->enableLog:Z

    return-void
.end method

.method public getConfig()Lcom/tencent/cos/COSConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/COSClient;->config:Lcom/tencent/cos/COSConfig;

    return-object v0
.end method

.method public getObject(Lcom/tencent/cos/model/GetObjectRequest;)Lcom/tencent/cos/model/GetObjectResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/COSClient;->appid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tencent/cos/model/COSRequest;->setAppid(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/cos/COSClient;->taskManager:Lcom/tencent/cos/task/TaskManager;

    invoke-virtual {v0, p1}, Lcom/tencent/cos/task/TaskManager;->sendDownloadRequest(Lcom/tencent/cos/model/GetObjectRequest;)Lcom/tencent/cos/model/COSResult;

    move-result-object p1

    check-cast p1, Lcom/tencent/cos/model/GetObjectResult;

    return-object p1
.end method

.method public getObjectMetadata(Lcom/tencent/cos/model/GetObjectMetadataRequest;)Lcom/tencent/cos/model/GetObjectMetadataResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/COSClient;->appid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tencent/cos/model/COSRequest;->setAppid(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/cos/COSClient;->taskManager:Lcom/tencent/cos/task/TaskManager;

    invoke-virtual {v0, p1}, Lcom/tencent/cos/task/TaskManager;->sendCmdRequest(Lcom/tencent/cos/model/COSRequest;)Lcom/tencent/cos/model/COSResult;

    move-result-object p1

    check-cast p1, Lcom/tencent/cos/model/GetObjectMetadataResult;

    return-object p1
.end method

.method public headBucket(Lcom/tencent/cos/model/HeadBucketRequest;)Lcom/tencent/cos/model/HeadBucketResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/COSClient;->appid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tencent/cos/model/COSRequest;->setAppid(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/cos/COSClient;->taskManager:Lcom/tencent/cos/task/TaskManager;

    invoke-virtual {v0, p1}, Lcom/tencent/cos/task/TaskManager;->sendCmdRequest(Lcom/tencent/cos/model/COSRequest;)Lcom/tencent/cos/model/COSResult;

    move-result-object p1

    check-cast p1, Lcom/tencent/cos/model/HeadBucketResult;

    return-object p1
.end method

.method public listDir(Lcom/tencent/cos/model/ListDirRequest;)Lcom/tencent/cos/model/ListDirResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/COSClient;->appid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tencent/cos/model/COSRequest;->setAppid(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/cos/COSClient;->taskManager:Lcom/tencent/cos/task/TaskManager;

    invoke-virtual {v0, p1}, Lcom/tencent/cos/task/TaskManager;->sendCmdRequest(Lcom/tencent/cos/model/COSRequest;)Lcom/tencent/cos/model/COSResult;

    move-result-object p1

    check-cast p1, Lcom/tencent/cos/model/ListDirResult;

    return-object p1
.end method

.method public listTasks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/cos/task/Task;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/COSClient;->taskManager:Lcom/tencent/cos/task/TaskManager;

    invoke-virtual {v0}, Lcom/tencent/cos/task/TaskManager;->getListTask()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public pauseTask(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/COSClient;->taskManager:Lcom/tencent/cos/task/TaskManager;

    invoke-virtual {v0, p1}, Lcom/tencent/cos/task/TaskManager;->pauseTask(I)Z

    move-result p1

    return p1
.end method

.method public putObject(Lcom/tencent/cos/model/PutObjectRequest;)Lcom/tencent/cos/model/PutObjectResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/COSClient;->appid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tencent/cos/model/COSRequest;->setAppid(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/tencent/cos/model/PutObjectRequest;->isSliceFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/tencent/cos/COSClient;->taskManager:Lcom/tencent/cos/task/TaskManager;

    invoke-virtual {v0, p1}, Lcom/tencent/cos/task/TaskManager;->sendUploadSliceRequest(Lcom/tencent/cos/model/PutObjectRequest;)Lcom/tencent/cos/model/COSResult;

    move-result-object p1

    check-cast p1, Lcom/tencent/cos/model/PutObjectResult;

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/COSClient;->taskManager:Lcom/tencent/cos/task/TaskManager;

    invoke-virtual {v0, p1}, Lcom/tencent/cos/task/TaskManager;->sendUploadRequest(Lcom/tencent/cos/model/PutObjectRequest;)Lcom/tencent/cos/model/COSResult;

    move-result-object p1

    check-cast p1, Lcom/tencent/cos/model/PutObjectResult;

    return-object p1
.end method

.method public removeEmptyDir(Lcom/tencent/cos/model/RemoveEmptyDirRequest;)Lcom/tencent/cos/model/RemoveEmptyDirResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/COSClient;->appid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tencent/cos/model/COSRequest;->setAppid(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/cos/COSClient;->taskManager:Lcom/tencent/cos/task/TaskManager;

    invoke-virtual {v0, p1}, Lcom/tencent/cos/task/TaskManager;->sendCmdRequest(Lcom/tencent/cos/model/COSRequest;)Lcom/tencent/cos/model/COSResult;

    move-result-object p1

    check-cast p1, Lcom/tencent/cos/model/RemoveEmptyDirResult;

    return-object p1
.end method

.method public resumeTask(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/COSClient;->taskManager:Lcom/tencent/cos/task/TaskManager;

    invoke-virtual {v0, p1}, Lcom/tencent/cos/task/TaskManager;->resumeTask(I)Z

    move-result p1

    return p1
.end method

.method public setConfig(Lcom/tencent/cos/COSConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/cos/COSClient;->config:Lcom/tencent/cos/COSConfig;

    return-void
.end method

.method public updateObject(Lcom/tencent/cos/model/UpdateObjectRequest;)Lcom/tencent/cos/model/UpdateObjectResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/COSClient;->appid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tencent/cos/model/COSRequest;->setAppid(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/cos/COSClient;->taskManager:Lcom/tencent/cos/task/TaskManager;

    invoke-virtual {v0, p1}, Lcom/tencent/cos/task/TaskManager;->sendCmdRequest(Lcom/tencent/cos/model/COSRequest;)Lcom/tencent/cos/model/COSResult;

    move-result-object p1

    check-cast p1, Lcom/tencent/cos/model/UpdateObjectResult;

    return-object p1
.end method

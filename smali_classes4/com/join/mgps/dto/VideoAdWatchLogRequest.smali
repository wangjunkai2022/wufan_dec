.class public Lcom/join/mgps/dto/VideoAdWatchLogRequest;
.super Ljava/lang/Object;
.source "VideoAdWatchLogRequest.java"


# instance fields
.field private sceneType:I

.field private sdkType:I

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSceneType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/VideoAdWatchLogRequest;->sceneType:I

    return v0
.end method

.method public getSdkType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/VideoAdWatchLogRequest;->sdkType:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/VideoAdWatchLogRequest;->uid:I

    return v0
.end method

.method public setSceneType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/VideoAdWatchLogRequest;->sceneType:I

    return-void
.end method

.method public setSdkType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/VideoAdWatchLogRequest;->sdkType:I

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/VideoAdWatchLogRequest;->uid:I

    return-void
.end method

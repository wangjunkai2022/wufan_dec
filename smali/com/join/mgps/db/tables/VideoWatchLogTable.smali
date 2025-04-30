.class public Lcom/join/mgps/db/tables/VideoWatchLogTable;
.super Ljava/lang/Object;
.source "VideoWatchLogTable.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field private sceneType:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private sdkType:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private userId:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/VideoWatchLogTable;->id:I

    return v0
.end method

.method public getSceneType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/VideoWatchLogTable;->sceneType:I

    return v0
.end method

.method public getSdkType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/VideoWatchLogTable;->sdkType:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/VideoWatchLogTable;->userId:I

    return v0
.end method

.method public setSceneType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/VideoWatchLogTable;->sceneType:I

    return-void
.end method

.method public setSdkType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/VideoWatchLogTable;->sdkType:I

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/VideoWatchLogTable;->userId:I

    return-void
.end method

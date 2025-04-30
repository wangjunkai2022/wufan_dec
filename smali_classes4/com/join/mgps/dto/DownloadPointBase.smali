.class public Lcom/join/mgps/dto/DownloadPointBase;
.super Ljava/lang/Object;
.source "DownloadPointBase.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private _from:I

.field private _from_type:I

.field private isFromRecomDown:Z

.field private nodeId:Ljava/lang/String;

.field private position_path:Lcom/psk/eventmodule/StatFactory$VolcanoOther;

.field private reMarks:Ljava/lang/String;

.field private recPosition:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/dto/DownloadPointBase;->_from:I

    .line 3
    iput v0, p0, Lcom/join/mgps/dto/DownloadPointBase;->_from_type:I

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/join/mgps/dto/DownloadPointBase;->recPosition:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/join/mgps/dto/DownloadPointBase;->reMarks:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getNodeId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DownloadPointBase;->nodeId:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition_path()Lcom/psk/eventmodule/StatFactory$VolcanoOther;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DownloadPointBase;->position_path:Lcom/psk/eventmodule/StatFactory$VolcanoOther;

    return-object v0
.end method

.method public getReMarks()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DownloadPointBase;->reMarks:Ljava/lang/String;

    return-object v0
.end method

.method public getRecPosition()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DownloadPointBase;->recPosition:Ljava/lang/String;

    return-object v0
.end method

.method public getVolcanoOtherJsonStr()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DownloadPointBase;->position_path:Lcom/psk/eventmodule/StatFactory$VolcanoOther;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/dto/DownloadPointBase;->position_path:Lcom/psk/eventmodule/StatFactory$VolcanoOther;

    invoke-virtual {v0, v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public get_from()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DownloadPointBase;->_from:I

    return v0
.end method

.method public get_from_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DownloadPointBase;->_from_type:I

    return v0
.end method

.method public isFromRecomDown()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/DownloadPointBase;->isFromRecomDown:Z

    return v0
.end method

.method public setFromRecomDown(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/DownloadPointBase;->isFromRecomDown:Z

    return-void
.end method

.method public setNodeId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DownloadPointBase;->nodeId:Ljava/lang/String;

    return-void
.end method

.method public setPosition_path(Lcom/psk/eventmodule/StatFactory$VolcanoOther;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DownloadPointBase;->position_path:Lcom/psk/eventmodule/StatFactory$VolcanoOther;

    return-void
.end method

.method public setReMarks(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DownloadPointBase;->reMarks:Ljava/lang/String;

    return-void
.end method

.method public setRecPosition(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DownloadPointBase;->recPosition:Ljava/lang/String;

    return-void
.end method

.method public set_from(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DownloadPointBase;->_from:I

    return-void
.end method

.method public set_from_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DownloadPointBase;->_from_type:I

    return-void
.end method

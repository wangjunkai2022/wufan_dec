.class public Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
.super Ljava/lang/Object;
.source "ArchiveData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private addTime:J

.field private archiveDesc:Ljava/lang/String;

.field private archiveLocalPath:Ljava/lang/String;

.field private archiveLocalZipPath:Ljava/lang/String;

.field private archiveLocation:Ljava/lang/String;

.field private archiveSize:J

.field private archiveZipPath:Ljava/lang/String;

.field private auditStatus:I

.field private avatar:Ljava/lang/String;

.field private checkStatus:I

.field private coverLocation:Ljava/lang/String;

.field private downloadCount:I

.field private game_id:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isChoice:I

.field private isDownloadArchive:I

.field private isFirstRun:I

.field private isLike:I

.field private isUnLike:I

.field private likeCount:I

.field private mainArchiveLocalPath:Ljava/lang/String;

.field private mainArchiveLocalPath2:Ljava/lang/String;

.field private negativeCount:I

.field private nickname:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private playTime:Ljava/lang/String;

.field private runingArchiveId:J

.field private showMoreStatus:I

.field private showText:Ljava/lang/String;

.field private showType:I

.field private status:I

.field private uid:I

.field private userId:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\u4e0b\u8f7d"

    .line 2
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->showText:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->status:I

    const-string v1, ""

    .line 4
    iput-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->playTime:Ljava/lang/String;

    .line 5
    iput v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->isFirstRun:I

    .line 6
    iput v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->auditStatus:I

    .line 7
    iput v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->checkStatus:I

    const-wide/16 v1, 0x0

    .line 8
    iput-wide v1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->runingArchiveId:J

    .line 9
    iput v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->showMoreStatus:I

    return-void
.end method


# virtual methods
.method public getAddTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->addTime:J

    return-wide v0
.end method

.method public getArchiveDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->archiveDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getArchiveLocalPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->archiveLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method public getArchiveLocalZipPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->archiveLocalZipPath:Ljava/lang/String;

    return-object v0
.end method

.method public getArchiveLocation()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->archiveLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getArchiveSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->archiveSize:J

    return-wide v0
.end method

.method public getArchiveZipPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->archiveZipPath:Ljava/lang/String;

    return-object v0
.end method

.method public getAuditStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->auditStatus:I

    return v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->checkStatus:I

    return v0
.end method

.method public getCoverLocation()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->coverLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->downloadCount:I

    return v0
.end method

.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->game_id:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsChoice()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->isChoice:I

    return v0
.end method

.method public getIsDownloadArchive()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->isDownloadArchive:I

    return v0
.end method

.method public getIsFirstRun()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->isFirstRun:I

    return v0
.end method

.method public getIsLike()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->isLike:I

    return v0
.end method

.method public getIsUnLike()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->isUnLike:I

    return v0
.end method

.method public getLikeCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->likeCount:I

    return v0
.end method

.method public getMainArchiveLocalPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->mainArchiveLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method public getMainArchiveLocalPath2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->mainArchiveLocalPath2:Ljava/lang/String;

    return-object v0
.end method

.method public getNegativeCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->negativeCount:I

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->playTime:Ljava/lang/String;

    return-object v0
.end method

.method public getRuningArchiveId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->runingArchiveId:J

    return-wide v0
.end method

.method public getShowMoreStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->showMoreStatus:I

    return v0
.end method

.method public getShowText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->showText:Ljava/lang/String;

    return-object v0
.end method

.method public getShowType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->showType:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->status:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->uid:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->userId:I

    return v0
.end method

.method public setAddTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->addTime:J

    return-void
.end method

.method public setArchiveDesc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->archiveDesc:Ljava/lang/String;

    return-void
.end method

.method public setArchiveLocalPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->archiveLocalPath:Ljava/lang/String;

    return-void
.end method

.method public setArchiveLocalZipPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->archiveLocalZipPath:Ljava/lang/String;

    return-void
.end method

.method public setArchiveLocation(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->archiveLocation:Ljava/lang/String;

    return-void
.end method

.method public setArchiveSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->archiveSize:J

    return-void
.end method

.method public setArchiveZipPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->archiveZipPath:Ljava/lang/String;

    return-void
.end method

.method public setAuditStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->auditStatus:I

    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setCheckStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->checkStatus:I

    return-void
.end method

.method public setCoverLocation(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->coverLocation:Ljava/lang/String;

    return-void
.end method

.method public setDownloadCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->downloadCount:I

    return-void
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->game_id:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->id:Ljava/lang/String;

    return-void
.end method

.method public setIsChoice(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->isChoice:I

    return-void
.end method

.method public setIsDownloadArchive(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->isDownloadArchive:I

    return-void
.end method

.method public setIsFirstRun(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->isFirstRun:I

    return-void
.end method

.method public setIsLike(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->isLike:I

    return-void
.end method

.method public setIsUnLike(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->isUnLike:I

    return-void
.end method

.method public setLikeCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->likeCount:I

    return-void
.end method

.method public setMainArchiveLocalPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->mainArchiveLocalPath:Ljava/lang/String;

    return-void
.end method

.method public setMainArchiveLocalPath2(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->mainArchiveLocalPath2:Ljava/lang/String;

    return-void
.end method

.method public setNegativeCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->negativeCount:I

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPlayTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->playTime:Ljava/lang/String;

    return-void
.end method

.method public setRuningArchiveId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->runingArchiveId:J

    return-void
.end method

.method public setShowMoreStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->showMoreStatus:I

    return-void
.end method

.method public setShowText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->showText:Ljava/lang/String;

    return-void
.end method

.method public setShowType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->showType:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->status:I

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->uid:I

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->userId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ArchiveData{archiveDesc=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->archiveDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", addTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->addTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", archiveSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->archiveSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", archiveLocation=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->archiveLocation:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", archiveLocalPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->archiveLocalPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", archiveLocalZipPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->archiveLocalZipPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mainArchiveLocalPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->mainArchiveLocalPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mainArchiveLocalPath2=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->mainArchiveLocalPath2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", avatar=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", coverLocation=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->coverLocation:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", downloadCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->downloadCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", game_id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->game_id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isDownloadArchive="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->isDownloadArchive:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isLike="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->isLike:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", likeCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->likeCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isUnLike="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->isUnLike:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", negativeCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->negativeCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", nickname=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->uid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", packageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", archiveZipPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->archiveZipPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", showType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->showType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", showText=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->showText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->status:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", playTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->playTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", isFirstRun="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->isFirstRun:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", auditStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->auditStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", checkStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->checkStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", runingArchiveId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->runingArchiveId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", showMoreStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->showMoreStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isChoice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->isChoice:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

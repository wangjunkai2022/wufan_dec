.class public Lcom/join/mgps/dto/CloudListDataBean;
.super Ljava/lang/Object;
.source "CloudListDataBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private addTime:Ljava/lang/String;

.field private archiveCoin:Ljava/lang/String;

.field private archiveCover:Ljava/lang/String;

.field private archiveCoverFilePath:Ljava/lang/String;

.field private archiveDesc:Ljava/lang/String;

.field private archiveFile:Ljava/lang/String;

.field private archiveFileName:Ljava/lang/String;

.field private archiveFilePath:Ljava/lang/String;

.field private archiveId:Ljava/lang/String;

.field private archiveName:Ljava/lang/String;

.field private avatar:Ljava/lang/String;

.field private downNum:I

.field private fileMd5:Ljava/lang/String;

.field private fileSize:J

.field private goodrate:Ljava/lang/String;

.field private highComment:I

.field private highRate:I

.field private id:Ljava/lang/String;

.field private isCheck:I

.field private isComment:I

.field private isSelectCheck:Z

.field private isVip:I

.field private nickname:Ljava/lang/String;

.field private status:I

.field private tag:Ljava/lang/String;

.field private todayCoin:I

.field private totalCoin:I

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->isCheck:I

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->isSelectCheck:Z

    return-void
.end method


# virtual methods
.method public getAddTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->addTime:Ljava/lang/String;

    return-object v0
.end method

.method public getArchiveCoin()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->archiveCoin:Ljava/lang/String;

    return-object v0
.end method

.method public getArchiveCover()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->archiveCover:Ljava/lang/String;

    return-object v0
.end method

.method public getArchiveCoverFilePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->archiveCoverFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getArchiveDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->archiveDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getArchiveFile()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->archiveFile:Ljava/lang/String;

    return-object v0
.end method

.method public getArchiveFileName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->archiveFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getArchiveFilePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->archiveFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getArchiveId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->archiveId:Ljava/lang/String;

    return-object v0
.end method

.method public getArchiveName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->archiveName:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getDownNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->downNum:I

    return v0
.end method

.method public getFileMd5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->fileMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->fileSize:J

    return-wide v0
.end method

.method public getGoodrate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->goodrate:Ljava/lang/String;

    return-object v0
.end method

.method public getHighComment()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->highComment:I

    return v0
.end method

.method public getHighRate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->highRate:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsCheck()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->isCheck:I

    return v0
.end method

.method public getIsComment()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->isComment:I

    return v0
.end method

.method public getIsVip()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->isVip:I

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->status:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTodayCoin()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->todayCoin:I

    return v0
.end method

.method public getTotalCoin()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->totalCoin:I

    return v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public isSelectCheck()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/CloudListDataBean;->isSelectCheck:Z

    return v0
.end method

.method public setAddTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->addTime:Ljava/lang/String;

    return-void
.end method

.method public setArchiveCoin(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->archiveCoin:Ljava/lang/String;

    return-void
.end method

.method public setArchiveCover(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->archiveCover:Ljava/lang/String;

    return-void
.end method

.method public setArchiveCoverFilePath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->archiveCoverFilePath:Ljava/lang/String;

    return-void
.end method

.method public setArchiveDesc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->archiveDesc:Ljava/lang/String;

    return-void
.end method

.method public setArchiveFile(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->archiveFile:Ljava/lang/String;

    return-void
.end method

.method public setArchiveFileName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->archiveFileName:Ljava/lang/String;

    return-void
.end method

.method public setArchiveFilePath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->archiveFilePath:Ljava/lang/String;

    return-void
.end method

.method public setArchiveId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->archiveId:Ljava/lang/String;

    return-void
.end method

.method public setArchiveName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->archiveName:Ljava/lang/String;

    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setDownNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->downNum:I

    return-void
.end method

.method public setFileMd5(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->fileMd5:Ljava/lang/String;

    return-void
.end method

.method public setFileSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->fileSize:J

    return-void
.end method

.method public setGoodrate(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->goodrate:Ljava/lang/String;

    return-void
.end method

.method public setHighComment(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->highComment:I

    return-void
.end method

.method public setHighRate(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->highRate:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setIsCheck(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->isCheck:I

    return-void
.end method

.method public setIsComment(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->isComment:I

    return-void
.end method

.method public setIsVip(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->isVip:I

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setSelectCheck(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->isSelectCheck:Z

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->status:I

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->tag:Ljava/lang/String;

    return-void
.end method

.method public setTodayCoin(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->todayCoin:I

    return-void
.end method

.method public setTotalCoin(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->totalCoin:I

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CloudListDataBean;->uid:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CloudListDataBean{archiveName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/CloudListDataBean;->archiveName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", archiveCover=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CloudListDataBean;->archiveCover:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", archiveFile=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CloudListDataBean;->archiveFile:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", fileMd5=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CloudListDataBean;->fileMd5:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", fileSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/join/mgps/dto/CloudListDataBean;->fileSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", addTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CloudListDataBean;->addTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", archiveFilePath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CloudListDataBean;->archiveFilePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", archiveCoverFilePath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CloudListDataBean;->archiveCoverFilePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", archiveFileName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CloudListDataBean;->archiveFileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/dto/CloudListDataBean;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isCheck="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/dto/CloudListDataBean;->isCheck:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isSelectCheck="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/join/mgps/dto/CloudListDataBean;->isSelectCheck:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

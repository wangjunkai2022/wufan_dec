.class public Lcom/join/mgps/db/tables/DownloadFileTable;
.super Ljava/lang/Object;
.source "DownloadFileTable.java"


# instance fields
.field private absolutePath:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private basePath:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private completeSize:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private crc_link_type_val:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private createTime:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private describe:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private downloading:S
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private dtype:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private fileType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private finishTime:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private finished:S
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private gameZipPath:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private gid:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field private isAutoPause:S
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isOpen:S
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private packageName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private percentage:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private portraitURL:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private romType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private showName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private showType:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private starNumber:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private tag:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private tips:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private totalSize:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private ver:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private ver_name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->showType:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IISLjava/lang/String;Ljava/lang/String;Ljava/lang/String;SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;SLjava/lang/String;I)V
    .locals 2

    move-object v0, p0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    .line 4
    iput v1, v0, Lcom/join/mgps/db/tables/DownloadFileTable;->showType:I

    move v1, p1

    .line 5
    iput v1, v0, Lcom/join/mgps/db/tables/DownloadFileTable;->id:I

    move-object v1, p2

    .line 6
    iput-object v1, v0, Lcom/join/mgps/db/tables/DownloadFileTable;->tag:Ljava/lang/String;

    move-object v1, p3

    .line 7
    iput-object v1, v0, Lcom/join/mgps/db/tables/DownloadFileTable;->url:Ljava/lang/String;

    move-object v1, p4

    .line 8
    iput-object v1, v0, Lcom/join/mgps/db/tables/DownloadFileTable;->basePath:Ljava/lang/String;

    move-object v1, p5

    .line 9
    iput-object v1, v0, Lcom/join/mgps/db/tables/DownloadFileTable;->name:Ljava/lang/String;

    move-object v1, p6

    .line 10
    iput-object v1, v0, Lcom/join/mgps/db/tables/DownloadFileTable;->absolutePath:Ljava/lang/String;

    move-object v1, p7

    .line 11
    iput-object v1, v0, Lcom/join/mgps/db/tables/DownloadFileTable;->gameZipPath:Ljava/lang/String;

    move v1, p8

    .line 12
    iput v1, v0, Lcom/join/mgps/db/tables/DownloadFileTable;->totalSize:I

    move v1, p9

    .line 13
    iput v1, v0, Lcom/join/mgps/db/tables/DownloadFileTable;->completeSize:I

    move v1, p10

    .line 14
    iput-short v1, v0, Lcom/join/mgps/db/tables/DownloadFileTable;->downloading:S

    move-object v1, p11

    .line 15
    iput-object v1, v0, Lcom/join/mgps/db/tables/DownloadFileTable;->showName:Ljava/lang/String;

    move-object v1, p12

    .line 16
    iput-object v1, v0, Lcom/join/mgps/db/tables/DownloadFileTable;->createTime:Ljava/lang/String;

    move-object v1, p13

    .line 17
    iput-object v1, v0, Lcom/join/mgps/db/tables/DownloadFileTable;->dtype:Ljava/lang/String;

    move/from16 v1, p14

    .line 18
    iput-short v1, v0, Lcom/join/mgps/db/tables/DownloadFileTable;->finished:S

    move-object/from16 v1, p15

    .line 19
    iput-object v1, v0, Lcom/join/mgps/db/tables/DownloadFileTable;->fileType:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 20
    iput-object v1, v0, Lcom/join/mgps/db/tables/DownloadFileTable;->finishTime:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 21
    iput-object v1, v0, Lcom/join/mgps/db/tables/DownloadFileTable;->packageName:Ljava/lang/String;

    move-object/from16 v1, p18

    .line 22
    iput-object v1, v0, Lcom/join/mgps/db/tables/DownloadFileTable;->tips:Ljava/lang/String;

    move-object/from16 v1, p19

    .line 23
    iput-object v1, v0, Lcom/join/mgps/db/tables/DownloadFileTable;->portraitURL:Ljava/lang/String;

    move-object/from16 v1, p20

    .line 24
    iput-object v1, v0, Lcom/join/mgps/db/tables/DownloadFileTable;->percentage:Ljava/lang/String;

    move/from16 v1, p21

    .line 25
    iput-short v1, v0, Lcom/join/mgps/db/tables/DownloadFileTable;->isAutoPause:S

    move-object/from16 v1, p22

    .line 26
    iput-object v1, v0, Lcom/join/mgps/db/tables/DownloadFileTable;->crc_link_type_val:Ljava/lang/String;

    move-object/from16 v1, p23

    .line 27
    iput-object v1, v0, Lcom/join/mgps/db/tables/DownloadFileTable;->ver:Ljava/lang/String;

    move-object/from16 v1, p24

    .line 28
    iput-object v1, v0, Lcom/join/mgps/db/tables/DownloadFileTable;->ver_name:Ljava/lang/String;

    move-object/from16 v1, p25

    .line 29
    iput-object v1, v0, Lcom/join/mgps/db/tables/DownloadFileTable;->gid:Ljava/lang/String;

    move-object/from16 v1, p26

    .line 30
    iput-object v1, v0, Lcom/join/mgps/db/tables/DownloadFileTable;->starNumber:Ljava/lang/String;

    move-object/from16 v1, p27

    .line 31
    iput-object v1, v0, Lcom/join/mgps/db/tables/DownloadFileTable;->romType:Ljava/lang/String;

    move/from16 v1, p28

    .line 32
    iput-short v1, v0, Lcom/join/mgps/db/tables/DownloadFileTable;->isOpen:S

    move-object/from16 v1, p29

    .line 33
    iput-object v1, v0, Lcom/join/mgps/db/tables/DownloadFileTable;->describe:Ljava/lang/String;

    move/from16 v1, p30

    .line 34
    iput v1, v0, Lcom/join/mgps/db/tables/DownloadFileTable;->showType:I

    return-void
.end method


# virtual methods
.method public getAbsolutePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->absolutePath:Ljava/lang/String;

    return-object v0
.end method

.method public getBasePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->basePath:Ljava/lang/String;

    return-object v0
.end method

.method public getCompleteSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->completeSize:I

    return v0
.end method

.method public getCrc_link_type_val()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->crc_link_type_val:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDescribe()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->describe:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloading()S
    .locals 1

    .line 1
    iget-short v0, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->downloading:S

    return v0
.end method

.method public getDtype()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->dtype:Ljava/lang/String;

    return-object v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->fileType:Ljava/lang/String;

    return-object v0
.end method

.method public getFinishTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->finishTime:Ljava/lang/String;

    return-object v0
.end method

.method public getFinished()S
    .locals 1

    .line 1
    iget-short v0, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->finished:S

    return v0
.end method

.method public getGameZipPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->gameZipPath:Ljava/lang/String;

    return-object v0
.end method

.method public getGid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->gid:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->id:I

    return v0
.end method

.method public getIsAutoPause()S
    .locals 1

    .line 1
    iget-short v0, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->isAutoPause:S

    return v0
.end method

.method public getIsOpen()S
    .locals 1

    .line 1
    iget-short v0, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->isOpen:S

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPercentage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->percentage:Ljava/lang/String;

    return-object v0
.end method

.method public getPortraitURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->portraitURL:Ljava/lang/String;

    return-object v0
.end method

.method public getRomType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->romType:Ljava/lang/String;

    return-object v0
.end method

.method public getShowName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->showName:Ljava/lang/String;

    return-object v0
.end method

.method public getShowType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->showType:I

    return v0
.end method

.method public getStarNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->starNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTips()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->tips:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->totalSize:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->ver:Ljava/lang/String;

    return-object v0
.end method

.method public getVer_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->ver_name:Ljava/lang/String;

    return-object v0
.end method

.method public setAbsolutePath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->absolutePath:Ljava/lang/String;

    return-void
.end method

.method public setBasePath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->basePath:Ljava/lang/String;

    return-void
.end method

.method public setCompleteSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->completeSize:I

    return-void
.end method

.method public setCrc_link_type_val(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->crc_link_type_val:Ljava/lang/String;

    return-void
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->createTime:Ljava/lang/String;

    return-void
.end method

.method public setDescribe(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->describe:Ljava/lang/String;

    return-void
.end method

.method public setDownloading(S)V
    .locals 0

    .line 1
    iput-short p1, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->downloading:S

    return-void
.end method

.method public setDtype(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->dtype:Ljava/lang/String;

    return-void
.end method

.method public setFileType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->fileType:Ljava/lang/String;

    return-void
.end method

.method public setFinishTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->finishTime:Ljava/lang/String;

    return-void
.end method

.method public setFinished(S)V
    .locals 0

    .line 1
    iput-short p1, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->finished:S

    return-void
.end method

.method public setGameZipPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->gameZipPath:Ljava/lang/String;

    return-void
.end method

.method public setGid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->gid:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->id:I

    return-void
.end method

.method public setIsAutoPause(S)V
    .locals 0

    .line 1
    iput-short p1, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->isAutoPause:S

    return-void
.end method

.method public setIsOpen(S)V
    .locals 0

    .line 1
    iput-short p1, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->isOpen:S

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->name:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPercentage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->percentage:Ljava/lang/String;

    return-void
.end method

.method public setPortraitURL(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->portraitURL:Ljava/lang/String;

    return-void
.end method

.method public setRomType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->romType:Ljava/lang/String;

    return-void
.end method

.method public setShowName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->showName:Ljava/lang/String;

    return-void
.end method

.method public setShowType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->showType:I

    return-void
.end method

.method public setStarNumber(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->starNumber:Ljava/lang/String;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->tag:Ljava/lang/String;

    return-void
.end method

.method public setTips(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->tips:Ljava/lang/String;

    return-void
.end method

.method public setTotalSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->totalSize:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->url:Ljava/lang/String;

    return-void
.end method

.method public setVer(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->ver:Ljava/lang/String;

    return-void
.end method

.method public setVer_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/DownloadFileTable;->ver_name:Ljava/lang/String;

    return-void
.end method

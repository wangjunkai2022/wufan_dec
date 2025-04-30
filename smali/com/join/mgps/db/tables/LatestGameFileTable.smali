.class public Lcom/join/mgps/db/tables/LatestGameFileTable;
.super Ljava/lang/Object;
.source "LatestGameFileTable.java"


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

.field private createTime:J
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

.field private screenshot_pic:Ljava/lang/String;
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
    iput v0, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->showType:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IISLjava/lang/String;JLjava/lang/String;SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;SLjava/lang/String;ILjava/lang/String;)V
    .locals 3

    move-object v0, p0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    .line 4
    iput v1, v0, Lcom/join/mgps/db/tables/LatestGameFileTable;->showType:I

    move v1, p1

    .line 5
    iput v1, v0, Lcom/join/mgps/db/tables/LatestGameFileTable;->id:I

    move-object v1, p2

    .line 6
    iput-object v1, v0, Lcom/join/mgps/db/tables/LatestGameFileTable;->tag:Ljava/lang/String;

    move-object v1, p3

    .line 7
    iput-object v1, v0, Lcom/join/mgps/db/tables/LatestGameFileTable;->url:Ljava/lang/String;

    move-object v1, p4

    .line 8
    iput-object v1, v0, Lcom/join/mgps/db/tables/LatestGameFileTable;->basePath:Ljava/lang/String;

    move-object v1, p5

    .line 9
    iput-object v1, v0, Lcom/join/mgps/db/tables/LatestGameFileTable;->name:Ljava/lang/String;

    move-object v1, p6

    .line 10
    iput-object v1, v0, Lcom/join/mgps/db/tables/LatestGameFileTable;->absolutePath:Ljava/lang/String;

    move-object v1, p7

    .line 11
    iput-object v1, v0, Lcom/join/mgps/db/tables/LatestGameFileTable;->gameZipPath:Ljava/lang/String;

    move v1, p8

    .line 12
    iput v1, v0, Lcom/join/mgps/db/tables/LatestGameFileTable;->totalSize:I

    move v1, p9

    .line 13
    iput v1, v0, Lcom/join/mgps/db/tables/LatestGameFileTable;->completeSize:I

    move v1, p10

    .line 14
    iput-short v1, v0, Lcom/join/mgps/db/tables/LatestGameFileTable;->downloading:S

    move-object v1, p11

    .line 15
    iput-object v1, v0, Lcom/join/mgps/db/tables/LatestGameFileTable;->showName:Ljava/lang/String;

    move-wide v1, p12

    .line 16
    iput-wide v1, v0, Lcom/join/mgps/db/tables/LatestGameFileTable;->createTime:J

    move-object/from16 v1, p14

    .line 17
    iput-object v1, v0, Lcom/join/mgps/db/tables/LatestGameFileTable;->dtype:Ljava/lang/String;

    move/from16 v1, p15

    .line 18
    iput-short v1, v0, Lcom/join/mgps/db/tables/LatestGameFileTable;->finished:S

    move-object/from16 v1, p16

    .line 19
    iput-object v1, v0, Lcom/join/mgps/db/tables/LatestGameFileTable;->fileType:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 20
    iput-object v1, v0, Lcom/join/mgps/db/tables/LatestGameFileTable;->finishTime:Ljava/lang/String;

    move-object/from16 v1, p18

    .line 21
    iput-object v1, v0, Lcom/join/mgps/db/tables/LatestGameFileTable;->packageName:Ljava/lang/String;

    move-object/from16 v1, p19

    .line 22
    iput-object v1, v0, Lcom/join/mgps/db/tables/LatestGameFileTable;->tips:Ljava/lang/String;

    move-object/from16 v1, p20

    .line 23
    iput-object v1, v0, Lcom/join/mgps/db/tables/LatestGameFileTable;->portraitURL:Ljava/lang/String;

    move-object/from16 v1, p21

    .line 24
    iput-object v1, v0, Lcom/join/mgps/db/tables/LatestGameFileTable;->percentage:Ljava/lang/String;

    move/from16 v1, p22

    .line 25
    iput-short v1, v0, Lcom/join/mgps/db/tables/LatestGameFileTable;->isAutoPause:S

    move-object/from16 v1, p23

    .line 26
    iput-object v1, v0, Lcom/join/mgps/db/tables/LatestGameFileTable;->crc_link_type_val:Ljava/lang/String;

    move-object/from16 v1, p24

    .line 27
    iput-object v1, v0, Lcom/join/mgps/db/tables/LatestGameFileTable;->ver:Ljava/lang/String;

    move-object/from16 v1, p25

    .line 28
    iput-object v1, v0, Lcom/join/mgps/db/tables/LatestGameFileTable;->ver_name:Ljava/lang/String;

    move-object/from16 v1, p26

    .line 29
    iput-object v1, v0, Lcom/join/mgps/db/tables/LatestGameFileTable;->gid:Ljava/lang/String;

    move-object/from16 v1, p27

    .line 30
    iput-object v1, v0, Lcom/join/mgps/db/tables/LatestGameFileTable;->starNumber:Ljava/lang/String;

    move-object/from16 v1, p28

    .line 31
    iput-object v1, v0, Lcom/join/mgps/db/tables/LatestGameFileTable;->romType:Ljava/lang/String;

    move/from16 v1, p29

    .line 32
    iput-short v1, v0, Lcom/join/mgps/db/tables/LatestGameFileTable;->isOpen:S

    move-object/from16 v1, p30

    .line 33
    iput-object v1, v0, Lcom/join/mgps/db/tables/LatestGameFileTable;->describe:Ljava/lang/String;

    move/from16 v1, p31

    .line 34
    iput v1, v0, Lcom/join/mgps/db/tables/LatestGameFileTable;->showType:I

    move-object/from16 v1, p32

    .line 35
    iput-object v1, v0, Lcom/join/mgps/db/tables/LatestGameFileTable;->screenshot_pic:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAbsolutePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->absolutePath:Ljava/lang/String;

    return-object v0
.end method

.method public getBasePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->basePath:Ljava/lang/String;

    return-object v0
.end method

.method public getCompleteSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->completeSize:I

    return v0
.end method

.method public getCrc_link_type_val()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->crc_link_type_val:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->createTime:J

    return-wide v0
.end method

.method public getDescribe()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->describe:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloading()S
    .locals 1

    .line 1
    iget-short v0, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->downloading:S

    return v0
.end method

.method public getDtype()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->dtype:Ljava/lang/String;

    return-object v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->fileType:Ljava/lang/String;

    return-object v0
.end method

.method public getFinishTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->finishTime:Ljava/lang/String;

    return-object v0
.end method

.method public getFinished()S
    .locals 1

    .line 1
    iget-short v0, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->finished:S

    return v0
.end method

.method public getGameZipPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->gameZipPath:Ljava/lang/String;

    return-object v0
.end method

.method public getGid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->gid:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->id:I

    return v0
.end method

.method public getIsAutoPause()S
    .locals 1

    .line 1
    iget-short v0, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->isAutoPause:S

    return v0
.end method

.method public getIsOpen()S
    .locals 1

    .line 1
    iget-short v0, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->isOpen:S

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPercentage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->percentage:Ljava/lang/String;

    return-object v0
.end method

.method public getPortraitURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->portraitURL:Ljava/lang/String;

    return-object v0
.end method

.method public getRomType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->romType:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenshot_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->screenshot_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getShowName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->showName:Ljava/lang/String;

    return-object v0
.end method

.method public getShowType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->showType:I

    return v0
.end method

.method public getStarNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->starNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTips()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->tips:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->totalSize:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->ver:Ljava/lang/String;

    return-object v0
.end method

.method public getVer_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->ver_name:Ljava/lang/String;

    return-object v0
.end method

.method public setAbsolutePath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->absolutePath:Ljava/lang/String;

    return-void
.end method

.method public setBasePath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->basePath:Ljava/lang/String;

    return-void
.end method

.method public setCompleteSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->completeSize:I

    return-void
.end method

.method public setCrc_link_type_val(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->crc_link_type_val:Ljava/lang/String;

    return-void
.end method

.method public setCreateTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->createTime:J

    return-void
.end method

.method public setDescribe(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->describe:Ljava/lang/String;

    return-void
.end method

.method public setDownloading(S)V
    .locals 0

    .line 1
    iput-short p1, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->downloading:S

    return-void
.end method

.method public setDtype(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->dtype:Ljava/lang/String;

    return-void
.end method

.method public setFileType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->fileType:Ljava/lang/String;

    return-void
.end method

.method public setFinishTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->finishTime:Ljava/lang/String;

    return-void
.end method

.method public setFinished(S)V
    .locals 0

    .line 1
    iput-short p1, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->finished:S

    return-void
.end method

.method public setGameZipPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->gameZipPath:Ljava/lang/String;

    return-void
.end method

.method public setGid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->gid:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->id:I

    return-void
.end method

.method public setIsAutoPause(S)V
    .locals 0

    .line 1
    iput-short p1, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->isAutoPause:S

    return-void
.end method

.method public setIsOpen(S)V
    .locals 0

    .line 1
    iput-short p1, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->isOpen:S

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->name:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPercentage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->percentage:Ljava/lang/String;

    return-void
.end method

.method public setPortraitURL(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->portraitURL:Ljava/lang/String;

    return-void
.end method

.method public setRomType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->romType:Ljava/lang/String;

    return-void
.end method

.method public setScreenshot_pic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->screenshot_pic:Ljava/lang/String;

    return-void
.end method

.method public setShowName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->showName:Ljava/lang/String;

    return-void
.end method

.method public setShowType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->showType:I

    return-void
.end method

.method public setStarNumber(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->starNumber:Ljava/lang/String;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->tag:Ljava/lang/String;

    return-void
.end method

.method public setTips(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->tips:Ljava/lang/String;

    return-void
.end method

.method public setTotalSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->totalSize:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->url:Ljava/lang/String;

    return-void
.end method

.method public setVer(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->ver:Ljava/lang/String;

    return-void
.end method

.method public setVer_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/LatestGameFileTable;->ver_name:Ljava/lang/String;

    return-void
.end method

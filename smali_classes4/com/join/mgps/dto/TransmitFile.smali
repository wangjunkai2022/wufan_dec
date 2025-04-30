.class public Lcom/join/mgps/dto/TransmitFile;
.super Ljava/lang/Object;
.source "TransmitFile.java"


# instance fields
.field private absolutePath:Ljava/lang/String;

.field private basePath:Ljava/lang/String;

.field private completeSize:J

.field private crc_link_type_val:Ljava/lang/String;

.field private createTime:Ljava/lang/String;

.field private downloading:Z

.field private dtype:Ljava/lang/String;

.field private fileType:Ljava/lang/String;

.field private finishTime:Ljava/lang/String;

.field private finished:Z

.field private gameZipPath:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field private isAutoPause:Z

.field private isDownloadingNow:Z

.field private lastCompleteSize:J

.field private lastTime:J

.field private name:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private percent:Ljava/lang/String;

.field private plugInFlag:Ljava/lang/Boolean;

.field private portraitURL:Ljava/lang/String;

.field private progress:I

.field private romType:Ljava/lang/String;

.field private showName:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private tipBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;"
        }
    .end annotation
.end field

.field private totalSize:Ljava/lang/Integer;

.field private transStat:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/TransmitFile;->totalSize:Ljava/lang/Integer;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/join/mgps/dto/TransmitFile;->completeSize:J

    .line 4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/join/mgps/dto/TransmitFile;->plugInFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZJJJLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "ZJJJ",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/join/mgps/dto/TransmitFile;->totalSize:Ljava/lang/Integer;

    const-wide/16 v1, 0x0

    .line 7
    iput-wide v1, v0, Lcom/join/mgps/dto/TransmitFile;->completeSize:J

    .line 8
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/join/mgps/dto/TransmitFile;->plugInFlag:Ljava/lang/Boolean;

    move-object v1, p1

    .line 9
    iput-object v1, v0, Lcom/join/mgps/dto/TransmitFile;->id:Ljava/lang/Long;

    move-object v1, p2

    .line 10
    iput-object v1, v0, Lcom/join/mgps/dto/TransmitFile;->tag:Ljava/lang/String;

    move-object v1, p3

    .line 11
    iput-object v1, v0, Lcom/join/mgps/dto/TransmitFile;->url:Ljava/lang/String;

    move-object v1, p4

    .line 12
    iput-object v1, v0, Lcom/join/mgps/dto/TransmitFile;->basePath:Ljava/lang/String;

    move-object v1, p5

    .line 13
    iput-object v1, v0, Lcom/join/mgps/dto/TransmitFile;->name:Ljava/lang/String;

    move-object v1, p6

    .line 14
    iput-object v1, v0, Lcom/join/mgps/dto/TransmitFile;->showName:Ljava/lang/String;

    move-object v1, p7

    .line 15
    iput-object v1, v0, Lcom/join/mgps/dto/TransmitFile;->absolutePath:Ljava/lang/String;

    move-object v1, p8

    .line 16
    iput-object v1, v0, Lcom/join/mgps/dto/TransmitFile;->gameZipPath:Ljava/lang/String;

    move-object v1, p9

    .line 17
    iput-object v1, v0, Lcom/join/mgps/dto/TransmitFile;->totalSize:Ljava/lang/Integer;

    move v1, p10

    .line 18
    iput-boolean v1, v0, Lcom/join/mgps/dto/TransmitFile;->downloading:Z

    move v1, p11

    .line 19
    iput-boolean v1, v0, Lcom/join/mgps/dto/TransmitFile;->finished:Z

    move-object v1, p12

    .line 20
    iput-object v1, v0, Lcom/join/mgps/dto/TransmitFile;->createTime:Ljava/lang/String;

    move-object/from16 v1, p13

    .line 21
    iput-object v1, v0, Lcom/join/mgps/dto/TransmitFile;->finishTime:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 22
    iput-object v1, v0, Lcom/join/mgps/dto/TransmitFile;->packageName:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 23
    iput-object v1, v0, Lcom/join/mgps/dto/TransmitFile;->portraitURL:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 24
    iput-object v1, v0, Lcom/join/mgps/dto/TransmitFile;->dtype:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 25
    iput-object v1, v0, Lcom/join/mgps/dto/TransmitFile;->fileType:Ljava/lang/String;

    move/from16 v1, p18

    .line 26
    iput-boolean v1, v0, Lcom/join/mgps/dto/TransmitFile;->isDownloadingNow:Z

    move-object/from16 v1, p19

    .line 27
    iput-object v1, v0, Lcom/join/mgps/dto/TransmitFile;->percent:Ljava/lang/String;

    move/from16 v1, p20

    .line 28
    iput-boolean v1, v0, Lcom/join/mgps/dto/TransmitFile;->isAutoPause:Z

    move-wide/from16 v1, p21

    .line 29
    iput-wide v1, v0, Lcom/join/mgps/dto/TransmitFile;->lastTime:J

    move-wide/from16 v1, p23

    .line 30
    iput-wide v1, v0, Lcom/join/mgps/dto/TransmitFile;->completeSize:J

    move-wide/from16 v1, p25

    .line 31
    iput-wide v1, v0, Lcom/join/mgps/dto/TransmitFile;->lastCompleteSize:J

    move-object/from16 v1, p27

    .line 32
    iput-object v1, v0, Lcom/join/mgps/dto/TransmitFile;->tipBeans:Ljava/util/List;

    move-object/from16 v1, p28

    .line 33
    iput-object v1, v0, Lcom/join/mgps/dto/TransmitFile;->crc_link_type_val:Ljava/lang/String;

    move-object/from16 v1, p29

    .line 34
    iput-object v1, v0, Lcom/join/mgps/dto/TransmitFile;->romType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZJJJLjava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "ZJJJ",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/join/mgps/dto/TransmitFile;->totalSize:Ljava/lang/Integer;

    const-wide/16 v1, 0x0

    .line 37
    iput-wide v1, v0, Lcom/join/mgps/dto/TransmitFile;->completeSize:J

    .line 38
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/join/mgps/dto/TransmitFile;->plugInFlag:Ljava/lang/Boolean;

    move-object v1, p1

    .line 39
    iput-object v1, v0, Lcom/join/mgps/dto/TransmitFile;->id:Ljava/lang/Long;

    move-object v1, p2

    .line 40
    iput-object v1, v0, Lcom/join/mgps/dto/TransmitFile;->tag:Ljava/lang/String;

    move-object v1, p3

    .line 41
    iput-object v1, v0, Lcom/join/mgps/dto/TransmitFile;->url:Ljava/lang/String;

    move-object v1, p4

    .line 42
    iput-object v1, v0, Lcom/join/mgps/dto/TransmitFile;->basePath:Ljava/lang/String;

    move-object v1, p5

    .line 43
    iput-object v1, v0, Lcom/join/mgps/dto/TransmitFile;->name:Ljava/lang/String;

    move-object v1, p6

    .line 44
    iput-object v1, v0, Lcom/join/mgps/dto/TransmitFile;->showName:Ljava/lang/String;

    move-object v1, p7

    .line 45
    iput-object v1, v0, Lcom/join/mgps/dto/TransmitFile;->absolutePath:Ljava/lang/String;

    move-object v1, p8

    .line 46
    iput-object v1, v0, Lcom/join/mgps/dto/TransmitFile;->gameZipPath:Ljava/lang/String;

    move-object v1, p9

    .line 47
    iput-object v1, v0, Lcom/join/mgps/dto/TransmitFile;->totalSize:Ljava/lang/Integer;

    move v1, p10

    .line 48
    iput-boolean v1, v0, Lcom/join/mgps/dto/TransmitFile;->downloading:Z

    move v1, p11

    .line 49
    iput-boolean v1, v0, Lcom/join/mgps/dto/TransmitFile;->finished:Z

    move-object v1, p12

    .line 50
    iput-object v1, v0, Lcom/join/mgps/dto/TransmitFile;->createTime:Ljava/lang/String;

    move-object/from16 v1, p13

    .line 51
    iput-object v1, v0, Lcom/join/mgps/dto/TransmitFile;->finishTime:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 52
    iput-object v1, v0, Lcom/join/mgps/dto/TransmitFile;->packageName:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 53
    iput-object v1, v0, Lcom/join/mgps/dto/TransmitFile;->portraitURL:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 54
    iput-object v1, v0, Lcom/join/mgps/dto/TransmitFile;->dtype:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 55
    iput-object v1, v0, Lcom/join/mgps/dto/TransmitFile;->fileType:Ljava/lang/String;

    move/from16 v1, p18

    .line 56
    iput-boolean v1, v0, Lcom/join/mgps/dto/TransmitFile;->isDownloadingNow:Z

    move-object/from16 v1, p19

    .line 57
    iput-object v1, v0, Lcom/join/mgps/dto/TransmitFile;->percent:Ljava/lang/String;

    move/from16 v1, p20

    .line 58
    iput-boolean v1, v0, Lcom/join/mgps/dto/TransmitFile;->isAutoPause:Z

    move-wide/from16 v1, p21

    .line 59
    iput-wide v1, v0, Lcom/join/mgps/dto/TransmitFile;->lastTime:J

    move-wide/from16 v1, p23

    .line 60
    iput-wide v1, v0, Lcom/join/mgps/dto/TransmitFile;->completeSize:J

    move-wide/from16 v1, p25

    .line 61
    iput-wide v1, v0, Lcom/join/mgps/dto/TransmitFile;->lastCompleteSize:J

    move-object/from16 v1, p27

    .line 62
    iput-object v1, v0, Lcom/join/mgps/dto/TransmitFile;->tipBeans:Ljava/util/List;

    move-object/from16 v1, p28

    .line 63
    iput-object v1, v0, Lcom/join/mgps/dto/TransmitFile;->crc_link_type_val:Ljava/lang/String;

    move-object/from16 v1, p29

    .line 64
    iput-object v1, v0, Lcom/join/mgps/dto/TransmitFile;->romType:Ljava/lang/String;

    move/from16 v1, p30

    .line 65
    iput v1, v0, Lcom/join/mgps/dto/TransmitFile;->progress:I

    move-object/from16 v1, p31

    .line 66
    iput-object v1, v0, Lcom/join/mgps/dto/TransmitFile;->transStat:Ljava/lang/String;

    move-object/from16 v1, p32

    .line 67
    iput-object v1, v0, Lcom/join/mgps/dto/TransmitFile;->plugInFlag:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getAbsolutePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TransmitFile;->absolutePath:Ljava/lang/String;

    return-object v0
.end method

.method public getBasePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TransmitFile;->basePath:Ljava/lang/String;

    return-object v0
.end method

.method public getCompleteSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/TransmitFile;->completeSize:J

    return-wide v0
.end method

.method public getCrc_link_type_val()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TransmitFile;->crc_link_type_val:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TransmitFile;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDtype()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TransmitFile;->dtype:Ljava/lang/String;

    return-object v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TransmitFile;->fileType:Ljava/lang/String;

    return-object v0
.end method

.method public getFinishTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TransmitFile;->finishTime:Ljava/lang/String;

    return-object v0
.end method

.method public getGameZipPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TransmitFile;->gameZipPath:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TransmitFile;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getLastCompleteSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/TransmitFile;->lastCompleteSize:J

    return-wide v0
.end method

.method public getLastTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/TransmitFile;->lastTime:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TransmitFile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TransmitFile;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPercent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TransmitFile;->percent:Ljava/lang/String;

    return-object v0
.end method

.method public getPlugInFlag()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TransmitFile;->plugInFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPortraitURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TransmitFile;->portraitURL:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/TransmitFile;->progress:I

    return v0
.end method

.method public getRomType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TransmitFile;->romType:Ljava/lang/String;

    return-object v0
.end method

.method public getShowName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TransmitFile;->showName:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TransmitFile;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTipBeans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TransmitFile;->tipBeans:Ljava/util/List;

    return-object v0
.end method

.method public getTotalSize()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TransmitFile;->totalSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTransStat()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TransmitFile;->transStat:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TransmitFile;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoPause()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/TransmitFile;->isAutoPause:Z

    return v0
.end method

.method public isDownloading()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/TransmitFile;->downloading:Z

    return v0
.end method

.method public isDownloadingNow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/TransmitFile;->isDownloadingNow:Z

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/TransmitFile;->finished:Z

    return v0
.end method

.method public setAbsolutePath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TransmitFile;->absolutePath:Ljava/lang/String;

    return-void
.end method

.method public setAutoPause(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/TransmitFile;->isAutoPause:Z

    return-void
.end method

.method public setBasePath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TransmitFile;->basePath:Ljava/lang/String;

    return-void
.end method

.method public setCompleteSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/TransmitFile;->completeSize:J

    return-void
.end method

.method public setCrc_link_type_val(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TransmitFile;->crc_link_type_val:Ljava/lang/String;

    return-void
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TransmitFile;->createTime:Ljava/lang/String;

    return-void
.end method

.method public setDownloading(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/TransmitFile;->downloading:Z

    return-void
.end method

.method public setDownloadingNow(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/TransmitFile;->isDownloadingNow:Z

    return-void
.end method

.method public setDtype(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TransmitFile;->dtype:Ljava/lang/String;

    return-void
.end method

.method public setFileType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TransmitFile;->fileType:Ljava/lang/String;

    return-void
.end method

.method public setFinishTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TransmitFile;->finishTime:Ljava/lang/String;

    return-void
.end method

.method public setFinished(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/TransmitFile;->finished:Z

    return-void
.end method

.method public setGameZipPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TransmitFile;->gameZipPath:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TransmitFile;->id:Ljava/lang/Long;

    return-void
.end method

.method public setLastCompleteSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/TransmitFile;->lastCompleteSize:J

    return-void
.end method

.method public setLastTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/TransmitFile;->lastTime:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TransmitFile;->name:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TransmitFile;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPercent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TransmitFile;->percent:Ljava/lang/String;

    return-void
.end method

.method public setPlugInFlag(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TransmitFile;->plugInFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public setPortraitURL(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TransmitFile;->portraitURL:Ljava/lang/String;

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/TransmitFile;->progress:I

    return-void
.end method

.method public setRomType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TransmitFile;->romType:Ljava/lang/String;

    return-void
.end method

.method public setShowName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TransmitFile;->showName:Ljava/lang/String;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TransmitFile;->tag:Ljava/lang/String;

    return-void
.end method

.method public setTipBeans(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TransmitFile;->tipBeans:Ljava/util/List;

    return-void
.end method

.method public setTotalSize(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TransmitFile;->totalSize:Ljava/lang/Integer;

    return-void
.end method

.method public setTransStat(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TransmitFile;->transStat:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TransmitFile;->url:Ljava/lang/String;

    return-void
.end method

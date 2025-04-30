.class public Lcom/join/mgps/dto/ArchiveBean;
.super Ljava/lang/Object;
.source "ArchiveBean.java"


# instance fields
.field private fileTime:J

.field private iconFile:Ljava/lang/String;

.field private recordFile:Ljava/lang/String;

.field private showName:Ljava/lang/String;

.field private update_time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFileTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/ArchiveBean;->fileTime:J

    return-wide v0
.end method

.method public getIconFile()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArchiveBean;->iconFile:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordFile()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArchiveBean;->recordFile:Ljava/lang/String;

    return-object v0
.end method

.method public getShowName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArchiveBean;->showName:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdate_time()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArchiveBean;->update_time:Ljava/lang/String;

    return-object v0
.end method

.method public setFileTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/ArchiveBean;->fileTime:J

    return-void
.end method

.method public setIconFile(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArchiveBean;->iconFile:Ljava/lang/String;

    return-void
.end method

.method public setRecordFile(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArchiveBean;->recordFile:Ljava/lang/String;

    return-void
.end method

.method public setShowName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArchiveBean;->showName:Ljava/lang/String;

    return-void
.end method

.method public setUpdate_time(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArchiveBean;->update_time:Ljava/lang/String;

    return-void
.end method

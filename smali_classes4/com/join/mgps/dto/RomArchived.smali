.class public Lcom/join/mgps/dto/RomArchived;
.super Ljava/lang/Object;
.source "RomArchived.java"


# instance fields
.field private archivedImagePath:Ljava/lang/String;

.field private archivedPath:Ljava/lang/String;

.field private archivedTime:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private md5:Ljava/lang/String;

.field private size:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArchivedImagePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RomArchived;->archivedImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getArchivedPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RomArchived;->archivedPath:Ljava/lang/String;

    return-object v0
.end method

.method public getArchivedTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RomArchived;->archivedTime:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RomArchived;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RomArchived;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/RomArchived;->size:J

    return-wide v0
.end method

.method public setArchivedImagePath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RomArchived;->archivedImagePath:Ljava/lang/String;

    return-void
.end method

.method public setArchivedPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RomArchived;->archivedPath:Ljava/lang/String;

    return-void
.end method

.method public setArchivedTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RomArchived;->archivedTime:Ljava/lang/String;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RomArchived;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RomArchived;->md5:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/RomArchived;->size:J

    return-void
.end method

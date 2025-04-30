.class public Lcom/join/mgps/db/tables/CloudArchiveTable;
.super Ljava/lang/Object;
.source "CloudArchiveTable.java"


# instance fields
.field private archiveDataJson:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private archiveFiles:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private archiveFolder:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private archiveId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private archiveName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private archiveScreenShort:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private archiveType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private archiveZipPath:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private gameId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field private isFirstRun:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private mainArchiveLocalPath2:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private packageName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private uid:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private userId:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/db/tables/CloudArchiveTable;->isFirstRun:I

    return-void
.end method


# virtual methods
.method public getArchiveDataJson()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/CloudArchiveTable;->archiveDataJson:Ljava/lang/String;

    return-object v0
.end method

.method public getArchiveFiles()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/CloudArchiveTable;->archiveFiles:Ljava/lang/String;

    return-object v0
.end method

.method public getArchiveFolder()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/CloudArchiveTable;->archiveFolder:Ljava/lang/String;

    return-object v0
.end method

.method public getArchiveId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/CloudArchiveTable;->archiveId:Ljava/lang/String;

    return-object v0
.end method

.method public getArchiveName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/CloudArchiveTable;->archiveName:Ljava/lang/String;

    return-object v0
.end method

.method public getArchiveScreenShort()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/CloudArchiveTable;->archiveScreenShort:Ljava/lang/String;

    return-object v0
.end method

.method public getArchiveType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/CloudArchiveTable;->archiveType:Ljava/lang/String;

    return-object v0
.end method

.method public getArchiveZipPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/CloudArchiveTable;->archiveZipPath:Ljava/lang/String;

    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/CloudArchiveTable;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/CloudArchiveTable;->id:I

    return v0
.end method

.method public getIsFirstRun()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/CloudArchiveTable;->isFirstRun:I

    return v0
.end method

.method public getMainArchiveLocalPath2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/CloudArchiveTable;->mainArchiveLocalPath2:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/CloudArchiveTable;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/CloudArchiveTable;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/CloudArchiveTable;->userId:I

    return v0
.end method

.method public setArchiveDataJson(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/CloudArchiveTable;->archiveDataJson:Ljava/lang/String;

    return-void
.end method

.method public setArchiveFiles(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/CloudArchiveTable;->archiveFiles:Ljava/lang/String;

    return-void
.end method

.method public setArchiveFolder(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/CloudArchiveTable;->archiveFolder:Ljava/lang/String;

    return-void
.end method

.method public setArchiveId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/CloudArchiveTable;->archiveId:Ljava/lang/String;

    return-void
.end method

.method public setArchiveName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/CloudArchiveTable;->archiveName:Ljava/lang/String;

    return-void
.end method

.method public setArchiveScreenShort(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/CloudArchiveTable;->archiveScreenShort:Ljava/lang/String;

    return-void
.end method

.method public setArchiveType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/CloudArchiveTable;->archiveType:Ljava/lang/String;

    return-void
.end method

.method public setArchiveZipPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/CloudArchiveTable;->archiveZipPath:Ljava/lang/String;

    return-void
.end method

.method public setGameId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/CloudArchiveTable;->gameId:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/CloudArchiveTable;->id:I

    return-void
.end method

.method public setIsFirstRun(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/CloudArchiveTable;->isFirstRun:I

    return-void
.end method

.method public setMainArchiveLocalPath2(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/CloudArchiveTable;->mainArchiveLocalPath2:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/CloudArchiveTable;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/CloudArchiveTable;->uid:Ljava/lang/String;

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/CloudArchiveTable;->userId:I

    return-void
.end method

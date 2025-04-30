.class public Lcom/join/mgps/db/tables/CloudBackupsDataTable;
.super Ljava/lang/Object;
.source "CloudBackupsDataTable.java"


# instance fields
.field private downFinish:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private filePath:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private gameId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private hasRecoverd:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
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
.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/CloudBackupsDataTable;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/CloudBackupsDataTable;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/CloudBackupsDataTable;->id:I

    return v0
.end method

.method public isDownFinish()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/db/tables/CloudBackupsDataTable;->downFinish:Z

    return v0
.end method

.method public isHasRecoverd()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/db/tables/CloudBackupsDataTable;->hasRecoverd:Z

    return v0
.end method

.method public setDownFinish(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/db/tables/CloudBackupsDataTable;->downFinish:Z

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/CloudBackupsDataTable;->filePath:Ljava/lang/String;

    return-void
.end method

.method public setGameId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/CloudBackupsDataTable;->gameId:Ljava/lang/String;

    return-void
.end method

.method public setHasRecoverd(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/db/tables/CloudBackupsDataTable;->hasRecoverd:Z

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/CloudBackupsDataTable;->id:I

    return-void
.end method

.class public Lcom/join/mgps/db/tables/DownlodTaskCopyTable;
.super Ljava/lang/Object;
.source "DownlodTaskCopyTable.java"


# instance fields
.field private downloadTask:Ljava/lang/String;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/db/tables/DownlodTaskCopyTable;->id:I

    .line 4
    iput-object p2, p0, Lcom/join/mgps/db/tables/DownlodTaskCopyTable;->gameId:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/db/tables/DownlodTaskCopyTable;->downloadTask:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDownloadTask()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/DownlodTaskCopyTable;->downloadTask:Ljava/lang/String;

    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/DownlodTaskCopyTable;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/DownlodTaskCopyTable;->id:I

    return v0
.end method

.method public setDownloadTask(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/DownlodTaskCopyTable;->downloadTask:Ljava/lang/String;

    return-void
.end method

.method public setGameId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/DownlodTaskCopyTable;->gameId:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/DownlodTaskCopyTable;->id:I

    return-void
.end method

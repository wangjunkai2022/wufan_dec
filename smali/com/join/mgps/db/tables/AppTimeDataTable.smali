.class public Lcom/join/mgps/db/tables/AppTimeDataTable;
.super Ljava/lang/Object;
.source "AppTimeDataTable.java"


# instance fields
.field private appName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private atartTime:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private endTime:Ljava/lang/String;
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

.field private isUped:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private packageName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private timeLength:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/db/tables/AppTimeDataTable;->packageName:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/db/tables/AppTimeDataTable;->appName:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/db/tables/AppTimeDataTable;->gameId:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/join/mgps/db/tables/AppTimeDataTable;->atartTime:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/join/mgps/db/tables/AppTimeDataTable;->endTime:Ljava/lang/String;

    .line 8
    iput p6, p0, Lcom/join/mgps/db/tables/AppTimeDataTable;->timeLength:I

    .line 9
    iput-boolean p7, p0, Lcom/join/mgps/db/tables/AppTimeDataTable;->isUped:Z

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/AppTimeDataTable;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getAtartTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/AppTimeDataTable;->atartTime:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/AppTimeDataTable;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/AppTimeDataTable;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/AppTimeDataTable;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeLength()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/AppTimeDataTable;->timeLength:I

    return v0
.end method

.method public isUped()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/db/tables/AppTimeDataTable;->isUped:Z

    return v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/AppTimeDataTable;->appName:Ljava/lang/String;

    return-void
.end method

.method public setAtartTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/AppTimeDataTable;->atartTime:Ljava/lang/String;

    return-void
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/AppTimeDataTable;->endTime:Ljava/lang/String;

    return-void
.end method

.method public setGameId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/AppTimeDataTable;->gameId:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/AppTimeDataTable;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setTimeLength(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/AppTimeDataTable;->timeLength:I

    return-void
.end method

.method public setUped(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/db/tables/AppTimeDataTable;->isUped:Z

    return-void
.end method

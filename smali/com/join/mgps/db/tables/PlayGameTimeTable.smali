.class public Lcom/join/mgps/db/tables/PlayGameTimeTable;
.super Ljava/lang/Object;
.source "PlayGameTimeTable.java"


# instance fields
.field private gameId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private gamePlayRecentlyTime:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private gamePlayTotalTime:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field private uId:Ljava/lang/String;
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

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/join/mgps/db/tables/PlayGameTimeTable;->setuId(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/join/mgps/db/tables/PlayGameTimeTable;->setGameId(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p3, p4}, Lcom/join/mgps/db/tables/PlayGameTimeTable;->setGamePlayTotalTime(J)V

    .line 6
    invoke-virtual {p0, p5, p6}, Lcom/join/mgps/db/tables/PlayGameTimeTable;->setGamePlayRecentlyTime(J)V

    return-void
.end method


# virtual methods
.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/PlayGameTimeTable;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public getGamePlayRecentlyTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/db/tables/PlayGameTimeTable;->gamePlayRecentlyTime:J

    return-wide v0
.end method

.method public getGamePlayTotalTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/db/tables/PlayGameTimeTable;->gamePlayTotalTime:J

    return-wide v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/PlayGameTimeTable;->id:I

    return v0
.end method

.method public getuId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/PlayGameTimeTable;->uId:Ljava/lang/String;

    return-object v0
.end method

.method public setGameId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/PlayGameTimeTable;->gameId:Ljava/lang/String;

    return-void
.end method

.method public setGamePlayRecentlyTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/db/tables/PlayGameTimeTable;->gamePlayRecentlyTime:J

    return-void
.end method

.method public setGamePlayTotalTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/db/tables/PlayGameTimeTable;->gamePlayTotalTime:J

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/PlayGameTimeTable;->id:I

    return-void
.end method

.method public setuId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/PlayGameTimeTable;->uId:Ljava/lang/String;

    return-void
.end method

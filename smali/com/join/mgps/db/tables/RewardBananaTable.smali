.class public Lcom/join/mgps/db/tables/RewardBananaTable;
.super Ljava/lang/Object;
.source "RewardBananaTable.java"


# instance fields
.field private amount:I
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

.field private status:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private times:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        defaultValue = "1"
    .end annotation
.end field

.field private timestamp:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private tourist:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private type:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private uid:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private uniqueId:Ljava/lang/String;
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


# virtual methods
.method public getAmount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/RewardBananaTable;->amount:I

    return v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/RewardBananaTable;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/RewardBananaTable;->id:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/RewardBananaTable;->status:I

    return v0
.end method

.method public getTimes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/RewardBananaTable;->times:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/db/tables/RewardBananaTable;->timestamp:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/RewardBananaTable;->type:I

    return v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/RewardBananaTable;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/RewardBananaTable;->uniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public isTourist()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/db/tables/RewardBananaTable;->tourist:Z

    return v0
.end method

.method public setAmount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/RewardBananaTable;->amount:I

    return-void
.end method

.method public setGameId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/RewardBananaTable;->gameId:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/RewardBananaTable;->id:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/RewardBananaTable;->status:I

    return-void
.end method

.method public setTimes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/RewardBananaTable;->times:I

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/db/tables/RewardBananaTable;->timestamp:J

    return-void
.end method

.method public setTourist(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/db/tables/RewardBananaTable;->tourist:Z

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/RewardBananaTable;->type:I

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/RewardBananaTable;->uid:Ljava/lang/String;

    return-void
.end method

.method public setUniqueId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/RewardBananaTable;->uniqueId:Ljava/lang/String;

    return-void
.end method

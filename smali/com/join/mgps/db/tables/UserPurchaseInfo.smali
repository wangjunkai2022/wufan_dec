.class public Lcom/join/mgps/db/tables/UserPurchaseInfo;
.super Ljava/lang/Object;
.source "UserPurchaseInfo.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "user_purchase_info_table"
.end annotation


# instance fields
.field private cheatExpireTime:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "cheat_expire_time"
    .end annotation

    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "cheat_expire_time"
    .end annotation
.end field

.field private gameId:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "game_id"
    .end annotation

    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "game_id"
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field private isOpenCheat:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_open_cheat"
    .end annotation

    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "is_open_cheat"
    .end annotation
.end field

.field private isOpenSp:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_open_sp"
    .end annotation

    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "is_open_sp"
    .end annotation
.end field

.field private spExpireTime:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "sp_expire_time"
    .end annotation

    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "sp_expire_time"
    .end annotation
.end field

.field private uid:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "uid"
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
.method public getCheatExpireTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/UserPurchaseInfo;->cheatExpireTime:Ljava/lang/String;

    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/UserPurchaseInfo;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/UserPurchaseInfo;->id:I

    return v0
.end method

.method public getIsOpenCheat()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/UserPurchaseInfo;->isOpenCheat:Ljava/lang/String;

    return-object v0
.end method

.method public getIsOpenSp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/UserPurchaseInfo;->isOpenSp:Ljava/lang/String;

    return-object v0
.end method

.method public getSpExpireTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/UserPurchaseInfo;->spExpireTime:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/UserPurchaseInfo;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public setCheatExpireTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/UserPurchaseInfo;->cheatExpireTime:Ljava/lang/String;

    return-void
.end method

.method public setGameId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/UserPurchaseInfo;->gameId:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/UserPurchaseInfo;->id:I

    return-void
.end method

.method public setIsOpenCheat(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/UserPurchaseInfo;->isOpenCheat:Ljava/lang/String;

    return-void
.end method

.method public setIsOpenSp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/UserPurchaseInfo;->isOpenSp:Ljava/lang/String;

    return-void
.end method

.method public setSpExpireTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/UserPurchaseInfo;->spExpireTime:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/UserPurchaseInfo;->uid:Ljava/lang/String;

    return-void
.end method

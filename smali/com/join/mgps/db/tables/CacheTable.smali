.class public Lcom/join/mgps/db/tables/CacheTable;
.super Ljava/lang/Object;
.source "CacheTable.java"


# static fields
.field public static TYPE_GAME_WORLD_GLOBAL_DATA:I = 0x1

.field public static TYPE_GAME_WORLD_GRADE:I = 0x3

.field public static TYPE_GAME_WORLD_USER_INFO:I = 0x2

.field public static TYPE_GAME_WORLD_WORSHIP:I = 0x4


# instance fields
.field private data:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private extra1:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private extra2:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private gameId:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
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


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/CacheTable;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/CacheTable;->extra1:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/CacheTable;->extra2:Ljava/lang/String;

    return-object v0
.end method

.method public getGameId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/db/tables/CacheTable;->gameId:J

    return-wide v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/CacheTable;->id:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/CacheTable;->type:I

    return v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/CacheTable;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/CacheTable;->data:Ljava/lang/String;

    return-void
.end method

.method public setExtra1(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/CacheTable;->extra1:Ljava/lang/String;

    return-void
.end method

.method public setExtra2(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/CacheTable;->extra2:Ljava/lang/String;

    return-void
.end method

.method public setGameId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/db/tables/CacheTable;->gameId:J

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/CacheTable;->id:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/CacheTable;->type:I

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/CacheTable;->uid:Ljava/lang/String;

    return-void
.end method

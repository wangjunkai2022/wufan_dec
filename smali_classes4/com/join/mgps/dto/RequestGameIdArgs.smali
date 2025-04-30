.class public Lcom/join/mgps/dto/RequestGameIdArgs;
.super Ljava/lang/Object;
.source "RequestGameIdArgs.java"


# instance fields
.field private downloadedGameIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private gameId:Ljava/lang/String;

.field private game_id:Ljava/lang/String;

.field private lastEnterTime:J

.field private page:I

.field private pc:I

.field private pn:I

.field private tagId:Ljava/lang/String;

.field private tagName:Ljava/lang/String;

.field private tagType:Ljava/lang/String;

.field private tag_id:I

.field private token:Ljava/lang/String;

.field private type:I

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 2
    iput v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->pc:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->tag_id:I

    .line 4
    iput v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->uid:I

    const-wide/16 v1, 0x0

    .line 5
    iput-wide v1, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->lastEnterTime:J

    .line 6
    iput v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->type:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 8
    iput v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->pc:I

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->tag_id:I

    .line 10
    iput v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->uid:I

    const-wide/16 v1, 0x0

    .line 11
    iput-wide v1, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->lastEnterTime:J

    .line 12
    iput v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->type:I

    .line 13
    iput p1, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->page:I

    .line 14
    iput-object p2, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->tagId:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->tagName:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->tagType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 28
    iput v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->pc:I

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->tag_id:I

    .line 30
    iput v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->uid:I

    const-wide/16 v1, 0x0

    .line 31
    iput-wide v1, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->lastEnterTime:J

    .line 32
    iput v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->type:I

    .line 33
    iput-object p1, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->game_id:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->gameId:Ljava/lang/String;

    .line 35
    iput p2, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->pn:I

    .line 36
    iput p2, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->page:I

    .line 37
    iput p3, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->uid:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 18
    iput v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->pc:I

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->tag_id:I

    .line 20
    iput v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->uid:I

    const-wide/16 v1, 0x0

    .line 21
    iput-wide v1, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->lastEnterTime:J

    .line 22
    iput v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->type:I

    .line 23
    iput-object p1, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->game_id:Ljava/lang/String;

    .line 24
    iput p2, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->pn:I

    .line 25
    iput p3, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->tag_id:I

    .line 26
    iput p4, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->uid:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIJLjava/lang/String;I)V
    .locals 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 48
    iput v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->pc:I

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->tag_id:I

    .line 50
    iput v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->uid:I

    const-wide/16 v1, 0x0

    .line 51
    iput-wide v1, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->lastEnterTime:J

    .line 52
    iput v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->type:I

    .line 53
    iput-object p1, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->gameId:Ljava/lang/String;

    .line 54
    iput p2, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->page:I

    .line 55
    iput p3, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->uid:I

    .line 56
    iput-wide p4, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->lastEnterTime:J

    .line 57
    iput-object p6, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->tagId:Ljava/lang/String;

    .line 58
    iput p7, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 39
    iput v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->pc:I

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->tag_id:I

    .line 41
    iput v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->uid:I

    const-wide/16 v1, 0x0

    .line 42
    iput-wide v1, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->lastEnterTime:J

    .line 43
    iput v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->type:I

    .line 44
    iput-object p1, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->game_id:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->token:Ljava/lang/String;

    .line 46
    iput p3, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->uid:I

    return-void
.end method


# virtual methods
.method public getDownloadedGameIdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->downloadedGameIdList:Ljava/util/List;

    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->game_id:Ljava/lang/String;

    return-object v0
.end method

.method public getLastEnterTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->lastEnterTime:J

    return-wide v0
.end method

.method public getPage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->page:I

    return v0
.end method

.method public getPc()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->pc:I

    return v0
.end method

.method public getPn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->pn:I

    return v0
.end method

.method public getTagId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->tagId:Ljava/lang/String;

    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method public getTagType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->tagType:Ljava/lang/String;

    return-object v0
.end method

.method public getTag_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->tag_id:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->type:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->uid:I

    return v0
.end method

.method public setDownloadedGameIdList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->downloadedGameIdList:Ljava/util/List;

    return-void
.end method

.method public setGameId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->gameId:Ljava/lang/String;

    return-void
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->game_id:Ljava/lang/String;

    return-void
.end method

.method public setLastEnterTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->lastEnterTime:J

    return-void
.end method

.method public setPage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->page:I

    return-void
.end method

.method public setPc(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->pc:I

    return-void
.end method

.method public setPn(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->pn:I

    return-void
.end method

.method public setTagId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->tagId:Ljava/lang/String;

    return-void
.end method

.method public setTagName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->tagName:Ljava/lang/String;

    return-void
.end method

.method public setTagType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->tagType:Ljava/lang/String;

    return-void
.end method

.method public setTag_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->tag_id:I

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->token:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->type:I

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->uid:I

    return-void
.end method

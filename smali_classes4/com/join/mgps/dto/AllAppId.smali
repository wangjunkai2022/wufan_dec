.class public Lcom/join/mgps/dto/AllAppId;
.super Ljava/lang/Object;
.source "AllAppId.java"


# instance fields
.field private game_id:[Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/join/mgps/dto/AllAppId;->game_id:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/AllAppId;->game_id:[Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/join/mgps/dto/AllAppId;->uid:I

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/AllAppId;->token:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getGame_id()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AllAppId;->game_id:[Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AllAppId;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AllAppId;->uid:I

    return v0
.end method

.method public setGame_id([Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AllAppId;->game_id:[Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AllAppId;->token:Ljava/lang/String;

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AllAppId;->uid:I

    return-void
.end method

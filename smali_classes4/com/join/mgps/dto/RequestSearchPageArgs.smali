.class public Lcom/join/mgps/dto/RequestSearchPageArgs;
.super Ljava/lang/Object;
.source "RequestSearchPageArgs.java"


# instance fields
.field private game_id:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/join/mgps/dto/RequestSearchPageArgs;->uid:I

    .line 3
    iput-object p2, p0, Lcom/join/mgps/dto/RequestSearchPageArgs;->token:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lcom/join/mgps/dto/RequestSearchPageArgs;->uid:I

    .line 6
    iput-object p2, p0, Lcom/join/mgps/dto/RequestSearchPageArgs;->token:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/join/mgps/dto/RequestSearchPageArgs;->game_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestSearchPageArgs;->game_id:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestSearchPageArgs;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestSearchPageArgs;->uid:I

    return v0
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestSearchPageArgs;->game_id:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestSearchPageArgs;->token:Ljava/lang/String;

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestSearchPageArgs;->uid:I

    return-void
.end method

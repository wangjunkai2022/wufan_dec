.class public Lcom/join/mgps/dto/GamePariseRequest;
.super Ljava/lang/Object;
.source "GamePariseRequest.java"


# instance fields
.field private comment_id:Ljava/lang/String;

.field private game_id:Ljava/lang/String;

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/dto/GamePariseRequest;->game_id:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/join/mgps/dto/GamePariseRequest;->comment_id:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/join/mgps/dto/GamePariseRequest;->uid:I

    return-void
.end method


# virtual methods
.method public getComment_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamePariseRequest;->comment_id:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamePariseRequest;->game_id:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamePariseRequest;->uid:I

    return v0
.end method

.method public setComment_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamePariseRequest;->comment_id:Ljava/lang/String;

    return-void
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamePariseRequest;->game_id:Ljava/lang/String;

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GamePariseRequest;->uid:I

    return-void
.end method

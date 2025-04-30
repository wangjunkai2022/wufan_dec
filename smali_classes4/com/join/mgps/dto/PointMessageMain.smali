.class public Lcom/join/mgps/dto/PointMessageMain;
.super Ljava/lang/Object;
.source "PointMessageMain.java"


# instance fields
.field public data:Lcom/join/mgps/dto/PointMessageData;

.field public event:Ljava/lang/String;

.field public gameId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "gameDownload"

    .line 2
    iput-object v0, p0, Lcom/join/mgps/dto/PointMessageMain;->event:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getData()Lcom/join/mgps/dto/PointMessageData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PointMessageMain;->data:Lcom/join/mgps/dto/PointMessageData;

    return-object v0
.end method

.method public getEvent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PointMessageMain;->event:Ljava/lang/String;

    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PointMessageMain;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Lcom/join/mgps/dto/PointMessageData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PointMessageMain;->data:Lcom/join/mgps/dto/PointMessageData;

    return-void
.end method

.method public setEvent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PointMessageMain;->event:Ljava/lang/String;

    return-void
.end method

.method public setGameId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PointMessageMain;->gameId:Ljava/lang/String;

    return-void
.end method

.class public Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;
.super Ljava/lang/Object;
.source "LuckHistoryrequest.java"


# instance fields
.field private action:I

.field private apiVersion:Ljava/lang/String;

.field private gameId:Ljava/lang/String;

.field private gameType:Ljava/lang/String;

.field private page:I

.field private platformType:Ljava/lang/String;

.field private type:I

.field private uid:I

.field private userToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ANDROID"

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->platformType:Ljava/lang/String;

    const-string v0, "V3"

    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->apiVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->action:I

    return v0
.end method

.method public getApiVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->apiVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public getGameType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->gameType:Ljava/lang/String;

    return-object v0
.end method

.method public getPage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->page:I

    return v0
.end method

.method public getPlatformType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->platformType:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->type:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->uid:I

    return v0
.end method

.method public getUserToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->userToken:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->action:I

    return-void
.end method

.method public setApiVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->apiVersion:Ljava/lang/String;

    return-void
.end method

.method public setGameId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->gameId:Ljava/lang/String;

    return-void
.end method

.method public setGameType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->gameType:Ljava/lang/String;

    return-void
.end method

.method public setPage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->page:I

    return-void
.end method

.method public setPlatformType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->platformType:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->type:I

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->uid:I

    return-void
.end method

.method public setUserToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->userToken:Ljava/lang/String;

    return-void
.end method

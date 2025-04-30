.class public Lcom/join/mgps/dto/FriendReqBean;
.super Ljava/lang/Object;
.source "FriendReqBean.java"


# instance fields
.field private friendRequestType:Ljava/lang/String;

.field private id:I

.field private requestInfo:Ljava/lang/String;

.field private ruid:I

.field private token:Ljava/lang/String;

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFriendRequestType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendReqBean;->friendRequestType:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FriendReqBean;->id:I

    return v0
.end method

.method public getRequestInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendReqBean;->requestInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getRuid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FriendReqBean;->ruid:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendReqBean;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FriendReqBean;->uid:I

    return v0
.end method

.method public setFriendRequestType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendReqBean;->friendRequestType:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FriendReqBean;->id:I

    return-void
.end method

.method public setRequestInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendReqBean;->requestInfo:Ljava/lang/String;

    return-void
.end method

.method public setRuid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FriendReqBean;->ruid:I

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendReqBean;->token:Ljava/lang/String;

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FriendReqBean;->uid:I

    return-void
.end method

.class public Lcom/join/mgps/dto/RequestCommentDetailArgs;
.super Lcom/join/mgps/dto/BaseDto;
.source "RequestCommentDetailArgs.java"


# instance fields
.field private channel_num:Ljava/lang/String;

.field private comment_id:Ljava/lang/String;

.field private device_id:Ljava/lang/String;

.field private game_id:Ljava/lang/String;

.field private ip_address:Ljava/lang/String;

.field private mac:Ljava/lang/String;

.field private mobile_phone_model:Ljava/lang/String;

.field private pc:I

.field private pn:I

.field private sort:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private uid:I

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseDto;-><init>()V

    .line 2
    iput-object p13, p0, Lcom/join/mgps/dto/RequestCommentDetailArgs;->channel_num:Ljava/lang/String;

    .line 3
    iput-object p12, p0, Lcom/join/mgps/dto/RequestCommentDetailArgs;->device_id:Ljava/lang/String;

    .line 4
    iput-object p11, p0, Lcom/join/mgps/dto/RequestCommentDetailArgs;->version:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/join/mgps/dto/RequestCommentDetailArgs;->comment_id:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/join/mgps/dto/RequestCommentDetailArgs;->game_id:Ljava/lang/String;

    .line 7
    iput p4, p0, Lcom/join/mgps/dto/RequestCommentDetailArgs;->uid:I

    .line 8
    iput p5, p0, Lcom/join/mgps/dto/RequestCommentDetailArgs;->pn:I

    .line 9
    iput p6, p0, Lcom/join/mgps/dto/RequestCommentDetailArgs;->pc:I

    .line 10
    iput-object p7, p0, Lcom/join/mgps/dto/RequestCommentDetailArgs;->mobile_phone_model:Ljava/lang/String;

    .line 11
    iput-object p8, p0, Lcom/join/mgps/dto/RequestCommentDetailArgs;->mac:Ljava/lang/String;

    .line 12
    iput-object p9, p0, Lcom/join/mgps/dto/RequestCommentDetailArgs;->ip_address:Ljava/lang/String;

    .line 13
    iput-object p10, p0, Lcom/join/mgps/dto/RequestCommentDetailArgs;->token:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lcom/join/mgps/dto/RequestCommentDetailArgs;->sort:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getChannel_num()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestCommentDetailArgs;->channel_num:Ljava/lang/String;

    return-object v0
.end method

.method public getComment_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestCommentDetailArgs;->comment_id:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestCommentDetailArgs;->device_id:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestCommentDetailArgs;->game_id:Ljava/lang/String;

    return-object v0
.end method

.method public getIp_address()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestCommentDetailArgs;->ip_address:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestCommentDetailArgs;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getMobile_phone_model()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestCommentDetailArgs;->mobile_phone_model:Ljava/lang/String;

    return-object v0
.end method

.method public getPc()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestCommentDetailArgs;->pc:I

    return v0
.end method

.method public getPn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestCommentDetailArgs;->pn:I

    return v0
.end method

.method public getSort()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestCommentDetailArgs;->sort:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestCommentDetailArgs;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestCommentDetailArgs;->uid:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestCommentDetailArgs;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setChannel_num(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestCommentDetailArgs;->channel_num:Ljava/lang/String;

    return-void
.end method

.method public setComment_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestCommentDetailArgs;->comment_id:Ljava/lang/String;

    return-void
.end method

.method public setDevice_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestCommentDetailArgs;->device_id:Ljava/lang/String;

    return-void
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestCommentDetailArgs;->game_id:Ljava/lang/String;

    return-void
.end method

.method public setIp_address(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestCommentDetailArgs;->ip_address:Ljava/lang/String;

    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestCommentDetailArgs;->mac:Ljava/lang/String;

    return-void
.end method

.method public setMobile_phone_model(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestCommentDetailArgs;->mobile_phone_model:Ljava/lang/String;

    return-void
.end method

.method public setPc(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestCommentDetailArgs;->pc:I

    return-void
.end method

.method public setPn(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestCommentDetailArgs;->pn:I

    return-void
.end method

.method public setSort(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestCommentDetailArgs;->sort:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestCommentDetailArgs;->token:Ljava/lang/String;

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestCommentDetailArgs;->uid:I

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestCommentDetailArgs;->version:Ljava/lang/String;

    return-void
.end method

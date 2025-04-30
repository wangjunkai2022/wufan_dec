.class public Lcom/join/mgps/dto/RequestCommentAllListArgs;
.super Lcom/join/mgps/dto/BaseDto;
.source "RequestCommentAllListArgs.java"


# instance fields
.field private channel_num:Ljava/lang/String;

.field private device_id:Ljava/lang/String;

.field private game_id:Ljava/lang/String;

.field private ip_address:Ljava/lang/String;

.field private mac:Ljava/lang/String;

.field private mobile_phone_model:Ljava/lang/String;

.field private package_name:Ljava/lang/String;

.field private pc:I

.field private pn:I

.field private sort:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private uid:I

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseDto;-><init>()V

    const-string v0, "com.join.android.app.mgsim.wufun"

    .line 2
    iput-object v0, p0, Lcom/join/mgps/dto/RequestCommentAllListArgs;->package_name:Ljava/lang/String;

    .line 3
    iput-object p11, p0, Lcom/join/mgps/dto/RequestCommentAllListArgs;->channel_num:Ljava/lang/String;

    .line 4
    iput-object p10, p0, Lcom/join/mgps/dto/RequestCommentAllListArgs;->device_id:Ljava/lang/String;

    .line 5
    iput-object p9, p0, Lcom/join/mgps/dto/RequestCommentAllListArgs;->version:Ljava/lang/String;

    .line 6
    iput p1, p0, Lcom/join/mgps/dto/RequestCommentAllListArgs;->pn:I

    .line 7
    iput p2, p0, Lcom/join/mgps/dto/RequestCommentAllListArgs;->pc:I

    .line 8
    iput-object p3, p0, Lcom/join/mgps/dto/RequestCommentAllListArgs;->game_id:Ljava/lang/String;

    .line 9
    iput p4, p0, Lcom/join/mgps/dto/RequestCommentAllListArgs;->uid:I

    .line 10
    iput-object p5, p0, Lcom/join/mgps/dto/RequestCommentAllListArgs;->mobile_phone_model:Ljava/lang/String;

    .line 11
    iput-object p6, p0, Lcom/join/mgps/dto/RequestCommentAllListArgs;->token:Ljava/lang/String;

    .line 12
    iput-object p7, p0, Lcom/join/mgps/dto/RequestCommentAllListArgs;->mac:Ljava/lang/String;

    .line 13
    iput-object p8, p0, Lcom/join/mgps/dto/RequestCommentAllListArgs;->ip_address:Ljava/lang/String;

    const-string p1, "desc"

    .line 14
    iput-object p1, p0, Lcom/join/mgps/dto/RequestCommentAllListArgs;->sort:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getChannel_num()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestCommentAllListArgs;->channel_num:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestCommentAllListArgs;->device_id:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestCommentAllListArgs;->game_id:Ljava/lang/String;

    return-object v0
.end method

.method public getIp_address()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestCommentAllListArgs;->ip_address:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestCommentAllListArgs;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getMobile_phone_model()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestCommentAllListArgs;->mobile_phone_model:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestCommentAllListArgs;->package_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPc()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestCommentAllListArgs;->pc:I

    return v0
.end method

.method public getPn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestCommentAllListArgs;->pn:I

    return v0
.end method

.method public getSort()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestCommentAllListArgs;->sort:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestCommentAllListArgs;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestCommentAllListArgs;->uid:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestCommentAllListArgs;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setChannel_num(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestCommentAllListArgs;->channel_num:Ljava/lang/String;

    return-void
.end method

.method public setDevice_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestCommentAllListArgs;->device_id:Ljava/lang/String;

    return-void
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestCommentAllListArgs;->game_id:Ljava/lang/String;

    return-void
.end method

.method public setIp_address(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestCommentAllListArgs;->ip_address:Ljava/lang/String;

    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestCommentAllListArgs;->mac:Ljava/lang/String;

    return-void
.end method

.method public setMobile_phone_model(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestCommentAllListArgs;->mobile_phone_model:Ljava/lang/String;

    return-void
.end method

.method public setPackage_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestCommentAllListArgs;->package_name:Ljava/lang/String;

    return-void
.end method

.method public setPc(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestCommentAllListArgs;->pc:I

    return-void
.end method

.method public setPn(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestCommentAllListArgs;->pn:I

    return-void
.end method

.method public setSort(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestCommentAllListArgs;->sort:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestCommentAllListArgs;->token:Ljava/lang/String;

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestCommentAllListArgs;->uid:I

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestCommentAllListArgs;->version:Ljava/lang/String;

    return-void
.end method

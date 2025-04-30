.class public Lcom/join/mgps/dto/CommentModifyArgs;
.super Lcom/join/mgps/dto/BaseDto;
.source "CommentModifyArgs.java"


# instance fields
.field private channel_num:Ljava/lang/String;

.field private comment_id:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private device_id:Ljava/lang/String;

.field private game_id:Ljava/lang/String;

.field private ip_address:Ljava/lang/String;

.field private m_p_m_status:I

.field private mac:Ljava/lang/String;

.field private mobile_phone_model:Ljava/lang/String;

.field private pn:I

.field private random_num:I

.field private score:F

.field private token:Ljava/lang/String;

.field private uid:I

.field private user_token:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;FIII)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseDto;-><init>()V

    const-string v1, ""

    .line 2
    iput-object v1, v0, Lcom/join/mgps/dto/CommentModifyArgs;->token:Ljava/lang/String;

    move/from16 v1, p16

    .line 3
    iput v1, v0, Lcom/join/mgps/dto/CommentModifyArgs;->m_p_m_status:I

    move-object v1, p1

    .line 4
    iput-object v1, v0, Lcom/join/mgps/dto/CommentModifyArgs;->token:Ljava/lang/String;

    move-object v1, p2

    .line 5
    iput-object v1, v0, Lcom/join/mgps/dto/CommentModifyArgs;->version:Ljava/lang/String;

    move-object v1, p3

    .line 6
    iput-object v1, v0, Lcom/join/mgps/dto/CommentModifyArgs;->device_id:Ljava/lang/String;

    move-object v1, p4

    .line 7
    iput-object v1, v0, Lcom/join/mgps/dto/CommentModifyArgs;->mac:Ljava/lang/String;

    move-object v1, p5

    .line 8
    iput-object v1, v0, Lcom/join/mgps/dto/CommentModifyArgs;->ip_address:Ljava/lang/String;

    move-object v1, p6

    .line 9
    iput-object v1, v0, Lcom/join/mgps/dto/CommentModifyArgs;->channel_num:Ljava/lang/String;

    move-object v1, p7

    .line 10
    iput-object v1, v0, Lcom/join/mgps/dto/CommentModifyArgs;->mobile_phone_model:Ljava/lang/String;

    move-object v1, p8

    .line 11
    iput-object v1, v0, Lcom/join/mgps/dto/CommentModifyArgs;->game_id:Ljava/lang/String;

    move v1, p9

    .line 12
    iput v1, v0, Lcom/join/mgps/dto/CommentModifyArgs;->uid:I

    move-object v1, p10

    .line 13
    iput-object v1, v0, Lcom/join/mgps/dto/CommentModifyArgs;->comment_id:Ljava/lang/String;

    move-object v1, p11

    .line 14
    iput-object v1, v0, Lcom/join/mgps/dto/CommentModifyArgs;->user_token:Ljava/lang/String;

    move-object v1, p12

    .line 15
    iput-object v1, v0, Lcom/join/mgps/dto/CommentModifyArgs;->content:Ljava/lang/String;

    move v1, p13

    .line 16
    iput v1, v0, Lcom/join/mgps/dto/CommentModifyArgs;->score:F

    move/from16 v1, p14

    .line 17
    iput v1, v0, Lcom/join/mgps/dto/CommentModifyArgs;->pn:I

    move/from16 v1, p15

    .line 18
    iput v1, v0, Lcom/join/mgps/dto/CommentModifyArgs;->random_num:I

    return-void
.end method


# virtual methods
.method public getChannel_num()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentModifyArgs;->channel_num:Ljava/lang/String;

    return-object v0
.end method

.method public getComment_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentModifyArgs;->comment_id:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentModifyArgs;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentModifyArgs;->device_id:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentModifyArgs;->game_id:Ljava/lang/String;

    return-object v0
.end method

.method public getIp_address()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentModifyArgs;->ip_address:Ljava/lang/String;

    return-object v0
.end method

.method public getM_p_m_status()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentModifyArgs;->m_p_m_status:I

    return v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentModifyArgs;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getMobile_phone_model()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentModifyArgs;->mobile_phone_model:Ljava/lang/String;

    return-object v0
.end method

.method public getPn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentModifyArgs;->pn:I

    return v0
.end method

.method public getRandom_num()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentModifyArgs;->random_num:I

    return v0
.end method

.method public getScore()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentModifyArgs;->score:F

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentModifyArgs;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentModifyArgs;->uid:I

    return v0
.end method

.method public getUser_token()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentModifyArgs;->user_token:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentModifyArgs;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setChannel_num(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentModifyArgs;->channel_num:Ljava/lang/String;

    return-void
.end method

.method public setComment_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentModifyArgs;->comment_id:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentModifyArgs;->content:Ljava/lang/String;

    return-void
.end method

.method public setDevice_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentModifyArgs;->device_id:Ljava/lang/String;

    return-void
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentModifyArgs;->game_id:Ljava/lang/String;

    return-void
.end method

.method public setIp_address(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentModifyArgs;->ip_address:Ljava/lang/String;

    return-void
.end method

.method public setM_p_m_status(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommentModifyArgs;->m_p_m_status:I

    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentModifyArgs;->mac:Ljava/lang/String;

    return-void
.end method

.method public setMobile_phone_model(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentModifyArgs;->mobile_phone_model:Ljava/lang/String;

    return-void
.end method

.method public setPn(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommentModifyArgs;->pn:I

    return-void
.end method

.method public setRandom_num(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommentModifyArgs;->random_num:I

    return-void
.end method

.method public setScore(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommentModifyArgs;->score:F

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentModifyArgs;->token:Ljava/lang/String;

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommentModifyArgs;->uid:I

    return-void
.end method

.method public setUser_token(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentModifyArgs;->user_token:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentModifyArgs;->version:Ljava/lang/String;

    return-void
.end method

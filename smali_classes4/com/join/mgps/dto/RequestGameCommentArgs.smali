.class public Lcom/join/mgps/dto/RequestGameCommentArgs;
.super Lcom/join/mgps/dto/BaseDto;
.source "RequestGameCommentArgs.java"


# instance fields
.field private content:Ljava/lang/String;

.field private game_id:Ljava/lang/String;

.field private head_portrait:Ljava/lang/String;

.field private ip_address:Ljava/lang/String;

.field private mobile_phone_model:Ljava/lang/String;

.field private random_num:I

.field private uid:I

.field private user_name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseDto;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/dto/RequestGameCommentArgs;->game_id:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/join/mgps/dto/RequestGameCommentArgs;->uid:I

    .line 4
    iput-object p3, p0, Lcom/join/mgps/dto/RequestGameCommentArgs;->head_portrait:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/join/mgps/dto/RequestGameCommentArgs;->user_name:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/join/mgps/dto/RequestGameCommentArgs;->mobile_phone_model:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/join/mgps/dto/RequestGameCommentArgs;->ip_address:Ljava/lang/String;

    .line 8
    iput p7, p0, Lcom/join/mgps/dto/RequestGameCommentArgs;->random_num:I

    .line 9
    iput-object p8, p0, Lcom/join/mgps/dto/RequestGameCommentArgs;->content:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestGameCommentArgs;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestGameCommentArgs;->game_id:Ljava/lang/String;

    return-object v0
.end method

.method public getHead_portrait()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestGameCommentArgs;->head_portrait:Ljava/lang/String;

    return-object v0
.end method

.method public getIp_address()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestGameCommentArgs;->ip_address:Ljava/lang/String;

    return-object v0
.end method

.method public getMobile_phone_model()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestGameCommentArgs;->mobile_phone_model:Ljava/lang/String;

    return-object v0
.end method

.method public getRandom_num()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestGameCommentArgs;->random_num:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestGameCommentArgs;->uid:I

    return v0
.end method

.method public getUser_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestGameCommentArgs;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestGameCommentArgs;->content:Ljava/lang/String;

    return-void
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestGameCommentArgs;->game_id:Ljava/lang/String;

    return-void
.end method

.method public setHead_portrait(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestGameCommentArgs;->head_portrait:Ljava/lang/String;

    return-void
.end method

.method public setIp_address(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestGameCommentArgs;->ip_address:Ljava/lang/String;

    return-void
.end method

.method public setMobile_phone_model(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestGameCommentArgs;->mobile_phone_model:Ljava/lang/String;

    return-void
.end method

.method public setRandom_num(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestGameCommentArgs;->random_num:I

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestGameCommentArgs;->uid:I

    return-void
.end method

.method public setUser_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestGameCommentArgs;->user_name:Ljava/lang/String;

    return-void
.end method

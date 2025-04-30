.class public Lcom/join/mgps/dto/TodayWufunTopic;
.super Ljava/lang/Object;
.source "TodayWufunTopic.java"


# instance fields
.field private auth:Ljava/lang/String;

.field private bespeak_switch:I

.field private down_status:I

.field private game_ico:Ljava/lang/String;

.field private game_id:Ljava/lang/String;

.field private game_name:Ljava/lang/String;

.field private game_open_switch:I

.field private game_open_time:I

.field private id:Ljava/lang/String;

.field private pic:Ljava/lang/String;

.field private sp_tag_info:Lcom/join/mgps/dto/TipNew;

.field private sp_tpl_two_position:I

.field private tag_type:I

.field private title:Ljava/lang/String;

.field private tpl_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuth()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunTopic;->auth:Ljava/lang/String;

    return-object v0
.end method

.method public getBespeak_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/TodayWufunTopic;->bespeak_switch:I

    return v0
.end method

.method public getDown_status()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/TodayWufunTopic;->down_status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/join/mgps/dto/TodayWufunTopic;->bespeak_switch:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x6

    :cond_0
    return v0
.end method

.method public getGame_ico()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunTopic;->game_ico:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunTopic;->game_id:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunTopic;->game_name:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_open_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/TodayWufunTopic;->game_open_switch:I

    return v0
.end method

.method public getGame_open_time()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/TodayWufunTopic;->game_open_time:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunTopic;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunTopic;->pic:Ljava/lang/String;

    return-object v0
.end method

.method public getSp_tag_info()Lcom/join/mgps/dto/TipNew;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunTopic;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    return-object v0
.end method

.method public getSp_tpl_two_position()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/TodayWufunTopic;->sp_tpl_two_position:I

    return v0
.end method

.method public getTag_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/TodayWufunTopic;->tag_type:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunTopic;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTpl_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunTopic;->tpl_type:Ljava/lang/String;

    return-object v0
.end method

.method public setAuth(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunTopic;->auth:Ljava/lang/String;

    return-void
.end method

.method public setBespeak_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/TodayWufunTopic;->bespeak_switch:I

    return-void
.end method

.method public setDown_status(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/TodayWufunTopic;->down_status:I

    return-void
.end method

.method public setGame_ico(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunTopic;->game_ico:Ljava/lang/String;

    return-void
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunTopic;->game_id:Ljava/lang/String;

    return-void
.end method

.method public setGame_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunTopic;->game_name:Ljava/lang/String;

    return-void
.end method

.method public setGame_open_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/TodayWufunTopic;->game_open_switch:I

    return-void
.end method

.method public setGame_open_time(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/TodayWufunTopic;->game_open_time:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunTopic;->id:Ljava/lang/String;

    return-void
.end method

.method public setPic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunTopic;->pic:Ljava/lang/String;

    return-void
.end method

.method public setSp_tag_info(Lcom/join/mgps/dto/TipNew;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunTopic;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    return-void
.end method

.method public setSp_tpl_two_position(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/TodayWufunTopic;->sp_tpl_two_position:I

    return-void
.end method

.method public setTag_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/TodayWufunTopic;->tag_type:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunTopic;->title:Ljava/lang/String;

    return-void
.end method

.method public setTpl_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunTopic;->tpl_type:Ljava/lang/String;

    return-void
.end method

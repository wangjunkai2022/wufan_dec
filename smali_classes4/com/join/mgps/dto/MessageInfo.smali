.class public Lcom/join/mgps/dto/MessageInfo;
.super Ljava/lang/Object;
.source "MessageInfo.java"


# instance fields
.field private add_time:J

.field private from_avatar_src:Ljava/lang/String;

.field private from_nickname:Ljava/lang/String;

.field private from_uid:I

.field private game_id:J

.field private is_carry:I

.field private is_global:I

.field private message_content:Ljava/lang/String;

.field private message_id:I

.field private message_state:I

.field private papa_money:I

.field private read_time:J

.field private title:Ljava/lang/String;

.field private to_nickname:Ljava/lang/String;

.field private to_uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdd_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/MessageInfo;->add_time:J

    return-wide v0
.end method

.method public getFrom_avatar_src()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MessageInfo;->from_avatar_src:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom_nickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MessageInfo;->from_nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom_uid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/MessageInfo;->from_uid:I

    return v0
.end method

.method public getGame_id()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/MessageInfo;->game_id:J

    return-wide v0
.end method

.method public getIs_carry()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/MessageInfo;->is_carry:I

    return v0
.end method

.method public getIs_global()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/MessageInfo;->is_global:I

    return v0
.end method

.method public getMessage_content()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MessageInfo;->message_content:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/MessageInfo;->message_id:I

    return v0
.end method

.method public getMessage_state()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/MessageInfo;->message_state:I

    return v0
.end method

.method public getPapa_money()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/MessageInfo;->papa_money:I

    return v0
.end method

.method public getRead_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/MessageInfo;->read_time:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MessageInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTo_nickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MessageInfo;->to_nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getTo_uid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/MessageInfo;->to_uid:I

    return v0
.end method

.method public setAdd_time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/MessageInfo;->add_time:J

    return-void
.end method

.method public setFrom_avatar_src(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/MessageInfo;->from_avatar_src:Ljava/lang/String;

    return-void
.end method

.method public setFrom_nickname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/MessageInfo;->from_nickname:Ljava/lang/String;

    return-void
.end method

.method public setFrom_uid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/MessageInfo;->from_uid:I

    return-void
.end method

.method public setGame_id(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/MessageInfo;->game_id:J

    return-void
.end method

.method public setIs_carry(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/MessageInfo;->is_carry:I

    return-void
.end method

.method public setIs_global(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/MessageInfo;->is_global:I

    return-void
.end method

.method public setMessage_content(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/MessageInfo;->message_content:Ljava/lang/String;

    return-void
.end method

.method public setMessage_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/MessageInfo;->message_id:I

    return-void
.end method

.method public setMessage_state(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/MessageInfo;->message_state:I

    return-void
.end method

.method public setPapa_money(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/MessageInfo;->papa_money:I

    return-void
.end method

.method public setRead_time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/MessageInfo;->read_time:J

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/MessageInfo;->title:Ljava/lang/String;

    return-void
.end method

.method public setTo_nickname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/MessageInfo;->to_nickname:Ljava/lang/String;

    return-void
.end method

.method public setTo_uid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/MessageInfo;->to_uid:I

    return-void
.end method

.class public Lcom/join/mgps/dto/GameDetialStrategyItem;
.super Ljava/lang/Object;
.source "GameDetialStrategyItem.java"


# instance fields
.field private add_time:J

.field private commit:I

.field private id:I

.field private pic_list:[Ljava/lang/String;

.field private praise:I

.field private subject:Ljava/lang/String;

.field private tag_name:Lcom/join/mgps/dto/GameDetialBookTag;

.field private view:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdd_time()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/GameDetialStrategyItem;->add_time:J

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public getCommit()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameDetialStrategyItem;->commit:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameDetialStrategyItem;->id:I

    return v0
.end method

.method public getPic_list()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameDetialStrategyItem;->pic_list:[Ljava/lang/String;

    return-object v0
.end method

.method public getPraise()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameDetialStrategyItem;->praise:I

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameDetialStrategyItem;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getTag_name()Lcom/join/mgps/dto/GameDetialBookTag;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameDetialStrategyItem;->tag_name:Lcom/join/mgps/dto/GameDetialBookTag;

    return-object v0
.end method

.method public getView()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameDetialStrategyItem;->view:I

    return v0
.end method

.method public setAdd_time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/GameDetialStrategyItem;->add_time:J

    return-void
.end method

.method public setCommit(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameDetialStrategyItem;->commit:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameDetialStrategyItem;->id:I

    return-void
.end method

.method public setPic_list([Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameDetialStrategyItem;->pic_list:[Ljava/lang/String;

    return-void
.end method

.method public setPraise(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameDetialStrategyItem;->praise:I

    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameDetialStrategyItem;->subject:Ljava/lang/String;

    return-void
.end method

.method public setTag_name(Lcom/join/mgps/dto/GameDetialBookTag;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameDetialStrategyItem;->tag_name:Lcom/join/mgps/dto/GameDetialBookTag;

    return-void
.end method

.method public setView(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameDetialStrategyItem;->view:I

    return-void
.end method

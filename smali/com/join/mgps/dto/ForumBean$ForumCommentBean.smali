.class public Lcom/join/mgps/dto/ForumBean$ForumCommentBean;
.super Ljava/lang/Object;
.source "ForumBean.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/ForumBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForumCommentBean"
.end annotation


# instance fields
.field private add_time:J

.field private answer_flg:I

.field private avatar_src:Ljava/lang/String;

.field private floor:I

.field private forum_auth:I

.field private is_moderator:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_moderator"
    .end annotation
.end field

.field private member_honor:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private officialAccount:Z

.field private pic_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pid:I

.field private raw_pic_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private reply_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;",
            ">;"
        }
    .end annotation
.end field

.field private svip_level:I

.field private uid:I

.field private vip_level:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/dto/ForumBean$ForumCommentBean;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getPid()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->pid:I

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getUid()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->uid:I

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getFloor()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->floor:I

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getNickname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->nickname:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getAvatar_src()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->avatar_src:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->message:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getAdd_time()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->add_time:J

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getRaw_pic_list()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->raw_pic_list:Ljava/util/List;

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getPic_list()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->pic_list:Ljava/util/List;

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getReply_list()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setReply_list(Ljava/util/List;)V

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getForum_auth()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->forum_auth:I

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->isOfficialAccount()Z

    move-result v0

    iput-boolean v0, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->officialAccount:Z

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getAnswer_flg()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->answer_flg:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 3
    new-instance v0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;-><init>()V

    return-object v0
.end method

.method public getAdd_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->add_time:J

    return-wide v0
.end method

.method public getAnswer_flg()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->answer_flg:I

    return v0
.end method

.method public getAvatar_src()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->avatar_src:Ljava/lang/String;

    return-object v0
.end method

.method public getFloor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->floor:I

    return v0
.end method

.method public getForum_auth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->forum_auth:I

    return v0
.end method

.method public getMember_honor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->member_honor:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getPic_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->pic_list:Ljava/util/List;

    return-object v0
.end method

.method public getPid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->pid:I

    return v0
.end method

.method public getRaw_pic_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->raw_pic_list:Ljava/util/List;

    return-object v0
.end method

.method public getReply_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->reply_list:Ljava/util/List;

    return-object v0
.end method

.method public getSvip_level()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->svip_level:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->uid:I

    return v0
.end method

.method public getVip_level()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->vip_level:I

    return v0
.end method

.method public isOfficialAccount()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->officialAccount:Z

    return v0
.end method

.method public is_moderator()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->is_moderator:Z

    return v0
.end method

.method public setAdd_time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->add_time:J

    return-void
.end method

.method public setAnswer_flg(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->answer_flg:I

    return-void
.end method

.method public setAvatar_src(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->avatar_src:Ljava/lang/String;

    return-void
.end method

.method public setFloor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->floor:I

    return-void
.end method

.method public setForum_auth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->forum_auth:I

    return-void
.end method

.method public setIs_moderator(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->is_moderator:Z

    return-void
.end method

.method public setMember_honor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->member_honor:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->message:Ljava/lang/String;

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setOfficialAccount(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->officialAccount:Z

    return-void
.end method

.method public setPic_list(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->pic_list:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->pic_list:Ljava/util/List;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->pic_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->pic_list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setPid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->pid:I

    return-void
.end method

.method public setRaw_pic_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->raw_pic_list:Ljava/util/List;

    return-void
.end method

.method public setReply_list(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->reply_list:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->reply_list:Ljava/util/List;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->reply_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->reply_list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setSvip_level(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->svip_level:I

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->uid:I

    return-void
.end method

.method public setVip_level(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->vip_level:I

    return-void
.end method

.class public Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;
.super Ljava/lang/Object;
.source "CommentDetailBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/CommentDetailBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainCommentBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;
    }
.end annotation


# instance fields
.field private add_times:Ljava/lang/String;

.field private approval_rate:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private despise_count:Ljava/lang/String;

.field private game_id:Ljava/lang/String;

.field private head_portrait:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private is_belong_to:I

.field private is_despise:I

.field private is_old:Ljava/lang/String;

.field private is_praise:I

.field private mapping:Ljava/lang/String;

.field private mobile_phone_model:Ljava/lang/String;

.field private pn:I

.field private praise_count:Ljava/lang/String;

.field private rank:Ljava/lang/String;

.field private reply_count:Ljava/lang/String;

.field private stars_score:Ljava/lang/String;

.field private start_game_count:Ljava/lang/String;

.field private sub_comment:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;",
            ">;"
        }
    .end annotation
.end field

.field private svip_level:I

.field private uid:Ljava/lang/String;

.field private user_name:Ljava/lang/String;

.field private vip_level:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->id:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getUid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->uid:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getUser_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->user_name:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getRank()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->rank:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getHead_portrait()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->head_portrait:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getGame_id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->game_id:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->content:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getMobile_phone_model()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->mobile_phone_model:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getPraise_count()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->praise_count:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getStars_score()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->stars_score:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getDespise_count()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->despise_count:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getStart_game_count()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->start_game_count:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getApproval_rate()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->approval_rate:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getAdd_times()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->add_times:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getIs_belong_to()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->is_belong_to:I

    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getReply_count()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->reply_count:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getMapping()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->mapping:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getIs_old()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->is_old:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getIs_praise()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->is_praise:I

    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getIs_despise()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->is_despise:I

    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getPn()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->pn:I

    .line 24
    iget-object v0, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->sub_comment:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->sub_comment:Ljava/util/List;

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->sub_comment:Ljava/util/List;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getSub_comment()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public getAdd_times()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->add_times:Ljava/lang/String;

    return-object v0
.end method

.method public getApproval_rate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->approval_rate:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getDespise_count()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->despise_count:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->game_id:Ljava/lang/String;

    return-object v0
.end method

.method public getHead_portrait()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->head_portrait:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_belong_to()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->is_belong_to:I

    return v0
.end method

.method public getIs_despise()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->is_despise:I

    return v0
.end method

.method public getIs_old()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->is_old:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_praise()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->is_praise:I

    return v0
.end method

.method public getMapping()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->mapping:Ljava/lang/String;

    return-object v0
.end method

.method public getMobile_phone_model()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->mobile_phone_model:Ljava/lang/String;

    return-object v0
.end method

.method public getPn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->pn:I

    return v0
.end method

.method public getPraise_count()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->praise_count:Ljava/lang/String;

    return-object v0
.end method

.method public getRank()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->rank:Ljava/lang/String;

    return-object v0
.end method

.method public getReply_count()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->reply_count:Ljava/lang/String;

    return-object v0
.end method

.method public getStars_score()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->stars_score:Ljava/lang/String;

    return-object v0
.end method

.method public getStart_game_count()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->start_game_count:Ljava/lang/String;

    return-object v0
.end method

.method public getSub_comment()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->sub_comment:Ljava/util/List;

    return-object v0
.end method

.method public getSvip_level()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->svip_level:I

    return v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method public getVip_level()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->vip_level:I

    return v0
.end method

.method public setAdd_times(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->add_times:Ljava/lang/String;

    return-void
.end method

.method public setApproval_rate(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->approval_rate:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->content:Ljava/lang/String;

    return-void
.end method

.method public setDespise_count(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->despise_count:Ljava/lang/String;

    return-void
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->game_id:Ljava/lang/String;

    return-void
.end method

.method public setHead_portrait(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->head_portrait:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setIs_belong_to(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->is_belong_to:I

    return-void
.end method

.method public setIs_despise(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->is_despise:I

    return-void
.end method

.method public setIs_old(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->is_old:Ljava/lang/String;

    return-void
.end method

.method public setIs_praise(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->is_praise:I

    return-void
.end method

.method public setMapping(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->mapping:Ljava/lang/String;

    return-void
.end method

.method public setMobile_phone_model(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->mobile_phone_model:Ljava/lang/String;

    return-void
.end method

.method public setPn(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->pn:I

    return-void
.end method

.method public setPraise_count(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->praise_count:Ljava/lang/String;

    return-void
.end method

.method public setRank(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->rank:Ljava/lang/String;

    return-void
.end method

.method public setReply_count(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->reply_count:Ljava/lang/String;

    return-void
.end method

.method public setStars_score(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->stars_score:Ljava/lang/String;

    return-void
.end method

.method public setStart_game_count(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->start_game_count:Ljava/lang/String;

    return-void
.end method

.method public setSub_comment(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->sub_comment:Ljava/util/List;

    return-void
.end method

.method public setSvip_level(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->svip_level:I

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->uid:Ljava/lang/String;

    return-void
.end method

.method public setUser_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->user_name:Ljava/lang/String;

    return-void
.end method

.method public setVip_level(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->vip_level:I

    return-void
.end method

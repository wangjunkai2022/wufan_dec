.class public Lcom/join/mgps/dto/ForumBean$ForumPostsBean;
.super Ljava/lang/Object;
.source "ForumBean.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/ForumBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForumPostsBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;,
        Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;
    }
.end annotation


# instance fields
.field private add_time:J

.field private attach_pic:Z

.field private attach_video:Z

.field private auth:I

.field private avatar_src:Ljava/lang/String;

.field private best:I

.field private cdn_url:Ljava/lang/String;

.field private comment:Ljava/lang/String;

.field private commit:I

.field private copper_title:Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;

.field private employ_tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;"
        }
    .end annotation
.end field

.field private fid:I

.field private first:I

.field private fname:Ljava/lang/String;

.field private forum_auth:I

.field private forum_name:Ljava/lang/String;

.field private game_id:Ljava/lang/String;

.field private help:I

.field private help_money:I

.field private is_add_tag_allow:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_add_tag_allow"
    .end annotation
.end field

.field private is_best_allow:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_best_allow"
    .end annotation
.end field

.field private is_del_allow:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_del_allow"
    .end annotation
.end field

.field private is_favorite:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_favorite"
    .end annotation
.end field

.field private is_first:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_first"
    .end annotation
.end field

.field private is_gag:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_gag"
    .end annotation
.end field

.field private is_moderator:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_moderator"
    .end annotation
.end field

.field private is_praise:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_praise"
    .end annotation
.end field

.field private is_remove_tag_allow:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_remove_tag_allow"
    .end annotation
.end field

.field private last_comment_time:Ljava/lang/String;

.field private member_honor:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private officialAccount:Z

.field private pid:I

.field private post_type:I

.field private praise:I

.field private relation_game:Lcom/join/mgps/dto/ForumBean$GameInfo;

.field private resource_url:Ljava/lang/String;

.field private rs_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;",
            ">;"
        }
    .end annotation
.end field

.field private small_thumb_pic_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;",
            ">;"
        }
    .end annotation
.end field

.field private solve_flg:I

.field private strategy:I

.field private subject:Ljava/lang/String;

.field private svip_level:I

.field private tag_info:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;",
            ">;"
        }
    .end annotation
.end field

.field private tag_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;"
        }
    .end annotation
.end field

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;"
        }
    .end annotation
.end field

.field private uid:I

.field private view:I

.field private vip_level:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAdd_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->add_time:J

    return-wide v0
.end method

.method public getAuth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->auth:I

    return v0
.end method

.method public getAvatar_src()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->avatar_src:Ljava/lang/String;

    return-object v0
.end method

.method public getBest()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->best:I

    return v0
.end method

.method public getCdn_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->cdn_url:Ljava/lang/String;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCommit()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->commit:I

    return v0
.end method

.method public getCopper_title()Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->copper_title:Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;

    return-object v0
.end method

.method public getEmploy_tags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->employ_tags:Ljava/util/List;

    return-object v0
.end method

.method public getFid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->fid:I

    return v0
.end method

.method public getFirst()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->first:I

    return v0
.end method

.method public getFname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->fname:Ljava/lang/String;

    return-object v0
.end method

.method public getForum_auth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->forum_auth:I

    return v0
.end method

.method public getForum_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->forum_name:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->game_id:Ljava/lang/String;

    return-object v0
.end method

.method public getHelp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->help:I

    return v0
.end method

.method public getHelp_money()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->help_money:I

    return v0
.end method

.method public getLast_comment_time()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->last_comment_time:Ljava/lang/String;

    return-object v0
.end method

.method public getMember_honor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->member_honor:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->pid:I

    return v0
.end method

.method public getPost_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->post_type:I

    return v0
.end method

.method public getPraise()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->praise:I

    return v0
.end method

.method public getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->relation_game:Lcom/join/mgps/dto/ForumBean$GameInfo;

    return-object v0
.end method

.method public getResource_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->resource_url:Ljava/lang/String;

    return-object v0
.end method

.method public getRs_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->rs_list:Ljava/util/List;

    return-object v0
.end method

.method public getSmall_thumb_pic_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->small_thumb_pic_list:Ljava/util/List;

    return-object v0
.end method

.method public getSolve_flg()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->solve_flg:I

    return v0
.end method

.method public getStrategy()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->strategy:I

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getSvip_level()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->svip_level:I

    return v0
.end method

.method public getTag_info()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->tag_info:Ljava/util/List;

    return-object v0
.end method

.method public getTag_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->tag_list:Ljava/util/List;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->uid:I

    return v0
.end method

.method public getView()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->view:I

    return v0
.end method

.method public getVip_level()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->vip_level:I

    return v0
.end method

.method public isAttach_pic()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->attach_pic:Z

    return v0
.end method

.method public isAttach_video()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->attach_video:Z

    return v0
.end method

.method public isOfficialAccount()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->officialAccount:Z

    return v0
.end method

.method public is_add_tag_allow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_add_tag_allow:Z

    return v0
.end method

.method public is_best_allow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_best_allow:Z

    return v0
.end method

.method public is_del_allow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_del_allow:Z

    return v0
.end method

.method public is_favorite()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_favorite:Z

    return v0
.end method

.method public is_first()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_first:Z

    return v0
.end method

.method public is_gag()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_gag:Z

    return v0
.end method

.method public is_moderator()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_moderator:Z

    return v0
.end method

.method public is_praise()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise:Z

    return v0
.end method

.method public is_remove_tag_allow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_remove_tag_allow:Z

    return v0
.end method

.method public setAdd_time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->add_time:J

    return-void
.end method

.method public setAttach_pic(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->attach_pic:Z

    return-void
.end method

.method public setAttach_video(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->attach_video:Z

    return-void
.end method

.method public setAuth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->auth:I

    return-void
.end method

.method public setAvatar_src(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->avatar_src:Ljava/lang/String;

    return-void
.end method

.method public setBest(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->best:I

    return-void
.end method

.method public setCdn_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->cdn_url:Ljava/lang/String;

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->comment:Ljava/lang/String;

    return-void
.end method

.method public setCommit(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->commit:I

    return-void
.end method

.method public setCopper_title(Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->copper_title:Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;

    return-void
.end method

.method public setEmploy_tags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->employ_tags:Ljava/util/List;

    return-void
.end method

.method public setFid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->fid:I

    return-void
.end method

.method public setFirst(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->first:I

    return-void
.end method

.method public setFname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->fname:Ljava/lang/String;

    return-void
.end method

.method public setForum_auth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->forum_auth:I

    return-void
.end method

.method public setForum_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->forum_name:Ljava/lang/String;

    return-void
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->game_id:Ljava/lang/String;

    return-void
.end method

.method public setHelp(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->help:I

    return-void
.end method

.method public setHelp_money(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->help_money:I

    return-void
.end method

.method public setIs_add_tag_allow(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_add_tag_allow:Z

    return-void
.end method

.method public setIs_best_allow(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_best_allow:Z

    return-void
.end method

.method public setIs_del_allow(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_del_allow:Z

    return-void
.end method

.method public setIs_favorite(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_favorite:Z

    return-void
.end method

.method public setIs_first(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_first:Z

    return-void
.end method

.method public setIs_gag(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_gag:Z

    return-void
.end method

.method public setIs_moderator(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_moderator:Z

    return-void
.end method

.method public setIs_praise(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise:Z

    return-void
.end method

.method public setIs_remove_tag_allow(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_remove_tag_allow:Z

    return-void
.end method

.method public setLast_comment_time(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->last_comment_time:Ljava/lang/String;

    return-void
.end method

.method public setMember_honor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->member_honor:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->message:Ljava/lang/String;

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setOfficialAccount(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->officialAccount:Z

    return-void
.end method

.method public setPid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->pid:I

    return-void
.end method

.method public setPost_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->post_type:I

    return-void
.end method

.method public setPraise(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->praise:I

    return-void
.end method

.method public setRelation_game(Lcom/join/mgps/dto/ForumBean$GameInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->relation_game:Lcom/join/mgps/dto/ForumBean$GameInfo;

    return-void
.end method

.method public setResource_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->resource_url:Ljava/lang/String;

    return-void
.end method

.method public setRs_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->rs_list:Ljava/util/List;

    return-void
.end method

.method public setSmall_thumb_pic_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->small_thumb_pic_list:Ljava/util/List;

    return-void
.end method

.method public setSolve_flg(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->solve_flg:I

    return-void
.end method

.method public setStrategy(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->strategy:I

    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->subject:Ljava/lang/String;

    return-void
.end method

.method public setSvip_level(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->svip_level:I

    return-void
.end method

.method public setTag_info(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->tag_info:Ljava/util/List;

    return-void
.end method

.method public setTag_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->tag_list:Ljava/util/List;

    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->tags:Ljava/util/List;

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->uid:I

    return-void
.end method

.method public setView(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->view:I

    return-void
.end method

.method public setVip_level(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->vip_level:I

    return-void
.end method

.class public Lcom/join/mgps/dto/ForumBean;
.super Ljava/lang/Object;
.source "ForumBean.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/ForumBean$ForumGagType;,
        Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;,
        Lcom/join/mgps/dto/ForumBean$ForumGameStrategyTagBean;,
        Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;,
        Lcom/join/mgps/dto/ForumBean$ForumSearchIndexBean;,
        Lcom/join/mgps/dto/ForumBean$ForumGiftBean;,
        Lcom/join/mgps/dto/ForumBean$GameInfo;,
        Lcom/join/mgps/dto/ForumBean$ForumTopicBean;,
        Lcom/join/mgps/dto/ForumBean$ForumMemberBean;,
        Lcom/join/mgps/dto/ForumBean$ForumTabBean;,
        Lcom/join/mgps/dto/ForumBean$ForumProfileMessageBean;,
        Lcom/join/mgps/dto/ForumBean$ForumProfileCommentBean;,
        Lcom/join/mgps/dto/ForumBean$ForumProfilePostUserInfoBean;,
        Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdItemBean;,
        Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;,
        Lcom/join/mgps/dto/ForumBean$ForumWelcomeBannerBean;,
        Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;,
        Lcom/join/mgps/dto/ForumBean$ForumCommentBean;,
        Lcom/join/mgps/dto/ForumBean$ForumPostsBean;,
        Lcom/join/mgps/dto/ForumBean$ForumEvent;,
        Lcom/join/mgps/dto/ForumBean$ForumExtBean;
    }
.end annotation


# instance fields
.field private add_time:J

.field private description:Ljava/lang/String;

.field private fid:I

.field private follow_count:I

.field private follow_time:J

.field private game_collections:Ljava/lang/String;

.field private icon_src:Ljava/lang/String;

.field private is_follow:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_follow"
    .end annotation
.end field

.field private member_is_write:I

.field private name:Ljava/lang/String;

.field private posts:I

.field private svip_is_write:I

.field private today_posts:I

.field private users:I

.field private vip_is_write:I


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
    iget-wide v0, p0, Lcom/join/mgps/dto/ForumBean;->add_time:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBean;->fid:I

    return v0
.end method

.method public getFollow_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBean;->follow_count:I

    return v0
.end method

.method public getFollow_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/ForumBean;->follow_time:J

    return-wide v0
.end method

.method public getGame_collections()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean;->game_collections:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon_src()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean;->icon_src:Ljava/lang/String;

    return-object v0
.end method

.method public getMember_is_write()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBean;->member_is_write:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPosts()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBean;->posts:I

    return v0
.end method

.method public getSvip_is_write()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBean;->svip_is_write:I

    return v0
.end method

.method public getToday_posts()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBean;->today_posts:I

    return v0
.end method

.method public getUsers()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBean;->users:I

    return v0
.end method

.method public getVip_is_write()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumBean;->vip_is_write:I

    return v0
.end method

.method public is_follow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ForumBean;->is_follow:Z

    return v0
.end method

.method public setAdd_time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/ForumBean;->add_time:J

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean;->description:Ljava/lang/String;

    return-void
.end method

.method public setFid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBean;->fid:I

    return-void
.end method

.method public setFollow_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBean;->follow_count:I

    return-void
.end method

.method public setFollow_time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/ForumBean;->follow_time:J

    return-void
.end method

.method public setGame_collections(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean;->game_collections:Ljava/lang/String;

    return-void
.end method

.method public setIcon_src(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean;->icon_src:Ljava/lang/String;

    return-void
.end method

.method public setIs_follow(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ForumBean;->is_follow:Z

    return-void
.end method

.method public setMember_is_write(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBean;->member_is_write:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setPosts(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBean;->posts:I

    return-void
.end method

.method public setSvip_is_write(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBean;->svip_is_write:I

    return-void
.end method

.method public setToday_posts(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBean;->today_posts:I

    return-void
.end method

.method public setUsers(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBean;->users:I

    return-void
.end method

.method public setVip_is_write(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumBean;->vip_is_write:I

    return-void
.end method

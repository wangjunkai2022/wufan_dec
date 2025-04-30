.class public Lcom/join/mgps/dto/DiscoverListWeiboItemBean;
.super Ljava/lang/Object;
.source "DiscoverListWeiboItemBean.java"


# instance fields
.field private add_time:Ljava/lang/String;

.field private avatar_src:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private id:I

.field private image_url:Ljava/lang/String;

.field private link_url:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private send_time:Ljava/lang/String;

.field private video_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdd_time()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->add_time:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatar_src()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->avatar_src:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    const-string v0, ""

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 3
    iget v0, p0, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->id:I

    return v0
.end method

.method public getImage_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->image_url:Ljava/lang/String;

    return-object v0
.end method

.method public getLink_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->link_url:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getSend_time()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->send_time:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->video_url:Ljava/lang/String;

    return-object v0
.end method

.method public setAdd_time(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->add_time:Ljava/lang/String;

    return-void
.end method

.method public setAvatar_src(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->avatar_src:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->content:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->id:I

    return-void
.end method

.method public setImage_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->image_url:Ljava/lang/String;

    return-void
.end method

.method public setLink_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->link_url:Ljava/lang/String;

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setSend_time(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->send_time:Ljava/lang/String;

    return-void
.end method

.method public setVideo_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->video_url:Ljava/lang/String;

    return-void
.end method

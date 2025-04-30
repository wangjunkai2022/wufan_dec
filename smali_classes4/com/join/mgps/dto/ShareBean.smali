.class public Lcom/join/mgps/dto/ShareBean;
.super Ljava/lang/Object;
.source "ShareBean.java"


# instance fields
.field private articleId:Ljava/lang/String;

.field private from:I

.field private gameId:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private intentData:Lcom/join/mgps/dto/BannerBean;

.field private qZoneShareUrl:Ljava/lang/String;

.field private qqUrl:Ljava/lang/String;

.field private target:I

.field private text:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private wechatFriendUrl:Ljava/lang/String;

.field private wechatShareUrl:Ljava/lang/String;

.field private weiboShareUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/join/mgps/rpc/g;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/upload/images/wf_ico.png?ver=2.2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/ShareBean;->imageUrl:Ljava/lang/String;

    const-string v0, "0"

    .line 3
    iput-object v0, p0, Lcom/join/mgps/dto/ShareBean;->gameId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/join/mgps/rpc/g;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/upload/images/wf_ico.png?ver=2.2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/ShareBean;->imageUrl:Ljava/lang/String;

    const-string v0, "0"

    .line 6
    iput-object v0, p0, Lcom/join/mgps/dto/ShareBean;->gameId:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcom/join/mgps/dto/ShareBean;->imageUrl:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/join/mgps/dto/ShareBean;->title:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/join/mgps/dto/ShareBean;->text:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/join/mgps/dto/ShareBean;->weiboShareUrl:Ljava/lang/String;

    .line 11
    iput-object p5, p0, Lcom/join/mgps/dto/ShareBean;->qZoneShareUrl:Ljava/lang/String;

    .line 12
    iput-object p6, p0, Lcom/join/mgps/dto/ShareBean;->wechatShareUrl:Ljava/lang/String;

    .line 13
    iput-object p7, p0, Lcom/join/mgps/dto/ShareBean;->wechatFriendUrl:Ljava/lang/String;

    .line 14
    iput-object p8, p0, Lcom/join/mgps/dto/ShareBean;->qqUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getArticleId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ShareBean;->articleId:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ShareBean;->from:I

    return v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ShareBean;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ShareBean;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIntentData()Lcom/join/mgps/dto/BannerBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ShareBean;->intentData:Lcom/join/mgps/dto/BannerBean;

    return-object v0
.end method

.method public getQqUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ShareBean;->qqUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ShareBean;->target:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ShareBean;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ShareBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getWechatFriendUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ShareBean;->wechatFriendUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWechatShareUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ShareBean;->wechatShareUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWeiboShareUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ShareBean;->weiboShareUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getqZoneShareUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ShareBean;->qZoneShareUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setArticleId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ShareBean;->articleId:Ljava/lang/String;

    return-void
.end method

.method public setFrom(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ShareBean;->from:I

    return-void
.end method

.method public setGameId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ShareBean;->gameId:Ljava/lang/String;

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ShareBean;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public setIntentData(Lcom/join/mgps/dto/BannerBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ShareBean;->intentData:Lcom/join/mgps/dto/BannerBean;

    return-void
.end method

.method public setQqUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ShareBean;->qqUrl:Ljava/lang/String;

    return-void
.end method

.method public setTarget(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ShareBean;->target:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ShareBean;->text:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ShareBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setWechatFriendUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ShareBean;->wechatFriendUrl:Ljava/lang/String;

    return-void
.end method

.method public setWechatShareUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ShareBean;->wechatShareUrl:Ljava/lang/String;

    return-void
.end method

.method public setWeiboShareUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ShareBean;->weiboShareUrl:Ljava/lang/String;

    return-void
.end method

.method public setqZoneShareUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ShareBean;->qZoneShareUrl:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShareBean{imageUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/ShareBean;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/ShareBean;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", text=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/ShareBean;->text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", weiboShareUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/ShareBean;->weiboShareUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", qZoneShareUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/ShareBean;->qZoneShareUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", wechatShareUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/ShareBean;->wechatShareUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", wechatFriendUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/ShareBean;->wechatFriendUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", qqUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/ShareBean;->qqUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

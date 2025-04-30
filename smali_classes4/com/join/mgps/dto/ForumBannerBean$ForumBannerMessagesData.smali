.class public Lcom/join/mgps/dto/ForumBannerBean$ForumBannerMessagesData;
.super Ljava/lang/Object;
.source "ForumBannerBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/ForumBannerBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForumBannerMessagesData"
.end annotation


# instance fields
.field private ad:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerBean;",
            ">;"
        }
    .end annotation
.end field

.field private live:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerBean;",
            ">;"
        }
    .end annotation
.end field

.field private mid:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerBean;",
            ">;"
        }
    .end annotation
.end field

.field private top:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAd()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerMessagesData;->ad:Ljava/util/List;

    return-object v0
.end method

.method public getLive()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerMessagesData;->live:Ljava/util/List;

    return-object v0
.end method

.method public getMid()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerMessagesData;->mid:Ljava/util/List;

    return-object v0
.end method

.method public getTop()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerMessagesData;->top:Ljava/util/List;

    return-object v0
.end method

.method public setAd(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerMessagesData;->ad:Ljava/util/List;

    return-void
.end method

.method public setLive(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerMessagesData;->live:Ljava/util/List;

    return-void
.end method

.method public setMid(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerMessagesData;->mid:Ljava/util/List;

    return-void
.end method

.method public setTop(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerMessagesData;->top:Ljava/util/List;

    return-void
.end method

.class public Lcom/join/mgps/dto/RecomDataBannerAndTablebean;
.super Ljava/lang/Object;
.source "RecomDataBannerAndTablebean.java"


# instance fields
.field private banner:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;"
        }
    .end annotation
.end field

.field private content:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;"
        }
    .end annotation
.end field

.field private error:Ljava/lang/String;

.field private fast:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/dto/RecomDataBannerAndTablebean;->fast:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/join/mgps/dto/RecomDataBannerAndTablebean;->banner:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcom/join/mgps/dto/RecomDataBannerAndTablebean;->content:Ljava/util/List;

    .line 5
    iput-object p4, p0, Lcom/join/mgps/dto/RecomDataBannerAndTablebean;->error:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBanner()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RecomDataBannerAndTablebean;->banner:Ljava/util/List;

    return-object v0
.end method

.method public getContent()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RecomDataBannerAndTablebean;->content:Ljava/util/List;

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RecomDataBannerAndTablebean;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getFast()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RecomDataBannerAndTablebean;->fast:Ljava/util/List;

    return-object v0
.end method

.method public setBanner(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RecomDataBannerAndTablebean;->banner:Ljava/util/List;

    return-void
.end method

.method public setContent(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RecomDataBannerAndTablebean;->content:Ljava/util/List;

    return-void
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RecomDataBannerAndTablebean;->error:Ljava/lang/String;

    return-void
.end method

.method public setFast(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RecomDataBannerAndTablebean;->fast:Ljava/util/List;

    return-void
.end method

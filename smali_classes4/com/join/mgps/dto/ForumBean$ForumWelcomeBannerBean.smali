.class public Lcom/join/mgps/dto/ForumBean$ForumWelcomeBannerBean;
.super Ljava/lang/Object;
.source "ForumBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/ForumBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForumWelcomeBannerBean"
.end annotation


# instance fields
.field public bannerDataCellBean:Lcom/join/mgps/dto/BannerBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBannerDataCellBean()Lcom/join/mgps/dto/BannerBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumWelcomeBannerBean;->bannerDataCellBean:Lcom/join/mgps/dto/BannerBean;

    return-object v0
.end method

.method public setBannerDataCellBean(Lcom/join/mgps/dto/BannerBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumWelcomeBannerBean;->bannerDataCellBean:Lcom/join/mgps/dto/BannerBean;

    return-void
.end method

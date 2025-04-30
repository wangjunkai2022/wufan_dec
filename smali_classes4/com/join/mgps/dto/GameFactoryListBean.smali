.class public Lcom/join/mgps/dto/GameFactoryListBean;
.super Ljava/lang/Object;
.source "GameFactoryListBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/GameFactoryListBean$LogoInfo;
    }
.end annotation


# instance fields
.field private game_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AppBean;",
            ">;"
        }
    .end annotation
.end field

.field private head_ad_pic:Ljava/lang/String;

.field private logo_info:Lcom/join/mgps/dto/GameFactoryListBean$LogoInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGame_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AppBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFactoryListBean;->game_list:Ljava/util/List;

    return-object v0
.end method

.method public getHead_ad_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFactoryListBean;->head_ad_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getLogo_info()Lcom/join/mgps/dto/GameFactoryListBean$LogoInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFactoryListBean;->logo_info:Lcom/join/mgps/dto/GameFactoryListBean$LogoInfo;

    return-object v0
.end method

.method public setGame_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AppBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFactoryListBean;->game_list:Ljava/util/List;

    return-void
.end method

.method public setHead_ad_pic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFactoryListBean;->head_ad_pic:Ljava/lang/String;

    return-void
.end method

.method public setLogo_info(Lcom/join/mgps/dto/GameFactoryListBean$LogoInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFactoryListBean;->logo_info:Lcom/join/mgps/dto/GameFactoryListBean$LogoInfo;

    return-void
.end method

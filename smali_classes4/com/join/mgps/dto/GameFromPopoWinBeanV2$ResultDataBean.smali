.class public Lcom/join/mgps/dto/GameFromPopoWinBeanV2$ResultDataBean;
.super Ljava/lang/Object;
.source "GameFromPopoWinBeanV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/GameFromPopoWinBeanV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultDataBean"
.end annotation


# instance fields
.field private famous_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromPopoWinBeanV2$FamousBean;",
            ">;"
        }
    .end annotation
.end field

.field private fav_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;",
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
.method public getFamous_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromPopoWinBeanV2$FamousBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$ResultDataBean;->famous_list:Ljava/util/List;

    return-object v0
.end method

.method public getFav_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$ResultDataBean;->fav_list:Ljava/util/List;

    return-object v0
.end method

.method public setFamous_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromPopoWinBeanV2$FamousBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$ResultDataBean;->famous_list:Ljava/util/List;

    return-void
.end method

.method public setFav_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$ResultDataBean;->fav_list:Ljava/util/List;

    return-void
.end method

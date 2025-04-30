.class public Lcom/join/kotlin/ui/findgame/data/FindChoiceBannerData;
.super Ljava/lang/Object;
.source "FindChoiceBannerData.java"


# instance fields
.field private game_info:Lcom/join/mgps/business/CollectionBeanSubBusiness;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private pic:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/business/CollectionBeanSubBusiness;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/join/mgps/business/CollectionBeanSubBusiness;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "game_info"

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pic"

    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/data/FindChoiceBannerData;->game_info:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 5
    iput-object p2, p0, Lcom/join/kotlin/ui/findgame/data/FindChoiceBannerData;->pic:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getGame_info()Lcom/join/mgps/business/CollectionBeanSubBusiness;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/data/FindChoiceBannerData;->game_info:Lcom/join/mgps/business/CollectionBeanSubBusiness;

    return-object v0
.end method

.method public getPic()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/data/FindChoiceBannerData;->pic:Ljava/lang/String;

    return-object v0
.end method

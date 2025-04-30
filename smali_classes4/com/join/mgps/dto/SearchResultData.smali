.class public Lcom/join/mgps/dto/SearchResultData;
.super Ljava/lang/Object;
.source "SearchResultData.java"


# instance fields
.field private ad_info:Lcom/join/mgps/dto/SearchResultAdinfo;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
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
.method public getAd_info()Lcom/join/mgps/dto/SearchResultAdinfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchResultData;->ad_info:Lcom/join/mgps/dto/SearchResultAdinfo;

    return-object v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchResultData;->list:Ljava/util/List;

    return-object v0
.end method

.method public setAd_info(Lcom/join/mgps/dto/SearchResultAdinfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchResultData;->ad_info:Lcom/join/mgps/dto/SearchResultAdinfo;

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchResultData;->list:Ljava/util/List;

    return-void
.end method

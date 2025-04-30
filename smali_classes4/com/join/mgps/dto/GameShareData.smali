.class public Lcom/join/mgps/dto/GameShareData;
.super Ljava/lang/Object;
.source "GameShareData.java"


# instance fields
.field statistics_info:Lcom/join/mgps/dto/GameShareStatisticsInfo;

.field tag_info:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
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
.method public getStatistics_info()Lcom/join/mgps/dto/GameShareStatisticsInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameShareData;->statistics_info:Lcom/join/mgps/dto/GameShareStatisticsInfo;

    return-object v0
.end method

.method public getTag_info()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameShareData;->tag_info:Ljava/util/List;

    return-object v0
.end method

.method public setStatistics_info(Lcom/join/mgps/dto/GameShareStatisticsInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameShareData;->statistics_info:Lcom/join/mgps/dto/GameShareStatisticsInfo;

    return-void
.end method

.method public setTag_info(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameShareData;->tag_info:Ljava/util/List;

    return-void
.end method

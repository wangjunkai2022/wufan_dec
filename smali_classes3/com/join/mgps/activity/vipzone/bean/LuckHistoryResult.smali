.class public Lcom/join/mgps/activity/vipzone/bean/LuckHistoryResult;
.super Ljava/lang/Object;
.source "LuckHistoryResult.java"


# instance fields
.field missing_prize:Lcom/join/mgps/activity/vipzone/bean/PrizeBean;

.field record_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/vipzone/bean/PrizeBean;",
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
.method public getMissing_prize()Lcom/join/mgps/activity/vipzone/bean/PrizeBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryResult;->missing_prize:Lcom/join/mgps/activity/vipzone/bean/PrizeBean;

    return-object v0
.end method

.method public getRecord_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/vipzone/bean/PrizeBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryResult;->record_list:Ljava/util/List;

    return-object v0
.end method

.method public setMissing_prize(Lcom/join/mgps/activity/vipzone/bean/PrizeBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryResult;->missing_prize:Lcom/join/mgps/activity/vipzone/bean/PrizeBean;

    return-void
.end method

.method public setRecord_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/vipzone/bean/PrizeBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryResult;->record_list:Ljava/util/List;

    return-void
.end method

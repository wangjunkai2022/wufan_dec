.class public Lcom/papa91/arc/bean/PaiWeiDataBean;
.super Ljava/lang/Object;
.source "PaiWeiDataBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;,
        Lcom/papa91/arc/bean/PaiWeiDataBean$AdListBean;,
        Lcom/papa91/arc/bean/PaiWeiDataBean$MonthBestBean;,
        Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;
    }
.end annotation


# instance fields
.field private ad_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/PaiWeiDataBean$AdListBean;",
            ">;"
        }
    .end annotation
.end field

.field private minimum_passing_time:I

.field private month_best:Lcom/papa91/arc/bean/PaiWeiDataBean$MonthBestBean;

.field private rank_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;",
            ">;"
        }
    .end annotation
.end field

.field private roles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;",
            ">;"
        }
    .end annotation
.end field

.field private unit:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAd_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/PaiWeiDataBean$AdListBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/PaiWeiDataBean;->ad_list:Ljava/util/List;

    return-object v0
.end method

.method public getMinimum_passing_time()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/bean/PaiWeiDataBean;->minimum_passing_time:I

    return v0
.end method

.method public getMonth_best()Lcom/papa91/arc/bean/PaiWeiDataBean$MonthBestBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/PaiWeiDataBean;->month_best:Lcom/papa91/arc/bean/PaiWeiDataBean$MonthBestBean;

    return-object v0
.end method

.method public getRank_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/PaiWeiDataBean;->rank_list:Ljava/util/List;

    return-object v0
.end method

.method public getRoles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/PaiWeiDataBean;->roles:Ljava/util/List;

    return-object v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/PaiWeiDataBean;->unit:Ljava/lang/String;

    return-object v0
.end method

.method public setAd_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/PaiWeiDataBean$AdListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/PaiWeiDataBean;->ad_list:Ljava/util/List;

    return-void
.end method

.method public setMinimum_passing_time(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/bean/PaiWeiDataBean;->minimum_passing_time:I

    return-void
.end method

.method public setMonth_best(Lcom/papa91/arc/bean/PaiWeiDataBean$MonthBestBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/PaiWeiDataBean;->month_best:Lcom/papa91/arc/bean/PaiWeiDataBean$MonthBestBean;

    return-void
.end method

.method public setRank_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/PaiWeiDataBean;->rank_list:Ljava/util/List;

    return-void
.end method

.method public setRoles(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/PaiWeiDataBean;->roles:Ljava/util/List;

    return-void
.end method

.method public setUnit(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/PaiWeiDataBean;->unit:Ljava/lang/String;

    return-void
.end method

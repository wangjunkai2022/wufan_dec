.class Lcom/join/mgps/activity/l0$r;
.super Ljava/lang/Object;
.source "GamedetialModleFiveFragemnt.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/l0;->b1(Lcom/join/mgps/dto/GamedetialModleFourBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/GameDetailRankingTag$GameTagBean;

.field final synthetic b:Lcom/join/mgps/activity/l0;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/l0;Lcom/join/mgps/dto/GameDetailRankingTag$GameTagBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/l0$r;->b:Lcom/join/mgps/activity/l0;

    iput-object p2, p0, Lcom/join/mgps/activity/l0$r;->a:Lcom/join/mgps/dto/GameDetailRankingTag$GameTagBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/l0$r;->a:Lcom/join/mgps/dto/GameDetailRankingTag$GameTagBean;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/l0$r;->b:Lcom/join/mgps/activity/l0;

    iget-object p1, p1, Lcom/join/mgps/activity/l0;->w0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/RankingHomeActivity_;->H0(Landroid/content/Context;)Lcom/join/mgps/activity/RankingHomeActivity_$f;

    move-result-object p1

    const/16 v0, 0x3e9

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/RankingHomeActivity_$f;->c(I)Lcom/join/mgps/activity/RankingHomeActivity_$f;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/l0$r;->a:Lcom/join/mgps/dto/GameDetailRankingTag$GameTagBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDetailRankingTag$GameTagBean;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/RankingHomeActivity_$f;->b(Ljava/lang/String;)Lcom/join/mgps/activity/RankingHomeActivity_$f;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/l0$r;->a:Lcom/join/mgps/dto/GameDetailRankingTag$GameTagBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDetailRankingTag$GameTagBean;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/RankingHomeActivity_$f;->a(Ljava/lang/String;)Lcom/join/mgps/activity/RankingHomeActivity_$f;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/l0$r;->a:Lcom/join/mgps/dto/GameDetailRankingTag$GameTagBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDetailRankingTag$GameTagBean;->getSub_title()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/RankingHomeActivity_$f;->d(Ljava/lang/String;)Lcom/join/mgps/activity/RankingHomeActivity_$f;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

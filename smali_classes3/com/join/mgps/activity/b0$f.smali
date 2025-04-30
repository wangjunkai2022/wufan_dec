.class Lcom/join/mgps/activity/b0$f;
.super Ljava/lang/Object;
.source "GameDetialModleThreeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/b0;->E0(Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/b0;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/b0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/b0$f;->a:Lcom/join/mgps/activity/b0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/b0$f;->a:Lcom/join/mgps/activity/b0;

    invoke-static {p1}, Lcom/join/mgps/activity/b0;->P(Lcom/join/mgps/activity/b0;)Lcom/join/mgps/customview/t;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/join/mgps/activity/b0$f;->a:Lcom/join/mgps/activity/b0;

    invoke-static {p1}, Lcom/join/mgps/activity/b0;->P(Lcom/join/mgps/activity/b0;)Lcom/join/mgps/customview/t;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/b0$f;->a:Lcom/join/mgps/activity/b0;

    invoke-static {p1}, Lcom/join/mgps/activity/b0;->P(Lcom/join/mgps/activity/b0;)Lcom/join/mgps/customview/t;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const/4 p1, 0x0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/b0$f;->a:Lcom/join/mgps/activity/b0;

    invoke-static {v0}, Lcom/join/mgps/activity/b0;->Q(Lcom/join/mgps/activity/b0;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/join/mgps/activity/b0$f;->a:Lcom/join/mgps/activity/b0;

    invoke-static {p1}, Lcom/join/mgps/activity/b0;->Q(Lcom/join/mgps/activity/b0;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/b0$f;->a:Lcom/join/mgps/activity/b0;

    invoke-static {v0}, Lcom/join/mgps/activity/b0;->M(Lcom/join/mgps/activity/b0;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v0

    const/16 v1, 0x2b

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/b0$f;->a:Lcom/join/mgps/activity/b0;

    invoke-static {v0}, Lcom/join/mgps/activity/b0;->M(Lcom/join/mgps/activity/b0;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/activity/b0$f;->a:Lcom/join/mgps/activity/b0;

    invoke-static {v2}, Lcom/join/mgps/activity/b0;->M(Lcom/join/mgps/activity/b0;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    const/16 p1, 0x2b

    :cond_2
    const/4 v0, 0x5

    if-eqz p1, :cond_4

    if-eq p1, v0, :cond_3

    const/16 v2, 0x9

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_4

    goto/16 :goto_1

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/b0$f;->a:Lcom/join/mgps/activity/b0;

    invoke-static {p1}, Lcom/join/mgps/activity/b0;->N(Lcom/join/mgps/activity/b0;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/b0$f;->a:Lcom/join/mgps/activity/b0;

    invoke-static {v0}, Lcom/join/mgps/activity/b0;->Q(Lcom/join/mgps/activity/b0;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    const-string v1, "2"

    invoke-static {p1, v0, v1}, Lcom/join/mgps/Util/UtilsMy;->f3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 7
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/b0$f;->a:Lcom/join/mgps/activity/b0;

    invoke-static {p1}, Lcom/join/mgps/activity/b0;->M(Lcom/join/mgps/activity/b0;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_status()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    goto/16 :goto_1

    .line 8
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/b0$f;->a:Lcom/join/mgps/activity/b0;

    invoke-static {p1}, Lcom/join/mgps/activity/b0;->Q(Lcom/join/mgps/activity/b0;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    sget-object v2, Lcom/papa/sim/statistic/Where;->detail:Lcom/papa/sim/statistic/Where;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setKeyword(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/b0$f;->a:Lcom/join/mgps/activity/b0;

    invoke-static {p1}, Lcom/join/mgps/activity/b0;->M(Lcom/join/mgps/activity/b0;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/b0$f;->a:Lcom/join/mgps/activity/b0;

    invoke-static {p1}, Lcom/join/mgps/activity/b0;->M(Lcom/join/mgps/activity/b0;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object p1

    iget-object v2, p0, Lcom/join/mgps/activity/b0$f;->a:Lcom/join/mgps/activity/b0;

    invoke-static {v2}, Lcom/join/mgps/activity/b0;->M(Lcom/join/mgps/activity/b0;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/join/mgps/Util/UtilsMy;->o0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_6

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/b0$f;->a:Lcom/join/mgps/activity/b0;

    invoke-static {p1}, Lcom/join/mgps/activity/b0;->N(Lcom/join/mgps/activity/b0;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/b0$f;->a:Lcom/join/mgps/activity/b0;

    iget-object v0, v0, Lcom/join/mgps/activity/b0;->I:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->m3(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/b0$f;->a:Lcom/join/mgps/activity/b0;

    invoke-static {p1}, Lcom/join/mgps/activity/b0;->Q(Lcom/join/mgps/activity/b0;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/join/mgps/activity/b0;->addFrom(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/b0$f;->a:Lcom/join/mgps/activity/b0;

    invoke-static {p1}, Lcom/join/mgps/activity/b0;->Q(Lcom/join/mgps/activity/b0;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    iget-object v2, p0, Lcom/join/mgps/activity/b0$f;->a:Lcom/join/mgps/activity/b0;

    invoke-static {v2}, Lcom/join/mgps/activity/b0;->M(Lcom/join/mgps/activity/b0;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/join/mgps/Util/UtilsMy;->g1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/b0$f;->a:Lcom/join/mgps/activity/b0;

    invoke-static {p1}, Lcom/join/mgps/activity/b0;->N(Lcom/join/mgps/activity/b0;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    move-result-object p1

    iget-object v2, p0, Lcom/join/mgps/activity/b0$f;->a:Lcom/join/mgps/activity/b0;

    invoke-static {v2}, Lcom/join/mgps/activity/b0;->Q(Lcom/join/mgps/activity/b0;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_0

    .line 15
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/b0$f;->a:Lcom/join/mgps/activity/b0;

    invoke-static {p1}, Lcom/join/mgps/activity/b0;->M(Lcom/join/mgps/activity/b0;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_status()I

    move-result p1

    if-ne p1, v0, :cond_8

    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/b0$f;->a:Lcom/join/mgps/activity/b0;

    invoke-static {p1}, Lcom/join/mgps/activity/b0;->N(Lcom/join/mgps/activity/b0;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/b0$f;->a:Lcom/join/mgps/activity/b0;

    invoke-static {v0}, Lcom/join/mgps/activity/b0;->Q(Lcom/join/mgps/activity/b0;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 17
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/activity/b0$f;->a:Lcom/join/mgps/activity/b0;

    invoke-static {p1}, Lcom/join/mgps/activity/b0;->N(Lcom/join/mgps/activity/b0;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/b0$f;->a:Lcom/join/mgps/activity/b0;

    invoke-static {v0}, Lcom/join/mgps/activity/b0;->Q(Lcom/join/mgps/activity/b0;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/activity/b0$f;->a:Lcom/join/mgps/activity/b0;

    invoke-static {v2}, Lcom/join/mgps/activity/b0;->M(Lcom/join/mgps/activity/b0;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getTp_down_url()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/activity/b0$f;->a:Lcom/join/mgps/activity/b0;

    invoke-static {v3}, Lcom/join/mgps/activity/b0;->M(Lcom/join/mgps/activity/b0;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getOther_down_switch()I

    move-result v3

    iget-object v4, p0, Lcom/join/mgps/activity/b0$f;->a:Lcom/join/mgps/activity/b0;

    invoke-static {v4}, Lcom/join/mgps/activity/b0;->M(Lcom/join/mgps/activity/b0;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCdn_down_switch()I

    move-result v4

    invoke-static {p1, v0, v2, v3, v4}, Lcom/join/mgps/Util/UtilsMy;->F0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 18
    :cond_9
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/b0$f;->a:Lcom/join/mgps/activity/b0;

    invoke-static {p1}, Lcom/join/mgps/activity/b0;->Q(Lcom/join/mgps/activity/b0;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    :goto_1
    return-void
.end method

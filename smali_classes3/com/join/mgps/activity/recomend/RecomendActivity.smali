.class public Lcom/join/mgps/activity/recomend/RecomendActivity;
.super Lcom/BaseAppCompatActivity;
.source "RecomendActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/recomend/RecomendActivity$ClickSpan;,
        Lcom/join/mgps/activity/recomend/RecomendActivity$CommentAdapter;,
        Lcom/join/mgps/activity/recomend/RecomendActivity$CommentHolder;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0559
.end annotation


# instance fields
.field adapter:Lcom/join/mgps/activity/recomend/RecomendActivity$CommentAdapter;

.field allData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/recomend/RecomentBean;",
            ">;"
        }
    .end annotation
.end field

.field context:Landroid/content/Context;

.field enterGame:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loadDataType:I

.field lodingImg:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field prefDef:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field protocol:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field protocolCheck:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field recycleView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rpcClient:Lcom/join/mgps/rpc/d;

.field selectedNumber:I

.field title:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field userProtocolTxt:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->loadDataType:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->selectedNumber:I

    return-void
.end method

.method public static sortIntMethod(Ljava/util/List;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/recomend/RecomendActivity$2;

    invoke-direct {v0}, Lcom/join/mgps/activity/recomend/RecomendActivity$2;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private updateGameUi(Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/TextView;Lcom/join/mgps/activity/recomend/RecomentBean;)V
    .locals 2

    .line 1
    invoke-virtual {p3}, Lcom/join/mgps/activity/recomend/RecomentBean;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getIco_remote()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0807b1

    invoke-static {p1, v1, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 2
    invoke-virtual {p3}, Lcom/join/mgps/activity/recomend/RecomentBean;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getGame_name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method afterView()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->context:Landroid/content/Context;

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->enterGame:Landroid/widget/TextView;

    const v1, 0x7f0804ef

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 5
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->rpcClient:Lcom/join/mgps/rpc/d;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->protocolCheck:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->allData:Ljava/util/List;

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->recycleView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 9
    new-instance v0, Lcom/join/mgps/activity/recomend/RecomendActivity$CommentAdapter;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/recomend/RecomendActivity$CommentAdapter;-><init>(Lcom/join/mgps/activity/recomend/RecomendActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->adapter:Lcom/join/mgps/activity/recomend/RecomendActivity$CommentAdapter;

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->recycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->title:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->enterGame:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/activity/recomend/RecomendActivity;->getData()V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->context:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastApplyReadPhonePermissionOnRecom()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/join/mgps/Util/x;->t(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastApplyReadPhonePermission()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastApplyReadPhonePermissionOnRecom()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->c2(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method delayRequest()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0xbb8L
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/recomend/RecomendActivity;->getData()V

    return-void
.end method

.method down()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/recomend/RecomendActivity;->downv2(Z)V

    return-void
.end method

.method downv2(Z)V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->protocolCheck:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->selectedNumber:I

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->allData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/activity/recomend/RecomentBean;

    .line 4
    invoke-virtual {v2}, Lcom/join/mgps/activity/recomend/RecomentBean;->getIs_select()I

    move-result v4

    if-ne v4, v3, :cond_1

    if-eqz p1, :cond_2

    .line 5
    :try_start_0
    invoke-virtual {v2}, Lcom/join/mgps/activity/recomend/RecomentBean;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "7"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 8
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 9
    :cond_3
    invoke-static {v0}, Lcom/join/mgps/activity/recomend/RecomendActivity;->sortIntMethod(Ljava/util/List;)V

    const-wide/16 v1, 0x5dc

    .line 10
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/recomend/RecomentBean;

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/activity/recomend/RecomentBean;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v0

    const/16 v1, 0x70

    .line 14
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    const-wide/16 v1, 0x3e8

    .line 15
    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    .line 16
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    :goto_3
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v1

    if-nez v1, :cond_5

    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 20
    invoke-virtual {v0, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUncheckSelfSupport(Z)V

    .line 21
    invoke-virtual {v0, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFromRecomDown(Z)V

    .line 22
    invoke-virtual {v0, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDisableShowSpeedUpPrompt(Z)V

    .line 23
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/service/CommonService_;->d2(Landroid/content/Context;)Lcom/join/mgps/service/CommonService_$u1;

    move-result-object v1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    const-string v4, "downGameIdNotSelfSupport"

    invoke-virtual {v1, v4, v2}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/service/CommonService_$u1;

    const-string v2, "downloadTask"

    invoke-virtual {v1, v2, v0}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/io/Serializable;)Lorg/androidannotations/api/builder/e;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/service/CommonService_$u1;

    invoke-virtual {v1}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    .line 24
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/join/android/app/common/http/PointSendUtile;->sendPoint(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 25
    :cond_5
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/service/CommonService_;->d2(Landroid/content/Context;)Lcom/join/mgps/service/CommonService_$u1;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v2

    const-string v4, "gameDownloadDetail"

    invoke-virtual {v1, v4, v2}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/service/CommonService_$u1;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadPointBase;->get_from()I

    move-result v2

    const-string v4, "_from"

    invoke-virtual {v1, v4, v2}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;I)Lorg/androidannotations/api/builder/e;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/service/CommonService_$u1;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    move-result v0

    const-string v2, "_from_type"

    invoke-virtual {v1, v2, v0}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;I)Lorg/androidannotations/api/builder/e;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/service/CommonService_$u1;

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    goto/16 :goto_2

    :cond_6
    :goto_4
    return-void
.end method

.method enterGame()V
    .locals 10
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    const-string v0, "   "

    .line 1
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/papa/sim/statistic/pref/b;->j(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/pref/b;->D(Z)V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->allData:Ljava/util/List;

    if-eqz v1, :cond_d

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->protocolCheck:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->selectedNumber:I

    if-nez v1, :cond_2

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 5
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->protocolCheck:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x2

    const-string v4, ""

    const/4 v5, 0x0

    if-eqz v1, :cond_a

    .line 6
    :try_start_1
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->allData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v7, v4

    const/4 v6, 0x0

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/join/mgps/activity/recomend/RecomentBean;

    .line 7
    invoke-virtual {v8}, Lcom/join/mgps/activity/recomend/RecomentBean;->getIs_select()I

    move-result v9

    if-ne v9, v2, :cond_3

    .line 8
    invoke-virtual {v8}, Lcom/join/mgps/activity/recomend/RecomentBean;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v6

    .line 9
    invoke-virtual {v6}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v8

    if-eqz v8, :cond_4

    const-string v7, "VIRTUAL_SINGLE"

    :cond_4
    const-string v8, "7"

    .line 10
    invoke-virtual {v6}, Lcom/join/mgps/dto/AppBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v9

    invoke-virtual {v9}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object v9

    invoke-virtual {v9}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    goto :goto_0

    :cond_5
    const-string v7, "ANDROID_SINGLE"

    const/4 v8, 0x1

    :goto_0
    if-nez v8, :cond_8

    .line 11
    invoke-virtual {v6}, Lcom/join/mgps/dto/AppBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x0

    goto :goto_1

    .line 12
    :cond_6
    invoke-virtual {v6}, Lcom/join/mgps/dto/AppBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Lcom/join/mgps/Util/UtilsMy;->H1(I)Z

    move-result v8

    :goto_1
    if-eqz v8, :cond_8

    .line 13
    invoke-virtual {v6}, Lcom/join/mgps/dto/AppBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v6

    .line 14
    invoke-static {v6}, Lcom/join/mgps/Util/UtilsMy;->y1(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v6

    .line 15
    invoke-virtual {v6}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result v6

    if-ne v6, v3, :cond_7

    const-string v6, "SO_SIMULATOR"

    goto :goto_2

    :cond_7
    const-string v6, "RAW_SIMULATOR"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move-object v7, v6

    :cond_8
    move v6, v8

    if-eqz v6, :cond_3

    :cond_9
    move v5, v6

    goto :goto_3

    :cond_a
    move-object v7, v4

    .line 16
    :goto_3
    :try_start_2
    new-instance v1, Lcom/join/mgps/pref/PrefDef_;

    iget-object v2, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->androidIdNullsKey()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/MApplication;->z:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 19
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    const-class v2, Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 20
    sget-object v1, Lcom/MApplication;->z:Ljava/lang/String;

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Lcom/MApplication;->z:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz v5, :cond_b

    .line 21
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v0, :cond_b

    return-void

    .line 22
    :catch_0
    :cond_b
    :try_start_3
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    iget-object v1, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->download_game_switch()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v5, :cond_c

    if-eqz v0, :cond_c

    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->context:Landroid/content/Context;

    new-instance v1, Lcom/join/mgps/activity/recomend/RecomendActivity$1;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/recomend/RecomendActivity$1;-><init>(Lcom/join/mgps/activity/recomend/RecomendActivity;)V

    invoke-static {v0, v3, v4, v7, v1}, Lcom/join/mgps/Util/UtilsMy;->p0(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/arena/GameRoomActivity$x;)V

    goto :goto_4

    .line 24
    :cond_c
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isFirstCommendVersion()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 25
    invoke-virtual {p0}, Lcom/join/mgps/activity/recomend/RecomendActivity;->down()V

    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isFirst35()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    const v0, 0x8627

    .line 27
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d
    :goto_4
    return-void
.end method

.method finishActivit()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isFirst35()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    const v0, 0x8627

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method getData()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/dto/CommonRequestMessage;

    new-instance v2, Lcom/join/mgps/dto/RequestTypePn;

    iget v3, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->loadDataType:I

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/join/mgps/dto/RequestTypePn;-><init>(II)V

    invoke-direct {v1, v2}, Lcom/join/mgps/dto/CommonRequestMessage;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getCommentRequestData(Lcom/join/mgps/dto/CommonRequestMessage;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->rpcClient:Lcom/join/mgps/rpc/d;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/d;->L(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v1

    if-ne v1, v4, :cond_2

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/recomend/RecomentBean1;

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/activity/recomend/RecomentBean1;->getUser_protocol()Lcom/join/mgps/activity/recomend/UserProtocolBean;

    move-result-object v1

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/activity/recomend/RecomentBean1;->getGame_list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/recomend/RecomendActivity;->updateUI(Ljava/util/List;Lcom/join/mgps/activity/recomend/UserProtocolBean;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/recomend/RecomendActivity;->finishActivit()V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/recomend/RecomendActivity;->delayRequest()V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v0

    if-nez v0, :cond_3

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/activity/recomend/RecomendActivity;->finishActivit()V

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/recomend/RecomendActivity;->delayRequest()V

    goto :goto_0

    .line 15
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/recomend/RecomendActivity;->delayRequest()V

    const-string v0, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc"

    .line 16
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/recomend/RecomendActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/activity/recomend/RecomendActivity;->delayRequest()V

    const-string v0, "\u83b7\u53d6\u6570\u636e\u5931\u8d25\u8bf7\u91cd\u8bd5"

    .line 19
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/recomend/RecomendActivity;->showToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isFirstCommendVersion()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isFirst35()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    const v0, 0x8627

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method protocolCheckPlaceholder()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->protocolCheck:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->protocolCheck:Landroid/view/View;

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/recomend/RecomendActivity;->refreshEnterGame()V

    return-void
.end method

.method refreshEnterGame()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->selectedNumber:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->protocolCheck:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->enterGame:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6 \uff08"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->selectedNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u6b3e\u6e38\u620f\uff09"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->enterGame:Landroid/widget/TextView;

    const v1, 0x7f0802f4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->enterGame:Landroid/widget/TextView;

    const v1, 0x7f0804ef

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->enterGame:Landroid/widget/TextView;

    const-string v1, "\u8fdb\u5165\u5e94\u7528"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method updateUI(Ljava/util/List;Lcom/join/mgps/activity/recomend/UserProtocolBean;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/recomend/RecomentBean;",
            ">;",
            "Lcom/join/mgps/activity/recomend/UserProtocolBean;",
            ")V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 1
    iget-object v2, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->protocol:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    :try_start_0
    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/UserProtocolBean;->getTxt()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3
    new-instance v3, Lcom/join/mgps/activity/recomend/RecomendActivity$ClickSpan;

    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/UserProtocolBean;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/join/mgps/activity/recomend/RecomendActivity$ClickSpan;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/UserProtocolBean;->getUrl_txt()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr v4, p2

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result p2

    const/16 v5, 0x11

    invoke-virtual {v2, v3, v4, p2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 5
    iget-object p2, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->userProtocolTxt:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p2, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->userProtocolTxt:Landroid/widget/TextView;

    new-instance v2, Lcom/join/mgps/Util/w;

    invoke-direct {v2}, Lcom/join/mgps/Util/w;-><init>()V

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 7
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->protocol:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    :goto_0
    iget-object p2, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->enterGame:Landroid/widget/TextView;

    const v2, 0x7f0802f4

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 10
    iget-object p2, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->title:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-object p2, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->enterGame:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    .line 13
    iget-object p2, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->allData:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 14
    iget-object p2, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->allData:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->lodingImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->recycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/recomend/RecomendActivity;->delayRequest()V

    .line 18
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->allData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/activity/recomend/RecomentBean;

    .line 19
    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/RecomentBean;->getIs_select()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 20
    iget p2, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->selectedNumber:I

    add-int/2addr p2, v0

    iput p2, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->selectedNumber:I

    goto :goto_2

    .line 21
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/recomend/RecomendActivity;->refreshEnterGame()V

    .line 22
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecomendActivity;->adapter:Lcom/join/mgps/activity/recomend/RecomendActivity$CommentAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.class public Lcom/join/mgps/activity/HotVoucherActivity;
.super Lcom/join/mgps/baseactivity/BaseLoadingActivity;
.source "HotVoucherActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c004c
.end annotation


# instance fields
.field d:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Lcom/join/mgps/rpc/n;

.field private h:I

.field private i:Lcom/join/mgps/adapter/n2;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AccountVoucherGameBean;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/join/mgps/dto/AccountVoucherAd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/HotVoucherActivity;->h:I

    return-void
.end method

.method static synthetic J0(Lcom/join/mgps/activity/HotVoucherActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/HotVoucherActivity;->h:I

    return p1
.end method

.method static synthetic K0(Lcom/join/mgps/activity/HotVoucherActivity;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/HotVoucherActivity;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/join/mgps/activity/HotVoucherActivity;->h:I

    return v0
.end method


# virtual methods
.method public F0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    :try_start_0
    new-instance v0, Lorg/springframework/util/LinkedMultiValueMap;

    invoke-direct {v0}, Lorg/springframework/util/LinkedMultiValueMap;-><init>()V

    const-string v1, "uid"

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "token"

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "page"

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/join/mgps/activity/HotVoucherActivity;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "limit"

    const-string v2, "10"

    .line 6
    invoke-virtual {v0, v1, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/HotVoucherActivity;->g:Lcom/join/mgps/rpc/n;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/n;->b(Ljava/util/Map;)Lcom/join/mgps/dto/PapayVoucherResultMain;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/PapayVoucherResultMain;->getError()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/PapayVoucherResultMain;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/PapayVoucherResultMain;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ResultMyVoucherBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMyVoucherBean;->getRecommend()Ljava/util/List;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/HotVoucherActivity;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/activity/HotVoucherActivity;->O0()V

    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_3

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/activity/HotVoucherActivity;->L0()V

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/HotVoucherActivity;->showLodingFailed()V

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/HotVoucherActivity;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/activity/HotVoucherActivity;->showLodingFailed()V

    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/HotVoucherActivity;->showLodingFailed()V

    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/activity/HotVoucherActivity;->M0()V

    .line 20
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/HotVoucherActivity;->N0()V

    return-void
.end method

.method L0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HotVoucherActivity;->f:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    return-void
.end method

.method M0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const v0, 0x7f110206

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method N0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HotVoucherActivity;->f:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->t()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/HotVoucherActivity;->f:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    return-void
.end method

.method O0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HotVoucherActivity;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/HotVoucherActivity;->f:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->showNoDataLayoutTwo()V

    const v0, 0x7f110459

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->setTextViewNoData(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/HotVoucherActivity;->f:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->p()V

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->E0()V

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/HotVoucherActivity;->i:Lcom/join/mgps/adapter/n2;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method afterViews()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/m;->h()Lcom/join/mgps/rpc/impl/m;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/HotVoucherActivity;->g:Lcom/join/mgps/rpc/n;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/HotVoucherActivity;->d:Landroid/widget/TextView;

    const-string v1, "\u70ed\u95e8\u4ee3\u91d1\u5238"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/HotVoucherActivity;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/HotVoucherActivity;->j:Ljava/util/List;

    .line 5
    new-instance v0, Lcom/join/mgps/adapter/n2;

    iget-object v1, p0, Lcom/join/mgps/activity/HotVoucherActivity;->j:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/adapter/n2;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/join/mgps/activity/HotVoucherActivity;->i:Lcom/join/mgps/adapter/n2;

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/HotVoucherActivity;->f:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/HotVoucherActivity;->f:Lcom/join/mgps/customview/XListView2;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/HotVoucherActivity;->f:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/activity/HotVoucherActivity$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/HotVoucherActivity$a;-><init>(Lcom/join/mgps/activity/HotVoucherActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/HotVoucherActivity;->f:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/activity/HotVoucherActivity$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/HotVoucherActivity$b;-><init>(Lcom/join/mgps/activity/HotVoucherActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/HotVoucherActivity;->F0()V

    return-void
.end method

.method back_image()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public getLoadingLayoutResID()I
    .locals 1

    const v0, 0x7f09008c

    return v0
.end method

.method showLodingFailed()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HotVoucherActivity;->j:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->G0()V

    :cond_1
    return-void
.end method

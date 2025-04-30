.class public Lcom/join/mgps/activity/MyVoucherGameActivity;
.super Lcom/join/mgps/baseactivity/BaseLoadingActivity;
.source "MyVoucherGameActivity.java"

# interfaces
.implements Lcom/join/mgps/listener/a$a;


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0059
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

.field f:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Lcom/join/mgps/rpc/n;

.field private i:I

.field j:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private k:Lcom/join/mgps/dto/AccountVoucherAd;

.field l:Lcom/join/mgps/dto/AccountVoucher;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private m:Lcom/join/mgps/adapter/p3;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AccountVoucherGame;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->i:I

    return-void
.end method

.method static synthetic J0(Lcom/join/mgps/activity/MyVoucherGameActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->i:I

    return p1
.end method

.method static synthetic K0(Lcom/join/mgps/activity/MyVoucherGameActivity;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->i:I

    return v0
.end method


# virtual methods
.method public F0()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, ""

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2
    :try_start_0
    new-instance v1, Lorg/springframework/util/LinkedMultiValueMap;

    invoke-direct {v1}, Lorg/springframework/util/LinkedMultiValueMap;-><init>()V

    const-string v2, "uid"

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "token"

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "game_id"

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->l:Lcom/join/mgps/dto/AccountVoucher;

    invoke-virtual {v4}, Lcom/join/mgps/dto/AccountVoucher;->getGame_id()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "page"

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->i:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "limit"

    const-string v2, "10"

    .line 7
    invoke-virtual {v1, v0, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->h:Lcom/join/mgps/rpc/n;

    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/n;->f(Ljava/util/Map;)Lcom/join/mgps/dto/PapayVoucherResultMain;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/PapayVoucherResultMain;->getError()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/dto/PapayVoucherResultMain;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ResultMyVoucherGameBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMyVoucherGameBean;->getCoupons()Ljava/util/List;

    move-result-object v1

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/PapayVoucherResultMain;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/ResultMyVoucherGameBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMyVoucherGameBean;->getHelp()Lcom/join/mgps/dto/AccountVoucherAd;

    move-result-object v3

    iput-object v3, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->k:Lcom/join/mgps/dto/AccountVoucherAd;

    if-eqz v1, :cond_6

    .line 12
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 13
    iget v3, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->i:I

    if-ne v3, v2, :cond_0

    .line 14
    iget-object v2, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 15
    iget-object v2, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->n:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 16
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->n:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17
    :goto_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/PapayVoucherResultMain;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ResultMyVoucherGameBean;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyVoucherGameActivity;->P0(Lcom/join/mgps/dto/ResultMyVoucherGameBean;)V

    goto :goto_1

    .line 18
    :cond_1
    iget v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->i:I

    if-eq v0, v2, :cond_6

    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyVoucherGameActivity;->L0()V

    goto :goto_1

    .line 20
    :cond_2
    iget v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->i:I

    if-ne v0, v2, :cond_3

    .line 21
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyVoucherGameActivity;->showLodingFailed()V

    goto :goto_1

    .line 22
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyVoucherGameActivity;->L0()V

    goto :goto_1

    .line 23
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyVoucherGameActivity;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 25
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyVoucherGameActivity;->showLodingFailed()V

    goto :goto_1

    .line 26
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyVoucherGameActivity;->showLodingFailed()V

    .line 27
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyVoucherGameActivity;->M0()V

    .line 28
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyVoucherGameActivity;->O0()V

    return-void
.end method

.method L0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->g:Lcom/join/mgps/customview/XListView2;

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
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->k:Lcom/join/mgps/dto/AccountVoucherAd;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x4

    .line 3
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->k:Lcom/join/mgps/dto/AccountVoucherAd;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountVoucherAd;->getLink()Lcom/join/mgps/dto/AccountVoucherAdBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountVoucherAdBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->k:Lcom/join/mgps/dto/AccountVoucherAd;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountVoucherAd;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    .line 6
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    :cond_0
    return-void
.end method

.method O0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->g:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->t()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->g:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    return-void
.end method

.method P0(Lcom/join/mgps/dto/ResultMyVoucherGameBean;)V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMyVoucherGameBean;->getMoney()Lcom/join/mgps/dto/AccountVoucherStatusBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11044b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<font color = \'#D33D3E\'>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMyVoucherGameBean;->getMoney()Lcom/join/mgps/dto/AccountVoucherStatusBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/AccountVoucherStatusBean;->getCount()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "</font>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMyVoucherGameBean;->getMoney()Lcom/join/mgps/dto/AccountVoucherStatusBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountVoucherStatusBean;->getMoney()D

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->f:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->E0()V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->m:Lcom/join/mgps/adapter/p3;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method Q0()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->l:Lcom/join/mgps/dto/AccountVoucher;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountVoucher;->getGame_id()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->l:Lcom/join/mgps/dto/AccountVoucher;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountVoucher;->getGame_tpl()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->l:Lcom/join/mgps/dto/AccountVoucher;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountVoucher;->getSp_tpl_two_position()I

    move-result v4

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method afterViews()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/m;->h()Lcom/join/mgps/rpc/impl/m;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->h:Lcom/join/mgps/rpc/n;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->n:Ljava/util/List;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->g:Lcom/join/mgps/customview/XListView2;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->j:Landroid/widget/TextView;

    const v1, 0x7f11045d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 5
    new-instance v0, Lcom/join/mgps/adapter/p3;

    iget-object v1, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->n:Ljava/util/List;

    invoke-direct {v0, v1, p0}, Lcom/join/mgps/adapter/p3;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->m:Lcom/join/mgps/adapter/p3;

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->g:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->g:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/activity/MyVoucherGameActivity$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MyVoucherGameActivity$a;-><init>(Lcom/join/mgps/activity/MyVoucherGameActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->g:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/activity/MyVoucherGameActivity$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MyVoucherGameActivity$b;-><init>(Lcom/join/mgps/activity/MyVoucherGameActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->l:Lcom/join/mgps/dto/AccountVoucher;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountVoucher;->getGame_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-static {}, Lcom/join/mgps/listener/a;->b()Lcom/join/mgps/listener/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/listener/a;->a(Lcom/join/mgps/listener/a$a;)V

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyVoucherGameActivity;->F0()V

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

    const v0, 0x7f09089c

    return v0
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->i:I

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyVoucherGameActivity;->F0()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/join/mgps/listener/a;->b()Lcom/join/mgps/listener/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/listener/a;->d(Lcom/join/mgps/listener/a$a;)V

    return-void
.end method

.method showLodingFailed()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyVoucherGameActivity;->n:Ljava/util/List;

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

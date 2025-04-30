.class public Lcom/join/mgps/activity/HomePopupAdQWActivity;
.super Landroid/app/Activity;
.source "HomePopupAdQWActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/HomePopupAdQWActivity$d;,
        Lcom/join/mgps/activity/HomePopupAdQWActivity$c;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c02ca
.end annotation


# instance fields
.field a:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Lme/relex/circleindicator/CircleIndicator;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Lcom/join/mgps/customview/CustomCircleProgressBar;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field i:Lcom/join/mgps/dto/EverdayLogin;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field j:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field k:Lcom/join/mgps/dto/PopupAdBean;

.field l:Lcom/join/mgps/activity/HomePopupAdQWActivity$c;

.field m:Z

.field n:Z

.field private o:Landroid/os/Handler;

.field p:Lcom/join/mgps/dto/EverdayLogin;

.field q:Landroid/content/Context;

.field private r:Landroid/webkit/WebView;

.field s:Lcom/join/mgps/receiver/BootReceiver_;

.field t:Landroid/os/Handler;

.field u:Lcom/github/snowdream/android/app/downloader/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->j:Z

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->m:Z

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->n:Z

    .line 5
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->o:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->p:Lcom/join/mgps/dto/EverdayLogin;

    .line 7
    new-instance v0, Lcom/join/mgps/activity/HomePopupAdQWActivity$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/HomePopupAdQWActivity$b;-><init>(Lcom/join/mgps/activity/HomePopupAdQWActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->t:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/activity/HomePopupAdQWActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->r:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/activity/HomePopupAdQWActivity;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->r:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic c(Lcom/join/mgps/activity/HomePopupAdQWActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->o:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method d()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.account_status_change"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->r:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const-string v1, "javascript:reloadEveryDayReceive()"

    .line 2
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method e()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->q:Landroid/content/Context;

    .line 2
    :try_start_0
    new-instance v0, Lcom/join/mgps/receiver/BootReceiver_;

    invoke-direct {v0}, Lcom/join/mgps/receiver/BootReceiver_;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->s:Lcom/join/mgps/receiver/BootReceiver_;

    .line 3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const v1, 0x7fffffff

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->s:Lcom/join/mgps/receiver/BootReceiver_;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 11
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/join/mgps/dto/PopupAdBean;

    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/PopupAdBean;

    iput-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->k:Lcom/join/mgps/dto/PopupAdBean;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/PopupAdBean;->getAd_switch()Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    iput-boolean v1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->m:Z

    .line 14
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->m:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->n:Z

    if-nez v0, :cond_1

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 16
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    iget-boolean v2, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->n:Z

    if-eqz v2, :cond_2

    .line 18
    iget-object v2, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->p:Lcom/join/mgps/dto/EverdayLogin;

    if-eqz v2, :cond_2

    .line 19
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_2
    iget-boolean v2, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->m:Z

    if-eqz v2, :cond_3

    .line 21
    iget-object v2, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->k:Lcom/join/mgps/dto/PopupAdBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/PopupAdBean;->getBig_pic()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 22
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23
    :cond_3
    new-instance v2, Lcom/join/mgps/activity/HomePopupAdQWActivity$c;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/HomePopupAdQWActivity$c;-><init>(Lcom/join/mgps/activity/HomePopupAdQWActivity;)V

    iput-object v2, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->l:Lcom/join/mgps/activity/HomePopupAdQWActivity$c;

    .line 24
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v1, :cond_4

    .line 25
    iget-object v2, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->c:Lme/relex/circleindicator/CircleIndicator;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 26
    :cond_4
    iget-object v2, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->l:Lcom/join/mgps/activity/HomePopupAdQWActivity$c;

    invoke-virtual {v2, v0}, Lcom/join/mgps/activity/HomePopupAdQWActivity$c;->c(Ljava/util/List;)V

    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->b:Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;

    iget-object v2, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->l:Lcom/join/mgps/activity/HomePopupAdQWActivity$c;

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->c:Lme/relex/circleindicator/CircleIndicator;

    iget-object v2, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->b:Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;

    invoke-virtual {v0, v2}, Lme/relex/circleindicator/CircleIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 29
    iget-boolean v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->m:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_7

    .line 30
    :try_start_1
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lk0/b;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/generic/a;

    sget-object v2, Lcom/facebook/drawee/drawable/r$c;->a:Lcom/facebook/drawee/drawable/r$c;

    invoke-virtual {v0, v2}, Lcom/facebook/drawee/generic/a;->x(Lcom/facebook/drawee/drawable/r$c;)V

    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->k:Lcom/join/mgps/dto/PopupAdBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/PopupAdBean;->getMore()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->k:Lcom/join/mgps/dto/PopupAdBean;

    .line 32
    invoke-virtual {v0}, Lcom/join/mgps/dto/PopupAdBean;->getMore()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->k:Lcom/join/mgps/dto/PopupAdBean;

    .line 33
    invoke-virtual {v0}, Lcom/join/mgps/dto/PopupAdBean;->getMore()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/RecomDatabean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ModleBean;->getAd_switch()I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5

    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 36
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->k:Lcom/join/mgps/dto/PopupAdBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/PopupAdBean;->getMore()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/RecomDatabean;

    .line 37
    iget-object v1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v2, Lcom/join/mgps/activity/HomePopupAdQWActivity$a;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/HomePopupAdQWActivity$a;-><init>(Lcom/join/mgps/activity/HomePopupAdQWActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v1, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 42
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_0
    return-void
.end method

.method f(Landroid/content/Intent;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.apkinstal.action.broadcast"
        }
    .end annotation

    const-string v0, "packageName"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "actionFrom"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/HomePopupAdQWActivity;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2f

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0xe

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->e:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\u6b63\u5728\u4e0b\u8f7d"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u4e0b\u8f7d\u4e2d"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/HomePopupAdQWActivity;->m(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/HomePopupAdQWActivity;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    new-instance v6, Lcom/github/snowdream/android/app/downloader/c;

    sget-object v3, Lcom/join/mgps/Util/u;->e:Ljava/lang/String;

    const-wide/16 v4, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/github/snowdream/android/app/downloader/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iput-object v6, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->u:Lcom/github/snowdream/android/app/downloader/c;

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->t:Landroid/os/Handler;

    invoke-virtual {v6, p1}, Lcom/github/snowdream/android/app/downloader/c;->r(Landroid/os/Handler;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->u:Lcom/github/snowdream/android/app/downloader/c;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/c;->run()V

    return-void
.end method

.method public i(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "Android"

    .line 1
    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 2
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 3
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_0

    const-string v2, "Location"

    .line 6
    invoke-interface {v1, v2}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    array-length v2, v1

    if-lez v2, :cond_0

    .line 8
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/HomePopupAdQWActivity;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 11
    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 12
    :cond_0
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_1
    return-object p1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 13
    :cond_2
    throw p1
.end method

.method public j(Landroid/content/Context;Lcom/join/mgps/dto/AppBeanMain;)V
    .locals 8

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v7, Lcom/join/mgps/Util/IntentDateBean;

    .line 2
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBeanMain;->getLink_type()I

    move-result v1

    .line 3
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBeanMain;->getJump_type()I

    move-result v2

    .line 4
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBeanMain;->getLink_type_val()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBeanMain;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBeanMain;->getTpl_type()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/Util/IntentDateBean;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p2

    invoke-virtual {p2, p1, v7}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method

.method k(Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/join/mgps/Util/u;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-static {p1}, Lcom/join/mgps/Util/g0;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method l()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method m(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->s:Lcom/join/mgps/receiver/BootReceiver_;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

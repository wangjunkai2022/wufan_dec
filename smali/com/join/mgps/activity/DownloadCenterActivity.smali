.class public Lcom/join/mgps/activity/DownloadCenterActivity;
.super Lcom/BaseActivity;
.source "DownloadCenterActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c01bf
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field c:Lcom/join/mgps/dto/DownloadCenterBean;

.field d:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field e:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field m:Landroidx/viewpager/widget/ViewPager;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field n:Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private o:Lcom/join/mgps/customview/d0;

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field r:Lcom/join/mgps/adapter/p;

.field public s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field public t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field public u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field public v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field public w:Z

.field x:Lcom/join/mgps/rpc/d;

.field y:[Ljava/lang/String;

.field z:Lcom/join/mgps/Util/IntentDateBean;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    const-string v0, "DownloadCenterActivity"

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->a:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->p:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->q:Ljava/util/List;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->w:Z

    const-string v1, "\u8fdb\u884c\u4e2d"

    const-string v2, "\u9700\u66f4\u65b0"

    const-string v3, "\u4e0b\u8f7d\u8bb0\u5f55"

    .line 6
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->y:[Ljava/lang/String;

    .line 7
    iput v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->A:I

    .line 8
    iput v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->B:I

    return-void
.end method

.method private F0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->r:Lcom/join/mgps/adapter/p;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->r:Lcom/join/mgps/adapter/p;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/adapter/p;->h(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateProgressPartly()V
    .locals 10

    const-string v0, "KB"

    const-string v1, "M"

    const-wide/16 v2, 0x0

    .line 1
    :try_start_0
    iget-object v4, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->s:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v6

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v5

    .line 4
    invoke-virtual {v5, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, ""

    if-eqz v6, :cond_1

    const-wide/32 v8, 0x100000

    .line 5
    :try_start_1
    invoke-virtual {v5, v1, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {v5, v6}, Ljava/lang/Long;->signum(J)I

    :goto_1
    mul-long v5, v5, v8

    :goto_2
    add-long/2addr v2, v5

    goto :goto_0

    .line 6
    :cond_1
    :try_start_2
    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-wide/16 v8, 0x400

    .line 7
    invoke-virtual {v5, v0, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_1

    :cond_2
    const-string v6, "B"

    .line 8
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_2

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->l:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/S"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method


# virtual methods
.method E0()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    iget-object v4, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->b:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/join/mgps/Util/UtilsMy;->i0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->b:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/join/mgps/Util/UtilsMy;->h0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getVip_level()I

    move-result v0

    if-lez v0, :cond_4

    goto :goto_2

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 14
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->b:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/join/mgps/Util/UtilsMy;->h0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getVip_level()I

    move-result v0

    if-lez v0, :cond_7

    goto :goto_2

    .line 19
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 20
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 22
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method G0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->z:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method

.method H0()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->e:Landroid/widget/TextView;

    const-string v1, "\u4e0b\u8f7d\u7ba1\u7406"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->f:Landroid/widget/ImageView;

    const v1, 0x7f080aea

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->f:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    new-instance v0, Lcom/join/mgps/customview/d0;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->p:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->q:Ljava/util/List;

    invoke-direct {v0, v2, v3, v4}, Lcom/join/mgps/customview/d0;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;Ljava/util/List;)V

    iput-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->o:Lcom/join/mgps/customview/d0;

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->m:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->n:Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;

    iget-object v2, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->m:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->p:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->y:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v1, v2}, Lcom/join/mgps/fragment/g0;->a0(ILjava/lang/String;)Lcom/join/mgps/fragment/g0;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->q:Ljava/util/List;

    iget-object v2, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->y:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->p:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->y:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v2, v1}, Lcom/join/mgps/fragment/g0;->a0(ILjava/lang/String;)Lcom/join/mgps/fragment/g0;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->q:Ljava/util/List;

    iget-object v1, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->y:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->p:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->y:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {v2, v1}, Lcom/join/mgps/fragment/g0;->a0(ILjava/lang/String;)Lcom/join/mgps/fragment/g0;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->q:Ljava/util/List;

    iget-object v1, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->y:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->m:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->o:Lcom/join/mgps/customview/d0;

    iget-object v1, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->p:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->q:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/customview/d0;->d(Ljava/util/List;Ljava/util/List;)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->o:Lcom/join/mgps/customview/d0;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->n:Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;

    invoke-virtual {v0}, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->e()V

    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/activity/DownloadCenterActivity;->K0()V

    return-void
.end method

.method I0()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object v0

    invoke-virtual {v0}, Lg1/b;->d()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/db/tables/PurchasedListTable;

    .line 4
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/PurchasedListTable;->getGame_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->P()Ljava/util/List;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 7
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 8
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/DownloadCenterActivity;->J0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    .line 9
    :cond_1
    iget-object v3, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->s:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-interface {v3, v1, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lg1/f;->J(Z)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    .line 11
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 12
    iget-object v4, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->s:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-interface {v4, v1, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 13
    :cond_3
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->v()Ljava/util/List;

    move-result-object v0

    .line 14
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v3

    invoke-virtual {v3, v1}, Lg1/f;->J(Z)Ljava/util/List;

    move-result-object v3

    .line 15
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    iget-object v4, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->t:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    const/4 v4, 0x0

    .line 18
    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 19
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v5

    const/16 v6, 0xb

    if-ne v5, v6, :cond_4

    .line 20
    iget-object v5, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->t:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    .line 21
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 22
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p0, v4}, Lcom/join/mgps/activity/DownloadCenterActivity;->J0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_6

    .line 23
    :cond_6
    iget-object v4, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->t:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-interface {v4, v1, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 24
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 25
    invoke-static {}, Ln1/k;->n()Ln1/k;

    move-result-object v0

    invoke-virtual {v0}, Ln1/k;->o()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/db/tables/DownloadHistoryTable;

    .line 27
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v4

    invoke-virtual {v3}, Lcom/join/mgps/db/tables/DownloadHistoryTable;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 28
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_9

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v4

    const/16 v5, 0x2a

    if-ne v4, v5, :cond_8

    .line 29
    :cond_9
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/DownloadCenterActivity;->J0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_7

    .line 30
    :cond_a
    iget-object v4, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->u:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 31
    :cond_b
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->w()Ljava/util/List;

    move-result-object v0

    .line 32
    iget-object v3, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->v:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    if-eqz v0, :cond_d

    const/4 v3, 0x0

    .line 33
    :goto_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_d

    .line 34
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p0, v4}, Lcom/join/mgps/activity/DownloadCenterActivity;->J0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_9

    .line 35
    :cond_c
    iget-object v4, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->v:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-interface {v4, v1, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 36
    :cond_d
    invoke-virtual {p0}, Lcom/join/mgps/activity/DownloadCenterActivity;->M0()V

    .line 37
    invoke-virtual {p0}, Lcom/join/mgps/activity/DownloadCenterActivity;->E0()V

    .line 38
    iput-boolean v2, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->w:Z

    return-void
.end method

.method J0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    move-result v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->l0(ILjava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public K0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/DownloadCenterActivity;->L0()V

    return-void
.end method

.method L0()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->s:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->t:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/DownloadCenterActivity;->O0()V

    .line 6
    iget-object v2, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->v:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 8
    :goto_1
    iget-object v3, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->u:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 9
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v1, v3

    :cond_3
    const/4 v3, 0x2

    if-lez v1, :cond_4

    .line 10
    iget-object v4, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->y:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u4e0b\u8f7d\u8bb0\u5f55("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    goto :goto_2

    .line 11
    :cond_4
    iget-object v4, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->y:[Ljava/lang/String;

    const-string v5, "\u4e0b\u8f7d\u8bb0\u5f55"

    aput-object v5, v4, v3

    .line 12
    :goto_2
    iget-object v3, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->o:Lcom/join/mgps/customview/d0;

    iget-object v4, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->y:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/join/mgps/customview/d0;->e(Ljava/util/List;)V

    .line 13
    iget-object v3, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->n:Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;

    invoke-virtual {v3, v0, v2, v1}, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->setBadgeSize(III)V

    return-void
.end method

.method M0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->r:Lcom/join/mgps/adapter/p;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/DownloadCenterActivity;->K0()V

    return-void
.end method

.method N0(Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 2
    .param p1    # Lcom/join/mgps/dto/CollectionBeanSub;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
            value = "gameData"
        .end annotation
    .end param
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.paygamefinish",
            "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/e0;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/PurchasedListTable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/db/tables/PurchasedListTable;

    invoke-direct {v0}, Lcom/join/mgps/db/tables/PurchasedListTable;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/PurchasedListTable;->setGame_id(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/DownloadCenterActivity;->I0()V

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/DownloadCenterActivity;->M0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method O0()V
    .locals 5

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->w()Ljava/util/List;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/DownloadCenterActivity;->J0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v3, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->v:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-interface {v3, v1, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public P0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/DownloadCenterActivity;->E0()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/DownloadCenterActivity;->updateHistory()V

    return-void
.end method

.method Q0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/activity/DownloadSettingActivity_;->Z0(Landroid/content/Context;)Lcom/join/mgps/activity/DownloadSettingActivity_$s;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method R0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->d:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->FirstShowMYgameTopTip()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    return-void
.end method

.method S0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lg1/f;->e0(Ljava/lang/String;Z)V

    return-void
.end method

.method T0(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method afterViews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->h:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->x:Lcom/join/mgps/rpc/d;

    .line 4
    iput-object p0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->b:Landroid/content/Context;

    .line 5
    new-instance v0, Lcom/join/mgps/adapter/p;

    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/p;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->r:Lcom/join/mgps/adapter/p;

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/adapter/p;->f()Lcom/join/mgps/dto/DownloadCenterBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->c:Lcom/join/mgps/dto/DownloadCenterBean;

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadFiles()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->s:Ljava/util/List;

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->c:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadCenterBean;->getStayInstalledDownloadTasks()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->t:Ljava/util/List;

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->c:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadCenterBean;->getHistoryDownloadFiles()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->u:Ljava/util/List;

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->c:Lcom/join/mgps/dto/DownloadCenterBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadUpdateFiles()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->v:Ljava/util/List;

    .line 11
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->z:Lcom/join/mgps/Util/IntentDateBean;

    const/4 v1, 0x4

    .line 12
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->z:Lcom/join/mgps/Util/IntentDateBean;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/rpc/g;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/member/vip_view/welcome?go=vip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/activity/DownloadCenterActivity;->H0()V

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/DownloadCenterActivity;->getData()V

    .line 16
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->d(Ljava/lang/Object;)V

    const-string v0, "enterdc4.2.0.6"

    .line 17
    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

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

.method getData()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, ""

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v0, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getSimulatorRequest(Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->x:Lcom/join/mgps/rpc/d;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/d;->y1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/RecomDatabean;

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AppBeanMain;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBeanMain;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->z:Lcom/join/mgps/Util/IntentDateBean;

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ModleBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/DownloadCenterActivity;->T0(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->e(Ljava/lang/Object;)V

    .line 2
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/l;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/DownloadCenterActivity;->E0()V

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_7

    const/4 v2, 0x3

    if-eq p1, v2, :cond_6

    const/4 v1, 0x5

    if-eq p1, v1, :cond_5

    const/4 v3, 0x6

    if-eq p1, v3, :cond_4

    const/4 v3, 0x7

    if-eq p1, v3, :cond_3

    const/16 v2, 0x8

    if-eq p1, v2, :cond_2

    const/16 v4, 0x1b

    if-eq p1, v4, :cond_1

    const/16 v4, 0x30

    if-eq p1, v4, :cond_5

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x9

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/DownloadCenterActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 5
    :pswitch_1
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/DownloadCenterActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :pswitch_2
    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/DownloadCenterActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0xa

    .line 7
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/DownloadCenterActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    .line 8
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/DownloadCenterActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {v0, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 10
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/DownloadCenterActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/DownloadCenterActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 12
    :cond_5
    :pswitch_3
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/DownloadCenterActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 13
    :cond_6
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/DownloadCenterActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :cond_7
    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/DownloadCenterActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->d:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->isNewFinishedGame()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/DownloadCenterActivity;->I0()V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/DownloadCenterActivity;->updateAndroidApp()V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/DownloadCenterActivity;->M0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    add-int/2addr p3, p2

    add-int/lit8 p3, p3, -0x1

    .line 1
    iput p3, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->B:I

    .line 2
    iput p2, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->A:I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method setNetwork()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->b:Landroid/content/Context;

    const-class v2, Lcom/join/mgps/activity/MGMainActivity_;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x20000000

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "MainPos"

    const/4 v3, 0x3

    .line 7
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 9
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    .line 10
    sput-boolean v0, Lcom/MApplication;->p:Z

    return-void
.end method

.method updateAndroidApp()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->v()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 3
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v2

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->ALL:Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;

    invoke-virtual {v2, p0, v3, v4}, Lcom/join/android/app/common/utils/APKUtils;->d(Landroid/content/Context;Ljava/lang/String;Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v2

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3, v4}, Lcom/join/android/app/common/utils/APKUtils;->l(Landroid/content/Context;Ljava/lang/String;Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v2

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x5

    .line 6
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->g2(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method updateHistory()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    invoke-static {}, Ln1/k;->n()Ln1/k;

    move-result-object v0

    invoke-virtual {v0}, Ln1/k;->o()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/db/tables/DownloadHistoryTable;

    .line 4
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/db/tables/DownloadHistoryTable;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    const/16 v3, 0x2a

    if-ne v2, v3, :cond_0

    .line 6
    :cond_1
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/DownloadCenterActivity;->J0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->u:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/DownloadCenterActivity;->K0()V

    return-void
.end method

.method updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 9

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/DownloadCenterActivity;->updateProgressPartly()V

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->s:Ljava/util/List;

    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->D3(Ljava/util/List;)V

    const/4 v2, 0x7

    const/16 v3, 0xa

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v1, v4, :cond_20

    if-eq v1, v3, :cond_20

    if-nez v1, :cond_2

    goto/16 :goto_7

    :cond_2
    const/4 p2, 0x3

    if-eq v1, p2, :cond_18

    const/4 p2, 0x6

    if-ne v1, p2, :cond_3

    goto/16 :goto_4

    :cond_3
    const/16 p2, 0xc

    if-eq v1, p2, :cond_15

    const/16 p2, 0xd

    if-ne v1, p2, :cond_4

    goto/16 :goto_3

    :cond_4
    const/16 p2, 0xb

    if-ne v1, p2, :cond_7

    .line 4
    iget-object p2, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->s:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 5
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 6
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 7
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    move-result p1

    if-ne p1, v4, :cond_6

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/DownloadCenterActivity;->onResume()V

    return-void

    .line 9
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/activity/DownloadCenterActivity;->M0()V

    return-void

    :cond_7
    if-ne v1, v2, :cond_a

    const-string p2, "\u6536\u5230\u5220\u9664\u6d88\u606f"

    .line 10
    invoke-static {p2}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->s:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 12
    :cond_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 13
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 14
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 15
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    const-string p1, "\u79fb\u9664\u6570\u636e"

    .line 16
    invoke-static {p1}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    .line 17
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u5f00\u59cb\u5237\u65b0\u6570\u636e downloadTasks\u3002size="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->s:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/activity/DownloadCenterActivity;->M0()V

    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/activity/DownloadCenterActivity;->E0()V

    return-void

    :cond_a
    const/4 p2, 0x5

    if-ne v1, p2, :cond_11

    .line 20
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 21
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 23
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 24
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v2, p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 27
    :cond_c
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 28
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 30
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 31
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v2, p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_1

    :cond_e
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_10

    .line 33
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_f

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object p2

    sget-object v1, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    goto :goto_2

    .line 34
    :cond_f
    iget-object p2, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->u:Ljava/util/List;

    invoke-interface {p2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 35
    :cond_10
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/DownloadCenterActivity;->M0()V

    .line 36
    invoke-virtual {p0}, Lcom/join/mgps/activity/DownloadCenterActivity;->E0()V

    .line 37
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/DownloadCenterActivity;->F0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void

    .line 38
    :cond_11
    iget-object p2, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->r:Lcom/join/mgps/adapter/p;

    invoke-virtual {p2}, Lcom/join/mgps/adapter/p;->f()Lcom/join/mgps/dto/DownloadCenterBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/DownloadCenterBean;->getDownloadFiles()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_12
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez p1, :cond_13

    return-void

    .line 39
    :cond_13
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 40
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 41
    invoke-virtual {p0}, Lcom/join/mgps/activity/DownloadCenterActivity;->M0()V

    .line 42
    :cond_14
    invoke-virtual {p0}, Lcom/join/mgps/activity/DownloadCenterActivity;->E0()V

    return-void

    .line 43
    :cond_15
    :goto_3
    iget-object p2, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->s:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_16
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 44
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 45
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 46
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 47
    :cond_17
    invoke-virtual {p0}, Lcom/join/mgps/activity/DownloadCenterActivity;->M0()V

    return-void

    .line 48
    :cond_18
    :goto_4
    iget-object p2, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->s:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_19
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 49
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 50
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPath(Ljava/lang/String;)V

    .line 51
    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 52
    invoke-virtual {v2, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    const/4 p2, 0x1

    goto :goto_5

    :cond_1a
    const/4 p2, 0x0

    :goto_5
    if-nez p2, :cond_1f

    .line 53
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p2

    if-nez p2, :cond_1b

    return-void

    .line 54
    :cond_1b
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 55
    iget-object p1, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->s:Ljava/util/List;

    invoke-interface {p1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_6

    .line 56
    :cond_1c
    iget-object p1, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->s:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1d

    .line 57
    iget-object p1, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->s:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 58
    :cond_1d
    iget-object p1, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->s:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 59
    iget-object p1, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->s:Ljava/util/List;

    invoke-interface {p1, v5, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_6

    .line 60
    :cond_1e
    iget-object p1, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->s:Ljava/util/List;

    invoke-interface {p1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 61
    :cond_1f
    :goto_6
    invoke-virtual {p0}, Lcom/join/mgps/activity/DownloadCenterActivity;->M0()V

    return-void

    .line 62
    :cond_20
    :goto_7
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 63
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 64
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPath(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v6, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    if-ne p2, v2, :cond_22

    .line 66
    invoke-virtual {v6, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    :cond_22
    const/4 v1, 0x1

    goto :goto_8

    :cond_23
    const/4 v1, 0x0

    :goto_8
    if-nez v1, :cond_29

    .line 67
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    if-nez v1, :cond_24

    return-void

    .line 68
    :cond_24
    invoke-virtual {v1, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    if-ne p2, v2, :cond_25

    .line 69
    invoke-virtual {v1, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 70
    :cond_25
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 71
    iget-object p1, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->s:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_9

    .line 72
    :cond_26
    iget-object p1, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->s:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_27

    .line 73
    iget-object p1, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->s:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 74
    :cond_27
    iget-object p1, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->s:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 75
    iget-object p1, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->s:Ljava/util/List;

    invoke-interface {p1, v5, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_9

    .line 76
    :cond_28
    iget-object p1, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->s:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 77
    :goto_9
    invoke-virtual {p0}, Lcom/join/mgps/activity/DownloadCenterActivity;->M0()V

    .line 78
    invoke-virtual {p0}, Lcom/join/mgps/activity/DownloadCenterActivity;->E0()V

    return-void

    .line 79
    :cond_29
    invoke-virtual {p0}, Lcom/join/mgps/activity/DownloadCenterActivity;->M0()V

    return-void
.end method

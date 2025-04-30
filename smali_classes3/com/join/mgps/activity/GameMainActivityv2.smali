.class public Lcom/join/mgps/activity/GameMainActivityv2;
.super Landroid/app/Activity;
.source "GameMainActivityv2.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0040
.end annotation


# instance fields
.field A:Lcom/join/mgps/dto/GameMainDataBean;

.field private B:Ljava/lang/String;

.field private C:Z

.field a:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field m:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field n:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field o:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field p:Lcom/join/mgps/customview/ViewPagerWithADs;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field q:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field r:Landroid/widget/ViewFlipper;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field s:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field t:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field u:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field v:Lcom/join/mgps/rpc/d;

.field w:Lcom/join/mgps/dto/AccountBean;

.field private x:Landroidx/appcompat/widget/Toolbar;

.field y:Landroid/content/Context;

.field private z:Lcom/github/snowdream/android/app/downloader/DownloadTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->B:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->C:Z

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/activity/GameMainActivityv2;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->z:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-object p0
.end method

.method private j()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    const v0, 0x7f09104b

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/a1;->d(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :cond_0
    return-void
.end method

.method private p()V
    .locals 2

    const v0, 0x7f0900cf

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    .line 2
    new-instance v1, Lcom/join/mgps/activity/GameMainActivityv2$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameMainActivityv2$a;-><init>(Lcom/join/mgps/activity/GameMainActivityv2;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    return-void
.end method

.method private q()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->z:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFight_fun()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    const/16 v3, 0x31

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v1, v4, :cond_1

    .line 4
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v3, v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v6, 0x2

    if-lt v1, v6, :cond_9

    .line 8
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v3, v1, :cond_8

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->A:Lcom/join/mgps/dto/GameMainDataBean;

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainDataBean;->getNet_battle()Lcom/join/mgps/dto/GameMainNetBattle;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 12
    iget-object v7, p0, Lcom/join/mgps/activity/GameMainActivityv2;->s:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<font color = \'#F47500\'>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainNetBattle;->getNumber()I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u4e2a\u623f\u95f4</font>\u6b63\u5728\u5bf9\u6218,\u8fdb\u5165\"<font color = \'#F47500\'>\u7ea6\u6218</font>\",\"<font color = \'#F47500\'>\u5927\u5385\u5bf9\u6218</font>\""

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    sget-object v8, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v7, v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 13
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->w:Lcom/join/mgps/dto/AccountBean;

    const v7, 0x7f080c4c

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getAccount_type()I

    move-result v1

    if-ne v1, v6, :cond_3

    .line 14
    iput-boolean v5, p0, Lcom/join/mgps/activity/GameMainActivityv2;->C:Z

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_1

    .line 17
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->A:Lcom/join/mgps/dto/GameMainDataBean;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainDataBean;->getNet_battle()Lcom/join/mgps/dto/GameMainNetBattle;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->A:Lcom/join/mgps/dto/GameMainDataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainDataBean;->getNet_battle()Lcom/join/mgps/dto/GameMainNetBattle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainNetBattle;->getSilence_room_switch()I

    move-result v1

    if-nez v1, :cond_4

    .line 18
    iput-boolean v5, p0, Lcom/join/mgps/activity/GameMainActivityv2;->C:Z

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 20
    :cond_4
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->A:Lcom/join/mgps/dto/GameMainDataBean;

    const v6, 0x7f080c4f

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainDataBean;->getNet_battle()Lcom/join/mgps/dto/GameMainNetBattle;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->A:Lcom/join/mgps/dto/GameMainDataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainDataBean;->getNet_battle()Lcom/join/mgps/dto/GameMainNetBattle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainNetBattle;->getSilence_room_switch()I

    move-result v1

    if-ne v1, v4, :cond_5

    .line 21
    iput-boolean v4, p0, Lcom/join/mgps/activity/GameMainActivityv2;->C:Z

    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 23
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v8, 0x7

    if-lt v1, v8, :cond_7

    const/4 v1, 0x6

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v3, v0, :cond_6

    .line 25
    iput-boolean v4, p0, Lcom/join/mgps/activity/GameMainActivityv2;->C:Z

    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 27
    :cond_6
    iput-boolean v5, p0, Lcom/join/mgps/activity/GameMainActivityv2;->C:Z

    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 29
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 30
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_9
    :goto_1
    return-void
.end method


# virtual methods
.method b()V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivityv2;->j()V

    .line 2
    iput-object p0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->y:Landroid/content/Context;

    const v0, 0x7f09029c

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->y:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivityv2;->y:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070057

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivityv2;->y:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x5

    invoke-virtual {v0, v2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setScrimVisibleHeightTrigger(I)V

    const-wide/16 v1, 0xc8

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setScrimAnimationDuration(J)V

    .line 7
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivityv2;->p()V

    .line 8
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->v:Lcom/join/mgps/rpc/d;

    .line 9
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->z:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->y:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->w:Lcom/join/mgps/dto/AccountBean;

    .line 11
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivityv2;->q()V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->z:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v0, :cond_0

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->h:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v2, 0x7f080168

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->z:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->z:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getScore()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->z:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_count()I

    move-result v2

    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->z:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->z:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v4

    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->z:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/join/mgps/activity/GameMainActivityv2;->j:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/join/mgps/activity/GameMainActivityv2;->y:Landroid/content/Context;

    invoke-static/range {v1 .. v7}, Lcom/join/mgps/Util/UtilsMy;->C(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->s:Landroid/widget/TextView;

    const-string v1, "\u8fdb\u5165\"<font color = \'#F47500\'>\u7ea6\u6218</font>\",\"<font color = \'#F47500\'>\u5927\u5385\u5bf9\u6218</font>\""

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivityv2;->f()V

    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivityv2;->e()V

    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/WifiUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/WifiUtils;->isWifiEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->u:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isWifiConnectedBefore()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto :goto_0

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->u:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isWifiConnectedBefore()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method c()V
    .locals 14
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->A:Lcom/join/mgps/dto/GameMainDataBean;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainDataBean;->getNet_battle()Lcom/join/mgps/dto/GameMainNetBattle;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainNetBattle;->getSilence_room_switch()I

    move-result v3

    if-nez v3, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->z:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivityv2;->y:Landroid/content/Context;

    invoke-static {v1, v0, v3, v2}, Lcom/join/mgps/Util/UtilsMy;->h(Lcom/join/mgps/db/tables/EMUApkTable;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;I)V

    goto/16 :goto_2

    .line 5
    :cond_0
    iget-object v4, p0, Lcom/join/mgps/activity/GameMainActivityv2;->z:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFight_fun()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-static {v4}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, 0x7

    if-lt v5, v7, :cond_1

    const/4 v5, 0x6

    .line 7
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-ne v5, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 8
    :goto_0
    iget-object v5, p0, Lcom/join/mgps/activity/GameMainActivityv2;->A:Lcom/join/mgps/dto/GameMainDataBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GameMainDataBean;->getGame_info()Lcom/join/mgps/dto/GameMaingameinfo;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 9
    iget-object v5, p0, Lcom/join/mgps/activity/GameMainActivityv2;->A:Lcom/join/mgps/dto/GameMainDataBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GameMainDataBean;->getGame_info()Lcom/join/mgps/dto/GameMaingameinfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/GameMaingameinfo;->getMax_battle_count()I

    move-result v5

    move v13, v5

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    :goto_1
    if-ne v3, v6, :cond_3

    .line 10
    iget-object v7, p0, Lcom/join/mgps/activity/GameMainActivityv2;->z:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v8, p0, Lcom/join/mgps/activity/GameMainActivityv2;->y:Landroid/content/Context;

    const/4 v9, 0x1

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainNetBattle;->getIp()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainNetBattle;->getPort()I

    move-result v11

    iget-object v12, p0, Lcom/join/mgps/activity/GameMainActivityv2;->B:Ljava/lang/String;

    invoke-static/range {v7 .. v13}, Lcom/join/mgps/Util/UtilsMy;->j(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;I)V

    goto :goto_2

    :cond_3
    const/4 v5, 0x2

    if-ne v3, v5, :cond_4

    if-eqz v4, :cond_4

    .line 11
    iget-object v7, p0, Lcom/join/mgps/activity/GameMainActivityv2;->z:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v8, p0, Lcom/join/mgps/activity/GameMainActivityv2;->y:Landroid/content/Context;

    const/4 v9, 0x1

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainNetBattle;->getIp()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainNetBattle;->getPort()I

    move-result v11

    iget-object v12, p0, Lcom/join/mgps/activity/GameMainActivityv2;->B:Ljava/lang/String;

    invoke-static/range {v7 .. v13}, Lcom/join/mgps/Util/UtilsMy;->j(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;I)V

    goto :goto_2

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->z:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivityv2;->y:Landroid/content/Context;

    invoke-static {v1, v0, v3, v2}, Lcom/join/mgps/Util/UtilsMy;->h(Lcom/join/mgps/db/tables/EMUApkTable;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;I)V

    goto :goto_2

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->z:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivityv2;->y:Landroid/content/Context;

    invoke-static {v1, v0, v3, v2}, Lcom/join/mgps/Util/UtilsMy;->h(Lcom/join/mgps/db/tables/EMUApkTable;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;I)V

    :goto_2
    return-void
.end method

.method d()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->y:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivityv2;->z:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_area_val()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v0, v1, v3}, Lcom/join/mgps/Util/IntentUtil;->goForumFid(Landroid/content/Context;I)V

    return-void
.end method

.method e()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->t:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivityv2;->w:Lcom/join/mgps/dto/AccountBean;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getGameMainData(Ljava/lang/String;I)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->v:Lcom/join/mgps/rpc/d;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/d;->a1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GameMainDataBean;

    .line 8
    invoke-static {}, Ln1/u;->n()Ln1/u;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivityv2;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ln1/u;->o(Ljava/lang/String;)Lcom/join/mgps/db/tables/GameMainTable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainDataBean;->getAchieve()Lcom/join/mgps/dto/GameMainachieve;

    move-result-object v2

    .line 10
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v3

    invoke-virtual {v1}, Lcom/join/mgps/db/tables/GameMainTable;->getGame_main_data()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/join/mgps/dto/GameMainDataBean;

    invoke-virtual {v3, v4, v5}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/GameMainDataBean;

    if-eqz v3, :cond_1

    .line 11
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameMainDataBean;->getAchieve()Lcom/join/mgps/dto/GameMainachieve;

    move-result-object v3

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 12
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameMainachieve;->getLastShowVerTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/join/mgps/dto/GameMainachieve;->setLastShowVerTime(J)V

    .line 13
    :cond_1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 14
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivityv2;->t:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/join/mgps/db/tables/GameMainTable;->setGameid(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1, v2}, Lcom/join/mgps/db/tables/GameMainTable;->setGame_main_data(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Ln1/u;->n()Ln1/u;

    move-result-object v2

    invoke-virtual {v2, v1}, Lg1/b;->update(Ljava/lang/Object;)I

    goto :goto_1

    .line 17
    :cond_2
    new-instance v1, Lcom/join/mgps/db/tables/GameMainTable;

    invoke-direct {v1}, Lcom/join/mgps/db/tables/GameMainTable;-><init>()V

    .line 18
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 19
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivityv2;->t:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/join/mgps/db/tables/GameMainTable;->setGameid(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v1, v2}, Lcom/join/mgps/db/tables/GameMainTable;->setGame_main_data(Ljava/lang/String;)V

    .line 21
    invoke-static {}, Ln1/u;->n()Ln1/u;

    move-result-object v2

    invoke-virtual {v2, v1}, Lg1/b;->k(Ljava/lang/Object;)I

    .line 22
    :goto_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameMainActivityv2;->r(Lcom/join/mgps/dto/GameMainDataBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method f()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {}, Ln1/u;->n()Ln1/u;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ln1/u;->o(Ljava/lang/String;)Lcom/join/mgps/db/tables/GameMainTable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/GameMainTable;->getGame_main_data()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    const-class v2, Lcom/join/mgps/dto/GameMainDataBean;

    invoke-virtual {v1, v0, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GameMainDataBean;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameMainActivityv2;->r(Lcom/join/mgps/dto/GameMainDataBean;)V

    :cond_0
    return-void
.end method

.method g()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method h()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->C:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->C:Z

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->c:Landroid/widget/ImageView;

    const v2, 0x7f080c4c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->A:Lcom/join/mgps/dto/GameMainDataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainDataBean;->getNet_battle()Lcom/join/mgps/dto/GameMainNetBattle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->A:Lcom/join/mgps/dto/GameMainDataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainDataBean;->getNet_battle()Lcom/join/mgps/dto/GameMainNetBattle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/GameMainNetBattle;->setSilence_room_switch(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->A:Lcom/join/mgps/dto/GameMainDataBean;

    new-instance v2, Lcom/join/mgps/dto/GameMainNetBattle;

    invoke-direct {v2}, Lcom/join/mgps/dto/GameMainNetBattle;-><init>()V

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/GameMainDataBean;->setNet_battle(Lcom/join/mgps/dto/GameMainNetBattle;)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->A:Lcom/join/mgps/dto/GameMainDataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainDataBean;->getNet_battle()Lcom/join/mgps/dto/GameMainNetBattle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/GameMainNetBattle;->setSilence_room_switch(I)V

    .line 8
    :goto_0
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameMainActivityv2;->o(I)V

    goto :goto_2

    :cond_1
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->C:Z

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->c:Landroid/widget/ImageView;

    const v2, 0x7f080c4f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->A:Lcom/join/mgps/dto/GameMainDataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainDataBean;->getNet_battle()Lcom/join/mgps/dto/GameMainNetBattle;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->A:Lcom/join/mgps/dto/GameMainDataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainDataBean;->getNet_battle()Lcom/join/mgps/dto/GameMainNetBattle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/GameMainNetBattle;->setSilence_room_switch(I)V

    goto :goto_1

    .line 13
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->A:Lcom/join/mgps/dto/GameMainDataBean;

    new-instance v2, Lcom/join/mgps/dto/GameMainNetBattle;

    invoke-direct {v2}, Lcom/join/mgps/dto/GameMainNetBattle;-><init>()V

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/GameMainDataBean;->setNet_battle(Lcom/join/mgps/dto/GameMainNetBattle;)V

    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->A:Lcom/join/mgps/dto/GameMainDataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainDataBean;->getNet_battle()Lcom/join/mgps/dto/GameMainNetBattle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/GameMainNetBattle;->setSilence_room_switch(I)V

    .line 15
    :goto_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameMainActivityv2;->o(I)V

    :goto_2
    return-void
.end method

.method i()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/GameInfoBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/GameInfoBean;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/GameInfoBean;->setGame_id(Ljava/lang/String;)V

    return-void
.end method

.method k()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goLoginBattle(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->A:Lcom/join/mgps/dto/GameMainDataBean;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainDataBean;->getAchieve()Lcom/join/mgps/dto/GameMainachieve;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivityv2;->y:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainachieve;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainachieve;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/dto/GameMainachieve;->setLastShowVerTime(J)V

    .line 6
    invoke-static {}, Ln1/u;->n()Ln1/u;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ln1/u;->o(Ljava/lang/String;)Lcom/join/mgps/db/tables/GameMainTable;

    move-result-object v0

    .line 7
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivityv2;->A:Lcom/join/mgps/dto/GameMainDataBean;

    invoke-virtual {v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivityv2;->t:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/join/mgps/db/tables/GameMainTable;->setGameid(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/GameMainTable;->setGame_main_data(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Ln1/u;->n()Ln1/u;

    move-result-object v1

    invoke-virtual {v1, v0}, Lg1/b;->update(Ljava/lang/Object;)I

    :cond_0
    return-void
.end method

.method l()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->A:Lcom/join/mgps/dto/GameMainDataBean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainDataBean;->getGame_info()Lcom/join/mgps/dto/GameMaingameinfo;

    :cond_0
    return-void
.end method

.method m()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->y:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivityv2;->z:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivityv2;->z:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGame_info_tpl_type()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/join/mgps/activity/GameMainActivityv2;->z:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tpl_two_position()I

    move-result v4

    iget-object v5, p0, Lcom/join/mgps/activity/GameMainActivityv2;->z:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from_type()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method n()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    return-void
.end method

.method o(I)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->y:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->t:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivityv2;->w:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/join/mgps/Util/RequestBeanUtil;->getSilenceSwitch(Ljava/lang/String;II)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->v:Lcom/join/mgps/rpc/d;

    invoke-interface {v0, p1}, Lcom/join/mgps/rpc/d;->u(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object p1

    const-string v0, "ssss"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 4
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->w:Lcom/join/mgps/dto/AccountBean;

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getAccount_type()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->c:Landroid/widget/ImageView;

    const v1, 0x7f080c4c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->c:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method r(Lcom/join/mgps/dto/GameMainDataBean;)V
    .locals 10
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->A:Lcom/join/mgps/dto/GameMainDataBean;

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainDataBean;->getGame_info()Lcom/join/mgps/dto/GameMaingameinfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v2, 0x7f080168

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMaingameinfo;->getGame_surface_head_image()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivityv2;->z:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMaingameinfo;->getScore()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMaingameinfo;->getDown_count()I

    move-result v4

    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->z:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->z:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v6

    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->z:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/join/mgps/activity/GameMainActivityv2;->j:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/join/mgps/activity/GameMainActivityv2;->y:Landroid/content/Context;

    invoke-static/range {v3 .. v9}, Lcom/join/mgps/Util/UtilsMy;->C(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainDataBean;->getAchieve()Lcom/join/mgps/dto/GameMainachieve;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainachieve;->getLastShowVerTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainachieve;->getLastShowVerTime()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainachieve;->getTime()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->i:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainachieve;->getPic_addr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 9
    :cond_2
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivityv2;->q()V

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainDataBean;->getLocal_battle()Ljava/util/List;

    move-result-object v4

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz v4, :cond_3

    .line 11
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 12
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivityv2;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 13
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivityv2;->p:Lcom/join/mgps/customview/ViewPagerWithADs;

    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivityv2;->y:Landroid/content/Context;

    const/16 v5, 0xb

    const/16 v6, 0x20

    const/16 v7, 0xfa0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/join/mgps/customview/ViewPagerWithADs;->setAll(Landroid/content/Context;Ljava/util/List;IIII)V

    goto :goto_0

    .line 14
    :cond_3
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivityv2;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 15
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainDataBean;->getAd_position()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 16
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->r:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->removeAllViews()V

    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->r:Landroid/widget/ViewFlipper;

    iget-object v4, p0, Lcom/join/mgps/activity/GameMainActivityv2;->y:Landroid/content/Context;

    const v5, 0x7f010059

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 19
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->r:Landroid/widget/ViewFlipper;

    iget-object v4, p0, Lcom/join/mgps/activity/GameMainActivityv2;->y:Landroid/content/Context;

    const v5, 0x7f01005e

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 20
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->r:Landroid/widget/ViewFlipper;

    const/16 v4, 0x1388

    invoke-virtual {v1, v4}, Landroid/widget/ViewFlipper;->setFlipInterval(I)V

    .line 21
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/BannerBean;

    .line 22
    iget-object v4, p0, Lcom/join/mgps/activity/GameMainActivityv2;->y:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0c02ab

    invoke-virtual {v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0904df

    .line 23
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const v6, 0x7f090687

    .line 24
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/facebook/drawee/view/SimpleDraweeView;

    const v7, 0x7f0904e0

    .line 25
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0807b1

    .line 26
    invoke-virtual {v2}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v8, v9}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 27
    invoke-virtual {v2}, Lcom/join/mgps/dto/BannerBean;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    new-instance v6, Lcom/join/mgps/activity/GameMainActivityv2$b;

    invoke-direct {v6, p0, v2}, Lcom/join/mgps/activity/GameMainActivityv2$b;-><init>(Lcom/join/mgps/activity/GameMainActivityv2;Lcom/join/mgps/dto/BannerBean;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivityv2;->r:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v4}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 30
    :cond_4
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->r:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->startFlipping()V

    .line 31
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->r:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    goto :goto_2

    .line 32
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->r:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 33
    :goto_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainDataBean;->getPost_id()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 34
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 35
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GameMainPostBean;

    .line 36
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->y:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c024c

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090920

    .line 37
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v4, 0x7f0910f4

    .line 38
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 39
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainPostBean;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    new-instance v4, Lcom/join/mgps/activity/GameMainActivityv2$c;

    invoke-direct {v4, p0, v0}, Lcom/join/mgps/activity/GameMainActivityv2$c;-><init>(Lcom/join/mgps/activity/GameMainActivityv2;Lcom/join/mgps/dto/GameMainPostBean;)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    :cond_6
    return-void
.end method

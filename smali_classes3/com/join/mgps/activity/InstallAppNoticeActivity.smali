.class public Lcom/join/mgps/activity/InstallAppNoticeActivity;
.super Lcom/BaseActivity;
.source "InstallAppNoticeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/InstallAppNoticeActivity$b;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c02dc
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

.field d:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field f:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field g:Lcom/join/mgps/dto/BootPageData;

.field h:Lcom/join/mgps/activity/InstallAppNoticeActivity$b;

.field i:Lcom/github/snowdream/android/app/downloader/DownloadTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic E0(Lcom/join/mgps/activity/InstallAppNoticeActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/InstallAppNoticeActivity;->G0()V

    return-void
.end method

.method private G0()V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/join/mgps/activity/InstallAppNoticeActivity;->i:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/join/android/app/common/utils/APKUtils;->u(Landroid/app/Activity;Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public F0(Landroid/content/Context;Lcom/join/mgps/dto/AppBeanMain;)V
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

.method afterViews()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/InstallAppNoticeActivity;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/join/mgps/dto/BootPageData;

    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/BootPageData;

    iput-object v0, p0, Lcom/join/mgps/activity/InstallAppNoticeActivity;->g:Lcom/join/mgps/dto/BootPageData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3
    :goto_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/InstallAppNoticeActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/InstallAppNoticeActivity;->i:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/InstallAppNoticeActivity;->g:Lcom/join/mgps/dto/BootPageData;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/BootPageData;->getGame_setup_boot()Lcom/join/mgps/dto/BootPageItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/InstallAppNoticeActivity;->g:Lcom/join/mgps/dto/BootPageData;

    invoke-virtual {v0}, Lcom/join/mgps/dto/BootPageData;->getGame_setup_boot()Lcom/join/mgps/dto/BootPageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/BootPageItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/InstallAppNoticeActivity;->g:Lcom/join/mgps/dto/BootPageData;

    invoke-virtual {v0}, Lcom/join/mgps/dto/BootPageData;->getGame_setup_boot()Lcom/join/mgps/dto/BootPageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/BootPageItem;->getPic()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/InstallAppNoticeActivity;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/activity/InstallAppNoticeActivity;->g:Lcom/join/mgps/dto/BootPageData;

    invoke-virtual {v2}, Lcom/join/mgps/dto/BootPageData;->getGame_setup_boot()Lcom/join/mgps/dto/BootPageItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/BootPageItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u4e0b\u8f7d\u5b8c\u6210\uff0c\u8bf7\u6309\u4e0b\u56fe\u64cd\u4f5c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/InstallAppNoticeActivity;->g:Lcom/join/mgps/dto/BootPageData;

    invoke-virtual {v1}, Lcom/join/mgps/dto/BootPageData;->getGame_setup_boot()Lcom/join/mgps/dto/BootPageItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/BootPageItem;->getPic()[Ljava/lang/String;

    move-result-object v1

    .line 10
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 11
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 12
    :cond_2
    new-instance v1, Lcom/join/mgps/activity/InstallAppNoticeActivity$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/InstallAppNoticeActivity$b;-><init>(Lcom/join/mgps/activity/InstallAppNoticeActivity;)V

    iput-object v1, p0, Lcom/join/mgps/activity/InstallAppNoticeActivity;->h:Lcom/join/mgps/activity/InstallAppNoticeActivity$b;

    .line 13
    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/InstallAppNoticeActivity$b;->c(Ljava/util/List;)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/InstallAppNoticeActivity;->b:Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;

    iget-object v1, p0, Lcom/join/mgps/activity/InstallAppNoticeActivity;->h:Lcom/join/mgps/activity/InstallAppNoticeActivity$b;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/InstallAppNoticeActivity;->c:Lme/relex/circleindicator/CircleIndicator;

    iget-object v1, p0, Lcom/join/mgps/activity/InstallAppNoticeActivity;->b:Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;

    invoke-virtual {v0, v1}, Lme/relex/circleindicator/CircleIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 16
    :try_start_1
    iget-object v0, p0, Lcom/join/mgps/activity/InstallAppNoticeActivity;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v1, Lcom/join/mgps/activity/InstallAppNoticeActivity$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/InstallAppNoticeActivity$a;-><init>(Lcom/join/mgps/activity/InstallAppNoticeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method isHomePopupAdLocalCached(Ljava/lang/String;)Z
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

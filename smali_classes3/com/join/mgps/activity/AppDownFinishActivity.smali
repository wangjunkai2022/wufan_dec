.class public Lcom/join/mgps/activity/AppDownFinishActivity;
.super Lcom/BaseAppCompatActivity;
.source "AppDownFinishActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/AppDownFinishActivity$d;,
        Lcom/join/mgps/activity/AppDownFinishActivity$e;,
        Lcom/join/mgps/activity/AppDownFinishActivity$c;,
        Lcom/join/mgps/activity/AppDownFinishActivity$b;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c008a
.end annotation


# instance fields
.field protected a:I

.field protected b:I

.field private c:Lcom/join/mgps/activity/AppDownFinishActivity$e;

.field private d:Landroidx/viewpager/widget/ViewPager;

.field private e:Lme/relex/circleindicator/CircleIndicator;

.field f:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field h:Lcom/join/mgps/activity/AppDownFinishActivity$b;

.field private i:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->g:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/join/mgps/activity/AppDownFinishActivity$a;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/activity/AppDownFinishActivity$a;-><init>(Lcom/join/mgps/activity/AppDownFinishActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->i:Landroid/database/ContentObserver;

    return-void
.end method

.method private registerNavigationBarObserver()V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const-string v2, "navigationbar_is_min"

    const/16 v3, 0x15

    if-ge v0, v3, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->i:Landroid/database/ContentObserver;

    .line 4
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 6
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->i:Landroid/database/ContentObserver;

    .line 7
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method


# virtual methods
.method afterview()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    const v0, 0x7f091280

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->d:Landroidx/viewpager/widget/ViewPager;

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x10100ae

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [I

    const v5, 0x10100ba

    aput v5, v3, v4

    const v5, 0x10100bb

    aput v5, v3, v1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->a:I

    .line 7
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->b:I

    .line 8
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->g:Ljava/util/List;

    iget-object v1, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v0, Lcom/join/mgps/activity/AppDownFinishActivity$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/AppDownFinishActivity$e;-><init>(Lcom/join/mgps/activity/AppDownFinishActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->c:Lcom/join/mgps/activity/AppDownFinishActivity$e;

    .line 13
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 14
    new-instance v1, Lcom/join/mgps/activity/AppDownFinishActivity$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/join/mgps/activity/AppDownFinishActivity$d;-><init>(Lcom/join/mgps/activity/AppDownFinishActivity;Lcom/join/mgps/activity/AppDownFinishActivity$a;)V

    .line 15
    iput-object v0, v1, Lcom/join/mgps/activity/AppDownFinishActivity$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->c:Lcom/join/mgps/activity/AppDownFinishActivity$e;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/AppDownFinishActivity$e;->b(Lcom/join/mgps/activity/AppDownFinishActivity$d;)V

    const v0, 0x7f09075b

    .line 17
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lme/relex/circleindicator/CircleIndicator;

    iput-object v0, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->e:Lme/relex/circleindicator/CircleIndicator;

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->d:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->c:Lcom/join/mgps/activity/AppDownFinishActivity$e;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->e:Lme/relex/circleindicator/CircleIndicator;

    iget-object v1, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->d:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Lme/relex/circleindicator/CircleIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->d:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    return-void
.end method

.method public finish()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 2
    :try_start_0
    iget v0, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->a:I

    iget v1, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->b:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->h:Lcom/join/mgps/activity/AppDownFinishActivity$b;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->i:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "gameId"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->f:Ljava/lang/String;

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->g:Ljava/util/List;

    iget-object v0, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->f:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->g:Ljava/util/List;

    iget-object v0, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->f:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    .line 8
    new-instance v0, Lcom/join/mgps/activity/AppDownFinishActivity$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/activity/AppDownFinishActivity$d;-><init>(Lcom/join/mgps/activity/AppDownFinishActivity;Lcom/join/mgps/activity/AppDownFinishActivity$a;)V

    .line 9
    iput-object p1, v0, Lcom/join/mgps/activity/AppDownFinishActivity$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->c:Lcom/join/mgps/activity/AppDownFinishActivity$e;

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/AppDownFinishActivity$e;->b(Lcom/join/mgps/activity/AppDownFinishActivity$d;)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->c:Lcom/join/mgps/activity/AppDownFinishActivity$e;

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->e:Lme/relex/circleindicator/CircleIndicator;

    iget-object v0, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->d:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0}, Lme/relex/circleindicator/CircleIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 13
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/AppDownFinishActivity;->registerContentResolver()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method registerContentResolver()V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/activity/AppDownFinishActivity$b;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/activity/AppDownFinishActivity$b;-><init>(Lcom/join/mgps/activity/AppDownFinishActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->h:Lcom/join/mgps/activity/AppDownFinishActivity$b;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigationbar_hide_bar_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->h:Lcom/join/mgps/activity/AppDownFinishActivity$b;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/AppDownFinishActivity;->registerNavigationBarObserver()V

    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(I)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v0, -0x1

    .line 4
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const p1, 0xffffff

    const/4 v0, 0x1

    .line 6
    invoke-static {p0, p1, v0}, Lcom/join/mgps/Util/z1;->o(Landroid/app/Activity;IZ)V

    return-void
.end method

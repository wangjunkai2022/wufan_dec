.class public Lcom/join/mgps/activity/PapaPlugGuideActivity;
.super Lcom/BaseActivity;
.source "PapaPlugGuideActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0508
.end annotation


# instance fields
.field a:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field f:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field g:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/PapaPlugGuideActivity;->f:I

    const/4 v0, 0x5

    .line 3
    iput v0, p0, Lcom/join/mgps/activity/PapaPlugGuideActivity;->h:I

    return-void
.end method

.method private F0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/join/android/app/common/utils/APKUtils;->u(Landroid/app/Activity;Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method E0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/PapaPlugGuideActivity;->f:I

    if-nez v0, :cond_3

    .line 2
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "vivo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.vivo.abe"

    const-string v3, "com.vivo.applicationbehaviorengine.ui.ExcessivePowerManagerActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gionee"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    const-string v1, "com.gionee.softmanager"

    invoke-virtual {v0, p0, v1}, Lcom/join/android/app/common/utils/APKUtils;->M(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 12
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_3

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/PapaPlugGuideActivity;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/PapaPlugGuideActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 15
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/PapaPlugGuideActivity;->F0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_2

    .line 16
    :cond_4
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->v()Ljava/util/List;

    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 18
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/PapaPlugGuideActivity;->F0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_1

    .line 19
    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_3
    return-void
.end method

.method G0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x3e8L
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/PapaPlugGuideActivity;->h:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/join/mgps/activity/PapaPlugGuideActivity;->h:I

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/PapaPlugGuideActivity;->b:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6211\u77e5\u9053\u4e86<font color = \'#ffffff\'>("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/join/mgps/activity/PapaPlugGuideActivity;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "S)</font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 3
    iget v0, p0, Lcom/join/mgps/activity/PapaPlugGuideActivity;->h:I

    if-gtz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/PapaPlugGuideActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/PapaPlugGuideActivity;->b:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/PapaPlugGuideActivity;->b:Landroid/widget/TextView;

    const-string v1, "\u6211\u77e5\u9053\u4e86"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaPlugGuideActivity;->G0()V

    :goto_0
    return-void
.end method

.method afterview()V
    .locals 10
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaPlugGuideActivity;->b:Landroid/widget/TextView;

    const-string v1, "\u6211\u77e5\u9053\u4e86<font color = \'#ffffff\'>(5S)</font>"

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/PapaPlugGuideActivity;->e:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->insatllAppFirstData()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 3
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    const-class v2, Lcom/join/mgps/dto/BootPageData;

    invoke-virtual {v1, v0, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/BootPageData;

    .line 4
    iget v1, p0, Lcom/join/mgps/activity/PapaPlugGuideActivity;->f:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/PapaPlugGuideActivity;->c:Landroid/widget/TextView;

    const-string v4, "\u4e3a\u4e86\u609f\u996d\u6e38\u620f\u7a33\u5b9a\u8fd0\u884c\uff0c\u8bf7\u6309\u56fe\u793a\u4fee\u6539\u8bbe\u7f6e"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_8

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/BootPageData;->getPerformance_boot()Lcom/join/mgps/dto/BootPageItem;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/BootPageData;->getPerformance_boot()Lcom/join/mgps/dto/BootPageItem;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/BootPageItem;->getPic()[Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/BootPageItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 11
    iget-object v4, p0, Lcom/join/mgps/activity/PapaPlugGuideActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz v1, :cond_8

    .line 12
    array-length v0, v1

    if-lez v0, :cond_8

    .line 13
    aget-object v0, v1, v3

    .line 14
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 15
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/e;

    move-result-object v1

    .line 16
    invoke-virtual {v1, v0}, Lcom/facebook/drawee/backends/pipeline/e;->c0(Landroid/net/Uri;)Lcom/facebook/drawee/backends/pipeline/e;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/PapaPlugGuideActivity;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 17
    invoke-virtual {v1}, Lcom/facebook/drawee/view/DraweeView;->getController()Lk0/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->O(Lk0/a;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/backends/pipeline/e;

    .line 18
    invoke-virtual {v0, v2}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->E(Z)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/backends/pipeline/e;

    .line 19
    invoke-virtual {v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->d()Lcom/facebook/drawee/controller/a;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/backends/pipeline/d;

    .line 20
    iget-object v1, p0, Lcom/join/mgps/activity/PapaPlugGuideActivity;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v1, v0}, Lcom/facebook/drawee/view/DraweeView;->setController(Lk0/a;)V

    goto/16 :goto_2

    :cond_1
    const/4 v1, 0x0

    .line 21
    iget-object v4, p0, Lcom/join/mgps/activity/PapaPlugGuideActivity;->g:Ljava/lang/String;

    invoke-static {v4}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "\u300b\u5f85\u5b89\u88c5"

    const-string v6, "\u300a"

    if-eqz v4, :cond_2

    .line 22
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    iget-object v4, p0, Lcom/join/mgps/activity/PapaPlugGuideActivity;->g:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    .line 23
    iget-object v4, p0, Lcom/join/mgps/activity/PapaPlugGuideActivity;->c:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\u300b\u5f85\u5b89\u88c5\n\u8bf7\u6309\u4e0b\u56fe\u64cd\u4f5c"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 24
    :cond_2
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v4

    invoke-virtual {v4}, Lg1/f;->v()Ljava/util/List;

    move-result-object v4

    .line 25
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 26
    iget-object v4, p0, Lcom/join/mgps/activity/PapaPlugGuideActivity;->c:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v4, p0, Lcom/join/mgps/activity/PapaPlugGuideActivity;->d:Landroid/widget/TextView;

    const-string v7, "\u8bf7\u6309\u4e0b\u56fe\u64cd\u4f5c"

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    if-eqz v0, :cond_6

    .line 28
    invoke-virtual {v0}, Lcom/join/mgps/dto/BootPageData;->getGame_setup_boot()Lcom/join/mgps/dto/BootPageItem;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/dto/BootPageData;->getGame_setup_boot()Lcom/join/mgps/dto/BootPageItem;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 30
    invoke-virtual {v0}, Lcom/join/mgps/dto/BootPageItem;->getPic()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 31
    array-length v7, v4

    if-lez v7, :cond_6

    .line 32
    aget-object v4, v4, v3

    .line 33
    invoke-virtual {v0}, Lcom/join/mgps/dto/BootPageItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 35
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "-"

    .line 36
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 37
    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 38
    :cond_4
    iget-object v8, p0, Lcom/join/mgps/activity/PapaPlugGuideActivity;->c:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v5, p0, Lcom/join/mgps/activity/PapaPlugGuideActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    :cond_5
    :try_start_0
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 41
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/e;

    move-result-object v4

    .line 42
    invoke-virtual {v4, v0}, Lcom/facebook/drawee/backends/pipeline/e;->c0(Landroid/net/Uri;)Lcom/facebook/drawee/backends/pipeline/e;

    move-result-object v0

    iget-object v4, p0, Lcom/join/mgps/activity/PapaPlugGuideActivity;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 43
    invoke-virtual {v4}, Lcom/facebook/drawee/view/DraweeView;->getController()Lk0/a;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->O(Lk0/a;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/backends/pipeline/e;

    .line 44
    invoke-virtual {v0, v2}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->E(Z)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/backends/pipeline/e;

    .line 45
    invoke-virtual {v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->d()Lcom/facebook/drawee/controller/a;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/backends/pipeline/d;

    .line 46
    iget-object v2, p0, Lcom/join/mgps/activity/PapaPlugGuideActivity;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v2, v0}, Lcom/facebook/drawee/view/DraweeView;->setController(Lk0/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_1
    if-eqz v1, :cond_8

    .line 48
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_8

    .line 49
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/16 v2, 0xb

    if-ne v0, v2, :cond_8

    new-array v0, v3, [Ljava/lang/String;

    .line 50
    invoke-static {p0, v1, v3, v0}, Lcom/join/android/app/common/utils/h;->r(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 51
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/join/android/app/common/servcie/a;->q(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 52
    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 53
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaPlugGuideActivity;->G0()V

    return-void
.end method

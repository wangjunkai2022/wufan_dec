.class public Lcom/join/mgps/activity/MGSettingActivity;
.super Lcom/BaseFragmentActivity;
.source "MGSettingActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0582
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field c:Lcom/join/mgps/rpc/b;

.field d:Lcom/join/mgps/rpc/d;

.field e:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/widget/ImageView;
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

.field l:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field private m:Lcom/join/mgps/dto/AccountBean;

.field private n:Lcom/join/mgps/dialog/f;

.field private o:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseFragmentActivity;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MGSettingActivity;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method D0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MGSettingActivity;->d:Lcom/join/mgps/rpc/d;

    .line 2
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->b0()Lcom/join/mgps/rpc/b;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MGSettingActivity;->c:Lcom/join/mgps/rpc/b;

    .line 3
    iput-object p0, p0, Lcom/join/mgps/activity/MGSettingActivity;->a:Landroid/content/Context;

    const-string v0, "wufun"

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/MGSettingActivity;->k:Landroid/widget/TextView;

    const-string v1, "\u5173\u4e8e\u609f\u996d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGSettingActivity;->J0()V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/MGSettingActivity;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/MGSettingActivity;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/r;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method E0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGSettingActivity;->F0()V

    return-void
.end method

.method public F0()V
    .locals 12
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "_"

    .line 1
    iget-object v1, p0, Lcom/join/mgps/activity/MGSettingActivity;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "\u7f51\u7edc\u4f3c\u4e4e\u4e0d\u901a\u54e6~"

    if-eqz v1, :cond_3

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Lcom/join/mgps/Util/RequestBeanUtil;->getApkVersion(III)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v1

    .line 3
    iget-object v3, p0, Lcom/join/mgps/activity/MGSettingActivity;->d:Lcom/join/mgps/rpc/d;

    invoke-interface {v3, v1}, Lcom/join/mgps/rpc/d;->r1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/APKVersionMainBean;

    .line 6
    invoke-virtual {v3}, Lcom/join/mgps/dto/APKVersionMainBean;->getApp()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/ApkVersionbean;

    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/join/android/app/common/utils/j;->A()[Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {v3}, Lcom/join/mgps/dto/ApkVersionbean;->getVer()Ljava/lang/String;

    move-result-object v6

    .line 11
    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v5

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 12
    invoke-virtual {v3}, Lcom/join/mgps/dto/ApkVersionbean;->getVer_compatible()Ljava/lang/String;

    move-result-object v8

    .line 13
    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v5

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 14
    aget-object v9, v1, v5

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "\u65e0\u9700\u66f4\u65b0,\u5df2\u662f\u6700\u65b0\u7248\u672c"

    if-gt v9, v7, :cond_2

    .line 15
    :try_start_1
    new-instance v9, Lcom/join/mgps/dto/VersionDto;

    invoke-direct {v9}, Lcom/join/mgps/dto/VersionDto;-><init>()V

    .line 16
    invoke-virtual {v3}, Lcom/join/mgps/dto/ApkVersionbean;->getDown_url()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/join/mgps/dto/VersionDto;->setAndroidUrl(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v5

    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v9, v0}, Lcom/join/mgps/dto/VersionDto;->setVersionNo(F)V

    .line 19
    invoke-virtual {v3}, Lcom/join/mgps/dto/ApkVersionbean;->getVer_info()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/join/mgps/dto/VersionDto;->setInfo(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v3}, Lcom/join/mgps/dto/ApkVersionbean;->getHead_pic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/join/mgps/dto/VersionDto;->setHead_pic(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v3}, Lcom/join/mgps/dto/ApkVersionbean;->getTow_tpl_back_ground_pic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/join/mgps/dto/VersionDto;->setTow_tpl_back_ground_pic(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v3}, Lcom/join/mgps/dto/ApkVersionbean;->getTpl_type()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/join/mgps/dto/VersionDto;->setTpl_type(I)V

    .line 23
    aget-object v0, v1, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ge v0, v7, :cond_1

    .line 24
    aget-object v0, v1, v5

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    int-to-float v1, v8

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 25
    invoke-virtual {p0, v9, v4}, Lcom/join/mgps/activity/MGSettingActivity;->showVersionDownLoadHint(Lcom/join/mgps/dto/VersionDto;Z)V

    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0, v9, v5}, Lcom/join/mgps/activity/MGSettingActivity;->showVersionDownLoadHint(Lcom/join/mgps/dto/VersionDto;Z)V

    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {p0, v10}, Lcom/join/mgps/activity/MGSettingActivity;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :cond_2
    invoke-virtual {p0, v10}, Lcom/join/mgps/activity/MGSettingActivity;->error(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 29
    :catch_0
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/MGSettingActivity;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 30
    :cond_3
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/MGSettingActivity;->error(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method G0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGSettingActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/activity/MGPapaAboutActivity_;->N0(Landroid/content/Context;)Lcom/join/mgps/activity/MGPapaAboutActivity_$j;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method H0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x4

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    const-string v1, "wufun"

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/rpc/g;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/static/wf_mianze.html"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    const-string v1, "\u514d\u8d23\u58f0\u660e"

    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    .line 6
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/MGSettingActivity;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method

.method I0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGSettingActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/r;->i(Landroid/content/Context;)V

    return-void
.end method

.method J0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGSettingActivity;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/MGSettingActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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

.method error(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGSettingActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGSettingActivity;->n:Lcom/join/mgps/dialog/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/MGSettingActivity;->n:Lcom/join/mgps/dialog/f;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public showVersionDownLoadHint(Lcom/join/mgps/dto/VersionDto;Z)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const-string v0, "VersionXML"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "Mandatory"

    .line 3
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "VersionDto"

    .line 5
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 6
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/MGSettingActivity;->n:Lcom/join/mgps/dialog/f;

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Lcom/join/mgps/dialog/f;

    const v1, 0x7f12014a

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/join/mgps/dialog/f;-><init>(Landroid/content/Context;ILcom/join/mgps/dto/VersionDto;Z)V

    iput-object v0, p0, Lcom/join/mgps/activity/MGSettingActivity;->n:Lcom/join/mgps/dialog/f;

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/MGSettingActivity;->n:Lcom/join/mgps/dialog/f;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/MGSettingActivity;->n:Lcom/join/mgps/dialog/f;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

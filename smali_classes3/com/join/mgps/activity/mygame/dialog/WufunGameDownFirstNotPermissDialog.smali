.class public Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog;
.super Lcom/BaseActivity;
.source "WufunGameDownFirstNotPermissDialog.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c05fa
.end annotation


# instance fields
.field from:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field gameName:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field handler:Landroid/os/Handler;

.field img:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field isbackground:Z

.field prefDef:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog;->from:I

    .line 3
    new-instance v0, Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog$1;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog$1;-><init>(Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog;)V

    iput-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog;->isbackground:Z

    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog;->show10Permiss()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog;->hasgetpermiss()V

    return-void
.end method

.method private hasgetpermiss()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.download.permiss.get"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private show10Permiss()Z
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-le v0, v2, :cond_3

    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->needShowPermissdialog()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/pref/h;->g()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    new-instance v2, Ljava/io/File;

    const-string v3, "test_canwhite.txt"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    return v1

    .line 10
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    return v1

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    return v1
.end method


# virtual methods
.method afterview()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog;->from:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog;->gameName:Landroid/widget/TextView;

    const-string v1, "\u5982\u9700\u6062\u590d\u6e38\u620f\uff0c\u8bf7\u5141\u8bb8\u5b58\u50a8\u6743\u9650\u3002"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method close()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method mainxxx()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onPause()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog;->isbackground:Z

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog;->isbackground:Z

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog;->show10Permiss()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->needShowPermissdialog()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    invoke-direct {p0}, Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog;->hasgetpermiss()V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method settingInfo()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    const-string v1, "7543990"

    invoke-virtual {v0, p0, v1}, Lcom/join/mgps/Util/IntentUtil;->goFormDetial(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method startButn()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

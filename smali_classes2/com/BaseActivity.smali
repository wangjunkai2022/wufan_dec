.class public Lcom/BaseActivity;
.super Lcom/BaseFragmentActivity;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/BaseActivity$c;
    }
.end annotation


# instance fields
.field broadcasExt:Lcom/BaseActivity$c;

.field private databaseHelper:Lcom/join/android/app/common/db/DatabaseHelper;

.field fullScreenCfg:I

.field private fullScreenFlag:Z

.field private hideHandler:Landroid/os/Handler;

.field private hideRunnable:Ljava/lang/Runnable;

.field private lastClickTime:J

.field private loading:Lcom/join/android/app/common/dialog/e;

.field private mHandler:Landroid/os/Handler;

.field protected mTintManager:Lcom/join/android/app/common/manager/b;

.field protected uiHider:Lcom/join/mgps/wrapper/SystemUiHider/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/BaseFragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/BaseActivity;->databaseHelper:Lcom/join/android/app/common/db/DatabaseHelper;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/BaseActivity;->lastClickTime:J

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/BaseActivity;->fullScreenFlag:Z

    .line 5
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/BaseActivity;->mHandler:Landroid/os/Handler;

    .line 6
    iput v0, p0, Lcom/BaseActivity;->fullScreenCfg:I

    return-void
.end method

.method public static synthetic D0(Lcom/BaseActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/BaseActivity;->lambda$onResume$0()V

    return-void
.end method

.method private clearHiderListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/BaseActivity;->uiHider:Lcom/join/mgps/wrapper/SystemUiHider/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/wrapper/SystemUiHider/a;->d(Lcom/join/mgps/wrapper/SystemUiHider/a$b;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/BaseActivity;->hideHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/BaseActivity;->hideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onResume$0()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/o;->e(Landroid/content/Context;)V

    return-void
.end method

.method private setTranslucentStatus(Z)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 3
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x4000000

    or-int/2addr p1, v2

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 4
    :cond_0
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x4000001

    and-int/2addr p1, v2

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 5
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private updateHider()V
    .locals 2

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/BaseActivity;->fullScreenFlag:Z

    if-eqz v0, :cond_2

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Lcom/join/mgps/wrapper/a;->b:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 3
    :goto_0
    iput v0, p0, Lcom/BaseActivity;->fullScreenCfg:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/BaseActivity;->fullScreenCfg:I

    .line 5
    :goto_1
    iget v0, p0, Lcom/BaseActivity;->fullScreenCfg:I

    if-eqz v0, :cond_3

    .line 6
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/BaseActivity;->hideHandler:Landroid/os/Handler;

    .line 7
    new-instance v0, Lcom/BaseActivity$a;

    invoke-direct {v0, p0}, Lcom/BaseActivity$a;-><init>(Lcom/BaseActivity;)V

    iput-object v0, p0, Lcom/BaseActivity;->hideRunnable:Ljava/lang/Runnable;

    const v0, 0x1020002

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/BaseActivity;->fullScreenCfg:I

    invoke-static {p0, v0, v1}, Lcom/join/mgps/wrapper/SystemUiHider/a;->a(Landroid/app/Activity;Landroid/view/View;I)Lcom/join/mgps/wrapper/SystemUiHider/a;

    move-result-object v0

    iput-object v0, p0, Lcom/BaseActivity;->uiHider:Lcom/join/mgps/wrapper/SystemUiHider/a;

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/wrapper/SystemUiHider/a;->e()V

    .line 10
    iget-object v0, p0, Lcom/BaseActivity;->uiHider:Lcom/join/mgps/wrapper/SystemUiHider/a;

    new-instance v1, Lcom/BaseActivity$b;

    invoke-direct {v1, p0}, Lcom/BaseActivity$b;-><init>(Lcom/BaseActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/wrapper/SystemUiHider/a;->d(Lcom/join/mgps/wrapper/SystemUiHider/a$b;)V

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/BaseActivity;->uiHider:Lcom/join/mgps/wrapper/SystemUiHider/a;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/join/mgps/wrapper/SystemUiHider/a;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    iget-object v0, p0, Lcom/BaseActivity;->uiHider:Lcom/join/mgps/wrapper/SystemUiHider/a;

    invoke-virtual {v0}, Lcom/join/mgps/wrapper/SystemUiHider/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public createDB(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lg1/e;->d(Landroid/content/Context;)Lg1/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg1/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public dismissLoading()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/BaseActivity;->loading:Lcom/join/android/app/common/dialog/e;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getHelper()Lcom/join/android/app/common/db/DatabaseHelper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/BaseActivity;->databaseHelper:Lcom/join/android/app/common/db/DatabaseHelper;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lg1/e;->d(Landroid/content/Context;)Lg1/e;

    move-result-object v0

    invoke-virtual {v0}, Lg1/e;->c()Lcom/join/android/app/common/db/DatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/BaseActivity;->databaseHelper:Lcom/join/android/app/common/db/DatabaseHelper;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/BaseActivity;->databaseHelper:Lcom/join/android/app/common/db/DatabaseHelper;

    return-object v0
.end method

.method protected hideUiDelayed()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/BaseActivity;->hideHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/BaseActivity;->hideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget v0, p0, Lcom/BaseActivity;->fullScreenCfg:I

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/BaseActivity;->hideHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/BaseActivity;->hideRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Lcom/BaseActivity$c;

    invoke-direct {p1, p0}, Lcom/BaseActivity$c;-><init>(Lcom/BaseActivity;)V

    iput-object p1, p0, Lcom/BaseActivity;->broadcasExt:Lcom/BaseActivity$c;

    .line 3
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    invoke-static {p0}, Lorg/androidannotations/api/c;->m(Landroid/content/Context;)Lorg/androidannotations/api/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/c;->h(Landroid/app/Activity;)V

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.appfinish"

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/BaseActivity;->broadcasExt:Lcom/BaseActivity$c;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/BaseActivity;->broadcasExt:Lcom/BaseActivity$c;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3
    invoke-static {p0}, Lorg/androidannotations/api/c;->m(Landroid/content/Context;)Lorg/androidannotations/api/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/c;->o(Landroid/app/Activity;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onPause()V

    .line 2
    invoke-direct {p0}, Lcom/BaseActivity;->clearHiderListener()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onResume()V

    .line 2
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v0, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->firstShowUserPermiss()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/p0;->a(Landroid/content/Context;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/BaseActivity;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/BaseActivity;->mHandler:Landroid/os/Handler;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/BaseActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/a;

    invoke-direct {v1, p0}, Lcom/a;-><init>(Lcom/BaseActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6
    invoke-static {p0}, Lorg/androidannotations/api/c;->m(Landroid/content/Context;)Lorg/androidannotations/api/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/c;->r(Landroid/app/Activity;)V

    .line 7
    invoke-direct {p0}, Lcom/BaseActivity;->updateHider()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/BaseActivity;->dismissLoading()V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/BaseActivity;->uiHider:Lcom/join/mgps/wrapper/SystemUiHider/a;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iget-boolean v1, p0, Lcom/BaseActivity;->fullScreenFlag:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/wrapper/SystemUiHider/a;->b()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/wrapper/SystemUiHider/a;->f()V

    .line 5
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setSystemUiHide(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/BaseActivity;->fullScreenFlag:Z

    .line 2
    invoke-direct {p0}, Lcom/BaseActivity;->updateHider()V

    .line 3
    iget-object p1, p0, Lcom/BaseActivity;->uiHider:Lcom/join/mgps/wrapper/SystemUiHider/a;

    if-eqz p1, :cond_1

    .line 4
    iget-boolean v0, p0, Lcom/BaseActivity;->fullScreenFlag:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/wrapper/SystemUiHider/a;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/BaseActivity;->uiHider:Lcom/join/mgps/wrapper/SystemUiHider/a;

    invoke-virtual {p1}, Lcom/join/mgps/wrapper/SystemUiHider/a;->b()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/wrapper/SystemUiHider/a;->f()V

    :cond_1
    :goto_0
    return-void
.end method

.method public showLoading()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/BaseActivity;->loading:Lcom/join/android/app/common/dialog/e;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/android/app/common/dialog/e;

    invoke-direct {v0, p0}, Lcom/join/android/app/common/dialog/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/BaseActivity;->loading:Lcom/join/android/app/common/dialog/e;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/BaseActivity;->loading:Lcom/join/android/app/common/dialog/e;

    invoke-virtual {v0}, Lcom/join/android/app/common/dialog/e;->show()V

    return-void
.end method

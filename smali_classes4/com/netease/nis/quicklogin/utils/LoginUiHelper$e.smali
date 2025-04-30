.class Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;
.super Ljava/lang/Object;
.source "LoginUiHelper.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;


# direct methods
.method constructor <init>(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    const-string v0, "onActivityCreated"

    invoke-static {p2, p1, v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;Landroid/app/Activity;Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object p2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {p2, p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->i(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {p2}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {p2}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityLifecycleCallbacks()Lcom/netease/nis/quicklogin/listener/ActivityLifecycleCallbacks;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {p2}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityLifecycleCallbacks()Lcom/netease/nis/quicklogin/listener/ActivityLifecycleCallbacks;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/netease/nis/quicklogin/listener/ActivityLifecycleCallbacks;->onCreate(Landroid/app/Activity;)V

    .line 4
    :cond_0
    instance-of p2, p1, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    if-eqz p2, :cond_1

    .line 5
    move-object p2, p1

    check-cast p2, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->a(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;)V

    .line 6
    :cond_1
    instance-of p2, p1, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    if-eqz p2, :cond_2

    .line 7
    check-cast p1, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    iget-object p2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {p2}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->a(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0, p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->i(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;Z)Z

    .line 3
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityLifecycleCallbacks()Lcom/netease/nis/quicklogin/listener/ActivityLifecycleCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityLifecycleCallbacks()Lcom/netease/nis/quicklogin/listener/ActivityLifecycleCallbacks;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/nis/quicklogin/listener/ActivityLifecycleCallbacks;->onDestroy(Landroid/app/Activity;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->e(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/a;->a(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->e(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->f(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/a;->a(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->f(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->g(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/a;->a(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->g(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->d(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/view/PlayerView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 12
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->d(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/view/PlayerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->suspend()V

    .line 13
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->d(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/view/PlayerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 14
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->d(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/view/PlayerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 15
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->d(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/view/PlayerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 16
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0, v1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;Lcom/netease/nis/quicklogin/view/PlayerView;)Lcom/netease/nis/quicklogin/view/PlayerView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    const-string v1, "onActivityDestroyed"

    invoke-static {v0, p1, v1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    const-string v1, "onActivityPaused"

    invoke-static {v0, p1, v1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;Landroid/app/Activity;Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0, p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->i(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityLifecycleCallbacks()Lcom/netease/nis/quicklogin/listener/ActivityLifecycleCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityLifecycleCallbacks()Lcom/netease/nis/quicklogin/listener/ActivityLifecycleCallbacks;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/nis/quicklogin/listener/ActivityLifecycleCallbacks;->onPause(Landroid/app/Activity;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->d(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/view/PlayerView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->d(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/view/PlayerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->d(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/view/PlayerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/VideoView;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    const-string v1, "onActivityResumed"

    invoke-static {v0, p1, v1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;Landroid/app/Activity;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onePass [timeEnd]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->l(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0, p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->i(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 6
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0, p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->i(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 7
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityLifecycleCallbacks()Lcom/netease/nis/quicklogin/listener/ActivityLifecycleCallbacks;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityLifecycleCallbacks()Lcom/netease/nis/quicklogin/listener/ActivityLifecycleCallbacks;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/nis/quicklogin/listener/ActivityLifecycleCallbacks;->onResume(Landroid/app/Activity;)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->l(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 10
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isDialogMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->b(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getDialogWidth()I

    move-result v2

    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getDialogHeight()I

    move-result v3

    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getDialogX()I

    move-result v4

    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getDialogY()I

    move-result v5

    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isBottomDialog()Z

    move-result v6

    invoke-static/range {v1 .. v6}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/app/Activity;IIIIZ)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0, p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;Landroid/app/Activity;)V

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0, p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->b(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0, p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;Landroid/app/Activity;)V

    .line 15
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0, p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->d(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;Landroid/app/Activity;)V

    .line 16
    instance-of v0, p1, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    if-eqz v0, :cond_4

    .line 17
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0, p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->e(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;Landroid/app/Activity;)V

    .line 18
    :cond_4
    instance-of v0, p1, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    if-eqz v0, :cond_5

    .line 19
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0, p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->f(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;Landroid/app/Activity;)V

    .line 20
    move-object v0, p1

    check-cast v0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginListener()Lcom/netease/nis/quicklogin/listener/LoginListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->a(Lcom/netease/nis/quicklogin/listener/LoginListener;)V

    .line 21
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    move-object v1, p1

    check-cast v1, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    iget-boolean v1, v1, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->m:Z

    invoke-static {v0, p1, v1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;Landroid/app/Activity;Z)V

    .line 22
    :cond_5
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getBackgroundShadow()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 23
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->b(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v2}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getBackgroundShadow()Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;Landroid/app/Activity;Landroid/view/View;)V

    .line 24
    :cond_6
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->b(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->g(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;Landroid/app/Activity;)V

    .line 25
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;Z)Z

    .line 26
    :cond_7
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->d(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/view/PlayerView;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 27
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->d(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/view/PlayerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 28
    :cond_8
    instance-of v0, p1, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;

    if-eqz v0, :cond_b

    .line 29
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isProtocolDialogMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 30
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getDialogWidth()I

    move-result v2

    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getDialogHeight()I

    move-result v3

    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getDialogX()I

    move-result v4

    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getDialogY()I

    move-result v5

    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isBottomDialog()Z

    move-result v6

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/app/Activity;IIIIZ)V

    .line 31
    :cond_9
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocolBackgroundImage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 32
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_ll_root_detail:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->i(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/utils/h;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v2}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocolBackgroundImage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/nis/quicklogin/utils/h;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 34
    :cond_a
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0, p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->d(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;Landroid/app/Activity;)V

    .line 35
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0, p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->h(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    :goto_1
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    const-string v1, "onActivityStarted"

    invoke-static {v0, p1, v1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;Landroid/app/Activity;Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0, p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->i(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityLifecycleCallbacks()Lcom/netease/nis/quicklogin/listener/ActivityLifecycleCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityLifecycleCallbacks()Lcom/netease/nis/quicklogin/listener/ActivityLifecycleCallbacks;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/nis/quicklogin/listener/ActivityLifecycleCallbacks;->onStart(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    const-string v1, "onActivityStopped"

    invoke-static {v0, p1, v1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;Landroid/app/Activity;Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0, p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->i(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityLifecycleCallbacks()Lcom/netease/nis/quicklogin/listener/ActivityLifecycleCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$e;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityLifecycleCallbacks()Lcom/netease/nis/quicklogin/listener/ActivityLifecycleCallbacks;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/nis/quicklogin/listener/ActivityLifecycleCallbacks;->onStop(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

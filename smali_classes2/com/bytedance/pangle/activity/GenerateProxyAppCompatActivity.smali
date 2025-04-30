.class public abstract Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/pangle/activity/b;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field public mPlugin:Lcom/bytedance/pangle/plugin/Plugin;

.field public mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/bytedance/pangle/activity/c;->a(Lcom/bytedance/pangle/activity/b;Landroid/content/Context;)V

    return-void
.end method

.method public closeContextMenu()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->closeContextMenu()V

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->closeContextMenu()V

    return-void
.end method

.method public closeOptionsMenu()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->closeOptionsMenu()V

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->closeOptionsMenu()V

    return-void
.end method

.method public createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroidx/core/app/ComponentActivity;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public enterPictureInPictureMode()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->enterPictureInPictureMode()V

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->enterPictureInPictureMode()V

    return-void
.end method

.method public enterPictureInPictureMode(Landroid/app/PictureInPictureParams;)Z
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->enterPictureInPictureMode(Landroid/app/PictureInPictureParams;)Z

    move-result p1

    return p1

    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->enterPictureInPictureMode(Landroid/app/PictureInPictureParams;)Z

    move-result p1

    return p1
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public finish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->finish()V

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public finishActivity(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->finishActivity(I)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->finishActivity(I)V

    return-void
.end method

.method public finishActivityFromChild(Landroid/app/Activity;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->finishActivityFromChild(Landroid/app/Activity;I)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->finishActivityFromChild(Landroid/app/Activity;I)V

    return-void
.end method

.method public finishAffinity()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->finishAffinity()V

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finishAffinity()V

    return-void
.end method

.method public finishAfterTransition()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->finishAfterTransition()V

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finishAfterTransition()V

    return-void
.end method

.method public finishAndRemoveTask()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->finishAndRemoveTask()V

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method

.method public finishFromChild(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->finishFromChild(Landroid/app/Activity;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->finishFromChild(Landroid/app/Activity;)V

    return-void
.end method

.method public getActionBar()Landroid/app/ActionBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public getCallingActivity()Landroid/content/ComponentName;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getCallingPackage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->getChangingConfigurations()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getContentScene()Landroid/transition/Scene;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->getContentScene()Landroid/transition/Scene;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->getContentScene()Landroid/transition/Scene;

    move-result-object v0

    return-object v0
.end method

.method public getContentTransitionManager()Landroid/transition/TransitionManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->getContentTransitionManager()Landroid/transition/TransitionManager;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->getContentTransitionManager()Landroid/transition/TransitionManager;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentFocus()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getFragmentManager()Landroid/app/FragmentManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getLastNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    return-object v0
.end method

.method public getLoaderManager()Landroid/app/LoaderManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    return-object v0
.end method

.method public getLocalClassName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxNumPictureInPictureActions()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->getMaxNumPictureInPictureActions()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->getMaxNumPictureInPictureActions()I

    move-result v0

    return v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getParentActivityIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->getParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->getParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getPlugin()Lcom/bytedance/pangle/plugin/Plugin;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mPlugin:Lcom/bytedance/pangle/plugin/Plugin;

    return-object v0
.end method

.method public abstract getPluginPkgName()Ljava/lang/String;
.end method

.method public getPreferences(I)Landroid/content/SharedPreferences;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method

.method public getReferrer()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->getReferrer()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getRequestedOrientation()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->getRequestedOrientation()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    return v0
.end method

.method public getSupportActionBar()Landroidx/appcompat/app/ActionBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getTaskId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->getTaskId()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v0

    return v0
.end method

.method public getVoiceInteractor()Landroid/app/VoiceInteractor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object v0

    return-object v0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    return-object v0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->hasWindowFocus()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    return v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->invalidateOptionsMenu()V

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method public isActivityTransitionRunning()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->isActivityTransitionRunning()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->isActivityTransitionRunning()Z

    move-result v0

    return v0
.end method

.method public isChangingConfigurations()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->isChangingConfigurations()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    return v0
.end method

.method public isDestroyed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->isDestroyed()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method public isFinishing()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->isFinishing()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    return v0
.end method

.method public isImmersive()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->isImmersive()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->isImmersive()Z

    move-result v0

    return v0
.end method

.method public isInMultiWindowMode()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->isInMultiWindowMode()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    return v0
.end method

.method public isInPictureInPictureMode()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->isInPictureInPictureMode()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v0

    return v0
.end method

.method public isLocalVoiceInteractionSupported()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->isLocalVoiceInteractionSupported()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->isLocalVoiceInteractionSupported()Z

    move-result v0

    return v0
.end method

.method public isTaskRoot()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->isTaskRoot()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    return v0
.end method

.method public isVoiceInteraction()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->isVoiceInteraction()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->isVoiceInteraction()Z

    move-result v0

    return v0
.end method

.method public isVoiceInteractionRoot()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->isVoiceInteractionRoot()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->isVoiceInteractionRoot()Z

    move-result v0

    return v0
.end method

.method public moveTaskToBack(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->moveTaskToBack(Z)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    move-result p1

    return p1
.end method

.method public navigateUpTo(Landroid/content/Intent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->navigateUpTo(Landroid/content/Intent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public navigateUpToFromChild(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->navigateUpToFromChild(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->navigateUpToFromChild(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onActionModeFinished(Landroid/view/ActionMode;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeFinished(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onActionModeStarted(Landroid/view/ActionMode;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeStarted(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onActivityReenter(ILandroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onActivityReenter(ILandroid/content/Intent;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onActivityReenter(ILandroid/content/Intent;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onAttachFragment(Landroid/app/Fragment;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onAttachFragment(Landroid/app/Fragment;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onAttachedToWindow()V

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onBackPressed()V

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method protected onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onContentChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onContentChanged()V

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onContentChanged()V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onContextMenuClosed(Landroid/view/Menu;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/bytedance/pangle/activity/c;->a(Lcom/bytedance/pangle/activity/b;Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onCreateDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onCreateDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public onCreateNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onCreateNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z

    move-result p1

    return p1
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentActivity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onDestroy()V

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onDetachedFromWindow()V

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onEnterAnimationComplete()V

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onEnterAnimationComplete()V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onGetDirectActions(Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onGetDirectActions(Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onGetDirectActions(Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLocalVoiceInteractionStarted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onLocalVoiceInteractionStarted()V

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onLocalVoiceInteractionStarted()V

    return-void
.end method

.method public onLocalVoiceInteractionStopped()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onLocalVoiceInteractionStopped()V

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onLocalVoiceInteractionStopped()V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onLowMemory()V

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onLowMemory()V

    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onMultiWindowModeChanged(Z)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onMultiWindowModeChanged(Z)V

    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    return-void

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    return-void
.end method

.method public onNavigateUp()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onNavigateUp()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onNavigateUp()Z

    move-result v0

    return v0
.end method

.method public onNavigateUpFromChild(Landroid/app/Activity;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onNavigateUpFromChild(Landroid/app/Activity;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onNavigateUpFromChild(Landroid/app/Activity;)Z

    move-result p1

    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onPause()V

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public onPerformDirectAction(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onPerformDirectAction(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onPerformDirectAction(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onPictureInPictureModeChanged(Z)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onPictureInPictureModeChanged(Z)V

    return-void
.end method

.method public onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    return-void

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    return-void
.end method

.method public onPictureInPictureRequested()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onPictureInPictureRequested()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPictureInPictureRequested()Z

    move-result v0

    return v0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onPostCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onPostResume()V

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPostResume()V

    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    return-void

    .line 6
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    return-void
.end method

.method public onPrepareNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onPrepareNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onProvideAssistContent(Landroid/app/assist/AssistContent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onProvideAssistContent(Landroid/app/assist/AssistContent;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onProvideAssistContent(Landroid/app/assist/AssistContent;)V

    return-void
.end method

.method public onProvideAssistData(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onProvideAssistData(Landroid/os/Bundle;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onProvideAssistData(Landroid/os/Bundle;)V

    return-void
.end method

.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    return-void
.end method

.method public onProvideReferrer()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onProvideReferrer()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onProvideReferrer()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onRestart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onRestart()V

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onResume()V

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    :goto_0
    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 8
    :goto_0
    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V

    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onSearchRequested()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onSearchRequested(Landroid/view/SearchEvent;)Z

    move-result p1

    return p1

    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSearchRequested(Landroid/view/SearchEvent;)Z

    move-result p1

    return p1
.end method

.method protected onStart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onStart()V

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    return-void
.end method

.method public onStateNotSaved()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onStateNotSaved()V

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStateNotSaved()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onStop()V

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public onTopResumedActivityChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onTopResumedActivityChanged(Z)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTopResumedActivityChanged(Z)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onTrimMemory(I)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onUserInteraction()V

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onUserLeaveHint()V

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    return-void
.end method

.method public onVisibleBehindCanceled()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onVisibleBehindCanceled()V

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onVisibleBehindCanceled()V

    return-void
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onWindowFocusChanged(Z)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public openContextMenu(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->openContextMenu(Landroid/view/View;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->openContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public openOptionsMenu()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->openOptionsMenu()V

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->openOptionsMenu()V

    return-void
.end method

.method public overridePendingTransition(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->overridePendingTransition(II)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public postponeEnterTransition()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->postponeEnterTransition()V

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->postponeEnterTransition()V

    return-void
.end method

.method public recreate()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->recreate()V

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->recreate()V

    return-void
.end method

.method public registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->registerForContextMenu(Landroid/view/View;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public releaseInstance()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->releaseInstance()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->releaseInstance()Z

    move-result v0

    return v0
.end method

.method public reportFullyDrawn()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->reportFullyDrawn()V

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->reportFullyDrawn()V

    return-void
.end method

.method public requestDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->requestDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->requestDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    move-result-object p1

    return-object p1
.end method

.method public requestVisibleBehind(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->requestVisibleBehind(Z)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->requestVisibleBehind(Z)Z

    move-result p1

    return p1
.end method

.method public setActionBar(Landroid/widget/Toolbar;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->setActionBar(Landroid/widget/Toolbar;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setActionBar(Landroid/widget/Toolbar;)V

    return-void
.end method

.method public setContentTransitionManager(Landroid/transition/TransitionManager;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->setContentTransitionManager(Landroid/transition/TransitionManager;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentTransitionManager(Landroid/transition/TransitionManager;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->setContentView(I)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->setContentView(Landroid/view/View;)V

    return-void

    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 9
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    return-void
.end method

.method public setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    return-void
.end method

.method public setFinishOnTouchOutside(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->setFinishOnTouchOutside(Z)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    return-void
.end method

.method public setImmersive(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->setImmersive(Z)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setImmersive(Z)V

    return-void
.end method

.method public setInheritShowWhenLocked(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->setInheritShowWhenLocked(Z)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setInheritShowWhenLocked(Z)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->setIntent(Landroid/content/Intent;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public setLocusContext(Landroid/content/LocusId;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->setLocusContext(Landroid/content/LocusId;Landroid/os/Bundle;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setLocusContext(Landroid/content/LocusId;Landroid/os/Bundle;)V

    return-void
.end method

.method public setPictureInPictureParams(Landroid/app/PictureInPictureParams;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->setPictureInPictureParams(Landroid/app/PictureInPictureParams;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setPictureInPictureParams(Landroid/app/PictureInPictureParams;)V

    return-void
.end method

.method public setPlugin(Lcom/bytedance/pangle/plugin/Plugin;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mPlugin:Lcom/bytedance/pangle/plugin/Plugin;

    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->setRequestedOrientation(I)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public setShowWhenLocked(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->setShowWhenLocked(Z)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    return-void
.end method

.method public setTargetActivity(Lcom/bytedance/pangle/activity/IPluginActivity;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    iput-object p1, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    return-void
.end method

.method public setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    return-void
.end method

.method public setTheme(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->setTheme(I)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->setTitle(I)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->setTitleColor(I)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitleColor(I)V

    return-void
.end method

.method public setTranslucent(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->setTranslucent(Z)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setTranslucent(Z)Z

    move-result p1

    return p1
.end method

.method public setTurnScreenOn(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->setTurnScreenOn(Z)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setTurnScreenOn(Z)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->setVisible(Z)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setVisible(Z)V

    return-void
.end method

.method public setVrModeEnabled(ZLandroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->setVrModeEnabled(ZLandroid/content/ComponentName;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setVrModeEnabled(ZLandroid/content/ComponentName;)V

    return-void
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public showAssist(Landroid/os/Bundle;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->showAssist(Landroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->showAssist(Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public showLockTaskEscapeMessage()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->showLockTaskEscapeMessage()V

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->showLockTaskEscapeMessage()V

    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public startActivities([Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->startActivities([Landroid/content/Intent;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->startActivities([Landroid/content/Intent;)V

    return-void
.end method

.method public startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    .line 6
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    .line 6
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;I)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    .line 6
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityIfNeeded(Landroid/content/Intent;I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    move-result p1

    return p1
.end method

.method public startActivityIfNeeded(Landroid/content/Intent;ILandroid/os/Bundle;)Z
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->startActivityIfNeeded(Landroid/content/Intent;ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 6
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V

    return-void

    .line 3
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/app/Activity;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V

    return-void
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 7

    .line 4
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 5
    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void

    .line 6
    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/app/Activity;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 2
    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void

    .line 3
    :cond_0
    invoke-super/range {p0 .. p6}, Landroidx/activity/ComponentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 8

    .line 4
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    .line 5
    invoke-virtual/range {v0 .. v7}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void

    .line 6
    :cond_0
    invoke-super/range {p0 .. p7}, Landroidx/activity/ComponentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    .line 2
    invoke-virtual/range {v0 .. v7}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void

    .line 3
    :cond_0
    invoke-super/range {p0 .. p7}, Landroid/app/Activity;->startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 10

    move-object v0, p0

    .line 4
    iget-object v1, v0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v1, :cond_0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    .line 5
    invoke-virtual/range {v1 .. v9}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void

    .line 6
    :cond_0
    invoke-super/range {p0 .. p8}, Landroid/app/Activity;->startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public startLocalVoiceInteraction(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->startLocalVoiceInteraction(Landroid/os/Bundle;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->startLocalVoiceInteraction(Landroid/os/Bundle;)V

    return-void
.end method

.method public startLockTask()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->startLockTask()V

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->startLockTask()V

    return-void
.end method

.method public startManagingCursor(Landroid/database/Cursor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->startManagingCursor(Landroid/database/Cursor;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method public startNextMatchingActivity(Landroid/content/Intent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->startNextMatchingActivity(Landroid/content/Intent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->startNextMatchingActivity(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public startNextMatchingActivity(Landroid/content/Intent;Landroid/os/Bundle;)Z
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->startNextMatchingActivity(Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startNextMatchingActivity(Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public startPostponedEnterTransition()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->startPostponedEnterTransition()V

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->startPostponedEnterTransition()V

    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    return-void
.end method

.method public stopLocalVoiceInteraction()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->stopLocalVoiceInteraction()V

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->stopLocalVoiceInteraction()V

    return-void
.end method

.method public stopLockTask()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->stopLockTask()V

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->stopLockTask()V

    return-void
.end method

.method public stopManagingCursor(Landroid/database/Cursor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->stopManagingCursor(Landroid/database/Cursor;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->stopManagingCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method public takeKeyEvents(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->takeKeyEvents(Z)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->takeKeyEvents(Z)V

    return-void
.end method

.method public triggerSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->triggerSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->triggerSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->mTargetActivity:Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->unregisterForContextMenu(Landroid/view/View;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->unregisterForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public zeusSuperAddContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public zeusSuperAttachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public zeusSuperCloseContextMenu()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->closeContextMenu()V

    return-void
.end method

.method public zeusSuperCloseOptionsMenu()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->closeOptionsMenu()V

    return-void
.end method

.method public zeusSuperConvertToTranslucent(Landroid/app/Activity$TranslucentConversionListener;Landroid/app/ActivityOptions;)Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.Activity$TranslucentConversionListener"

    .line 1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 2
    const-class v2, Landroid/app/Activity;

    const-string v3, "convertToTranslucent"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v1, v5, v0

    const-class v1, Landroid/app/ActivityOptions;

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 3
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v0

    aput-object p2, v2, v6

    .line 4
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public zeusSuperCreatePendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public zeusSuperDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public zeusSuperDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public zeusSuperDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/core/app/ComponentActivity;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public zeusSuperDispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public zeusSuperDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public zeusSuperDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public zeusSuperDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public zeusSuperEnterPictureInPictureMode()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->enterPictureInPictureMode()V

    return-void
.end method

.method public zeusSuperEnterPictureInPictureMode(Landroid/app/PictureInPictureParams;)Z
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->enterPictureInPictureMode(Landroid/app/PictureInPictureParams;)Z

    move-result p1

    return p1
.end method

.method public zeusSuperFindViewById(I)Landroid/view/View;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public zeusSuperFinish()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public zeusSuperFinishActivity(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->finishActivity(I)V

    return-void
.end method

.method public zeusSuperFinishActivityFromChild(Landroid/app/Activity;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->finishActivityFromChild(Landroid/app/Activity;I)V

    return-void
.end method

.method public zeusSuperFinishAffinity()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finishAffinity()V

    return-void
.end method

.method public zeusSuperFinishAfterTransition()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finishAfterTransition()V

    return-void
.end method

.method public zeusSuperFinishAndRemoveTask()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method

.method public zeusSuperFinishFromChild(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->finishFromChild(Landroid/app/Activity;)V

    return-void
.end method

.method public zeusSuperGetActionBar()Landroid/app/ActionBar;
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public zeusSuperGetCallingActivity()Landroid/content/ComponentName;
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public zeusSuperGetCallingPackage()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zeusSuperGetChangingConfigurations()I
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public zeusSuperGetComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public zeusSuperGetContentScene()Landroid/transition/Scene;
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->getContentScene()Landroid/transition/Scene;

    move-result-object v0

    return-object v0
.end method

.method public zeusSuperGetContentTransitionManager()Landroid/transition/TransitionManager;
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->getContentTransitionManager()Landroid/transition/TransitionManager;

    move-result-object v0

    return-object v0
.end method

.method public zeusSuperGetCurrentFocus()Landroid/view/View;
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public zeusSuperGetFragmentManager()Landroid/app/FragmentManager;
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public zeusSuperGetIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public zeusSuperGetLastNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public zeusSuperGetLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public zeusSuperGetLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    return-object v0
.end method

.method public zeusSuperGetLoaderManager()Landroid/app/LoaderManager;
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    return-object v0
.end method

.method public zeusSuperGetLocalClassName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zeusSuperGetMaxNumPictureInPictureActions()I
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->getMaxNumPictureInPictureActions()I

    move-result v0

    return v0
.end method

.method public zeusSuperGetMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public zeusSuperGetParentActivityIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->getParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public zeusSuperGetPreferences(I)Landroid/content/SharedPreferences;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method

.method public zeusSuperGetReferrer()Landroid/net/Uri;
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public zeusSuperGetRequestedOrientation()I
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    return v0
.end method

.method public zeusSuperGetSupportActionBar()Landroidx/appcompat/app/ActionBar;
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public zeusSuperGetSupportFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public zeusSuperGetSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public zeusSuperGetTaskId()I
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v0

    return v0
.end method

.method public zeusSuperGetVoiceInteractor()Landroid/app/VoiceInteractor;
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object v0

    return-object v0
.end method

.method public zeusSuperGetWindow()Landroid/view/Window;
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method public zeusSuperGetWindowManager()Landroid/view/WindowManager;
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    return-object v0
.end method

.method public zeusSuperHasWindowFocus()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    return v0
.end method

.method public zeusSuperInvalidateOptionsMenu()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method public zeusSuperIsActivityTransitionRunning()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->isActivityTransitionRunning()Z

    move-result v0

    return v0
.end method

.method public zeusSuperIsChangingConfigurations()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    return v0
.end method

.method public zeusSuperIsDestroyed()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method public zeusSuperIsFinishing()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    return v0
.end method

.method public zeusSuperIsImmersive()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->isImmersive()Z

    move-result v0

    return v0
.end method

.method public zeusSuperIsInMultiWindowMode()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    return v0
.end method

.method public zeusSuperIsInPictureInPictureMode()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v0

    return v0
.end method

.method public zeusSuperIsLocalVoiceInteractionSupported()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->isLocalVoiceInteractionSupported()Z

    move-result v0

    return v0
.end method

.method public zeusSuperIsTaskRoot()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    return v0
.end method

.method public zeusSuperIsVoiceInteraction()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->isVoiceInteraction()Z

    move-result v0

    return v0
.end method

.method public zeusSuperIsVoiceInteractionRoot()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->isVoiceInteractionRoot()Z

    move-result v0

    return v0
.end method

.method public zeusSuperMoveTaskToBack(Z)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    move-result p1

    return p1
.end method

.method public zeusSuperNavigateUpTo(Landroid/content/Intent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public zeusSuperNavigateUpToFromChild(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->navigateUpToFromChild(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public zeusSuperOnActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeFinished(Landroid/view/ActionMode;)V

    return-void
.end method

.method public zeusSuperOnActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeStarted(Landroid/view/ActionMode;)V

    return-void
.end method

.method public zeusSuperOnActivityReenter(ILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onActivityReenter(ILandroid/content/Intent;)V

    return-void
.end method

.method protected zeusSuperOnActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected zeusSuperOnApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method public zeusSuperOnAttachFragment(Landroid/app/Fragment;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onAttachFragment(Landroid/app/Fragment;)V

    return-void
.end method

.method public zeusSuperOnAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    return-void
.end method

.method public zeusSuperOnBackPressed()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method protected zeusSuperOnChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public zeusSuperOnConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public zeusSuperOnContentChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onContentChanged()V

    return-void
.end method

.method public zeusSuperOnContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public zeusSuperOnContextMenuClosed(Landroid/view/Menu;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    return-void
.end method

.method public zeusSuperOnCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public zeusSuperOnCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public zeusSuperOnCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public zeusSuperOnCreateDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onCreateDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected zeusSuperOnCreateDialog(I)Landroid/app/Dialog;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method protected zeusSuperOnCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public zeusSuperOnCreateNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V

    return-void
.end method

.method public zeusSuperOnCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public zeusSuperOnCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public zeusSuperOnCreatePanelView(I)Landroid/view/View;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public zeusSuperOnCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z

    move-result p1

    return p1
.end method

.method public zeusSuperOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentActivity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public zeusSuperOnCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected zeusSuperOnDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public zeusSuperOnDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    return-void
.end method

.method public zeusSuperOnEnterAnimationComplete()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onEnterAnimationComplete()V

    return-void
.end method

.method public zeusSuperOnGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public zeusSuperOnGetDirectActions(Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onGetDirectActions(Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public zeusSuperOnKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public zeusSuperOnKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public zeusSuperOnKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public zeusSuperOnKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public zeusSuperOnKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public zeusSuperOnLocalVoiceInteractionStarted()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onLocalVoiceInteractionStarted()V

    return-void
.end method

.method public zeusSuperOnLocalVoiceInteractionStopped()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onLocalVoiceInteractionStopped()V

    return-void
.end method

.method public zeusSuperOnLowMemory()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onLowMemory()V

    return-void
.end method

.method public zeusSuperOnMenuOpened(ILandroid/view/Menu;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public zeusSuperOnMultiWindowModeChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onMultiWindowModeChanged(Z)V

    return-void
.end method

.method public zeusSuperOnMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    return-void
.end method

.method public zeusSuperOnNavigateUp()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onNavigateUp()Z

    move-result v0

    return v0
.end method

.method public zeusSuperOnNavigateUpFromChild(Landroid/app/Activity;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onNavigateUpFromChild(Landroid/app/Activity;)Z

    move-result p1

    return p1
.end method

.method protected zeusSuperOnNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public zeusSuperOnOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public zeusSuperOnOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    return-void
.end method

.method public zeusSuperOnPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method protected zeusSuperOnPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public zeusSuperOnPerformDirectAction(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onPerformDirectAction(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public zeusSuperOnPictureInPictureModeChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onPictureInPictureModeChanged(Z)V

    return-void
.end method

.method public zeusSuperOnPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    return-void
.end method

.method public zeusSuperOnPictureInPictureRequested()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPictureInPictureRequested()Z

    move-result v0

    return v0
.end method

.method protected zeusSuperOnPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public zeusSuperOnPostCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method protected zeusSuperOnPostResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPostResume()V

    return-void
.end method

.method protected zeusSuperOnPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    return-void
.end method

.method protected zeusSuperOnPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    return-void
.end method

.method public zeusSuperOnPrepareNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V

    return-void
.end method

.method public zeusSuperOnPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public zeusSuperOnPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public zeusSuperOnProvideAssistContent(Landroid/app/assist/AssistContent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onProvideAssistContent(Landroid/app/assist/AssistContent;)V

    return-void
.end method

.method public zeusSuperOnProvideAssistData(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onProvideAssistData(Landroid/os/Bundle;)V

    return-void
.end method

.method public zeusSuperOnProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    return-void
.end method

.method public zeusSuperOnProvideReferrer()Landroid/net/Uri;
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onProvideReferrer()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public zeusSuperOnRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected zeusSuperOnRestart()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method protected zeusSuperOnRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public zeusSuperOnRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method protected zeusSuperOnResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    return-void
.end method

.method protected zeusSuperOnSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public zeusSuperOnSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public zeusSuperOnSearchRequested()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public zeusSuperOnSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onSearchRequested(Landroid/view/SearchEvent;)Z

    move-result p1

    return p1
.end method

.method protected zeusSuperOnStart()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    return-void
.end method

.method public zeusSuperOnStateNotSaved()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStateNotSaved()V

    return-void
.end method

.method protected zeusSuperOnStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method

.method protected zeusSuperOnTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public zeusSuperOnTopResumedActivityChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onTopResumedActivityChanged(Z)V

    return-void
.end method

.method public zeusSuperOnTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public zeusSuperOnTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public zeusSuperOnTrimMemory(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    return-void
.end method

.method public zeusSuperOnUserInteraction()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    return-void
.end method

.method protected zeusSuperOnUserLeaveHint()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    return-void
.end method

.method public zeusSuperOnVisibleBehindCanceled()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onVisibleBehindCanceled()V

    return-void
.end method

.method public zeusSuperOnWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public zeusSuperOnWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public zeusSuperOnWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public zeusSuperOnWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public zeusSuperOpenContextMenu(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->openContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public zeusSuperOpenOptionsMenu()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->openOptionsMenu()V

    return-void
.end method

.method public zeusSuperOverridePendingTransition(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public zeusSuperPostponeEnterTransition()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->postponeEnterTransition()V

    return-void
.end method

.method public zeusSuperRecreate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->recreate()V

    return-void
.end method

.method public zeusSuperRegisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public zeusSuperRegisterForContextMenu(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public zeusSuperReleaseInstance()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->releaseInstance()Z

    move-result v0

    return v0
.end method

.method public zeusSuperReportFullyDrawn()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->reportFullyDrawn()V

    return-void
.end method

.method public zeusSuperRequestDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->requestDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    move-result-object p1

    return-object p1
.end method

.method public zeusSuperRequestVisibleBehind(Z)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->requestVisibleBehind(Z)Z

    move-result p1

    return p1
.end method

.method public zeusSuperSetActionBar(Landroid/widget/Toolbar;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setActionBar(Landroid/widget/Toolbar;)V

    return-void
.end method

.method public zeusSuperSetContentTransitionManager(Landroid/transition/TransitionManager;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentTransitionManager(Landroid/transition/TransitionManager;)V

    return-void
.end method

.method public zeusSuperSetContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    return-void
.end method

.method public zeusSuperSetContentView(Landroid/view/View;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public zeusSuperSetContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public zeusSuperSetEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    return-void
.end method

.method public zeusSuperSetExitSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    return-void
.end method

.method public zeusSuperSetFinishOnTouchOutside(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    return-void
.end method

.method public zeusSuperSetImmersive(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setImmersive(Z)V

    return-void
.end method

.method public zeusSuperSetInheritShowWhenLocked(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setInheritShowWhenLocked(Z)V

    return-void
.end method

.method public zeusSuperSetIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public zeusSuperSetLocusContext(Landroid/content/LocusId;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setLocusContext(Landroid/content/LocusId;Landroid/os/Bundle;)V

    return-void
.end method

.method public zeusSuperSetPictureInPictureParams(Landroid/app/PictureInPictureParams;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setPictureInPictureParams(Landroid/app/PictureInPictureParams;)V

    return-void
.end method

.method public zeusSuperSetRequestedOrientation(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public zeusSuperSetShowWhenLocked(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    return-void
.end method

.method public zeusSuperSetTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    return-void
.end method

.method public zeusSuperSetTheme(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    return-void
.end method

.method public zeusSuperSetTitle(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public zeusSuperSetTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public zeusSuperSetTitleColor(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitleColor(I)V

    return-void
.end method

.method public zeusSuperSetTranslucent(Z)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setTranslucent(Z)Z

    move-result p1

    return p1
.end method

.method public zeusSuperSetTurnScreenOn(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setTurnScreenOn(Z)V

    return-void
.end method

.method public zeusSuperSetVisible(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setVisible(Z)V

    return-void
.end method

.method public zeusSuperSetVrModeEnabled(ZLandroid/content/ComponentName;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setVrModeEnabled(ZLandroid/content/ComponentName;)V

    return-void
.end method

.method public zeusSuperShouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public zeusSuperShouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public zeusSuperShowAssist(Landroid/os/Bundle;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->showAssist(Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public zeusSuperShowLockTaskEscapeMessage()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->showLockTaskEscapeMessage()V

    return-void
.end method

.method public zeusSuperStartActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public zeusSuperStartActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public zeusSuperStartActivities([Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->startActivities([Landroid/content/Intent;)V

    return-void
.end method

.method public zeusSuperStartActivities([Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public zeusSuperStartActivity(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public zeusSuperStartActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public zeusSuperStartActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public zeusSuperStartActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public zeusSuperStartActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V

    return-void
.end method

.method public zeusSuperStartActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public zeusSuperStartActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;I)V

    return-void
.end method

.method public zeusSuperStartActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public zeusSuperStartActivityIfNeeded(Landroid/content/Intent;I)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    move-result p1

    return p1
.end method

.method public zeusSuperStartActivityIfNeeded(Landroid/content/Intent;ILandroid/os/Bundle;)Z
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public zeusSuperStartIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/app/Activity;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V

    return-void
.end method

.method public zeusSuperStartIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 0

    .line 2
    invoke-super/range {p0 .. p6}, Landroid/app/Activity;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public zeusSuperStartIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p6}, Landroidx/activity/ComponentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public zeusSuperStartIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 0

    .line 2
    invoke-super/range {p0 .. p7}, Landroidx/activity/ComponentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public zeusSuperStartIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p7}, Landroid/app/Activity;->startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public zeusSuperStartIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 0

    .line 2
    invoke-super/range {p0 .. p8}, Landroid/app/Activity;->startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public zeusSuperStartLocalVoiceInteraction(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->startLocalVoiceInteraction(Landroid/os/Bundle;)V

    return-void
.end method

.method public zeusSuperStartLockTask()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->startLockTask()V

    return-void
.end method

.method public zeusSuperStartManagingCursor(Landroid/database/Cursor;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method public zeusSuperStartNextMatchingActivity(Landroid/content/Intent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->startNextMatchingActivity(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public zeusSuperStartNextMatchingActivity(Landroid/content/Intent;Landroid/os/Bundle;)Z
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startNextMatchingActivity(Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public zeusSuperStartPostponedEnterTransition()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->startPostponedEnterTransition()V

    return-void
.end method

.method public zeusSuperStartSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    return-void
.end method

.method public zeusSuperStopLocalVoiceInteraction()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->stopLocalVoiceInteraction()V

    return-void
.end method

.method public zeusSuperStopLockTask()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->stopLockTask()V

    return-void
.end method

.method public zeusSuperStopManagingCursor(Landroid/database/Cursor;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->stopManagingCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method public zeusSuperTakeKeyEvents(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->takeKeyEvents(Z)V

    return-void
.end method

.method public zeusSuperTriggerSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->triggerSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public zeusSuperUnregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public zeusSuperUnregisterForContextMenu(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->unregisterForContextMenu(Landroid/view/View;)V

    return-void
.end method

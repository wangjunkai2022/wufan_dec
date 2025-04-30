.class public abstract Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;
.super Landroidx/fragment/app/FragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/pangle/wrapper/a;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field public mOriginActivity:Landroidx/fragment/app/FragmentActivity;

.field public pluginContext:Lcom/bytedance/pangle/PluginContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/activity/ComponentActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public closeContextMenu()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->closeContextMenu()V

    return-void
.end method

.method public closeOptionsMenu()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->closeOptionsMenu()V

    return-void
.end method

.method public createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/core/app/ComponentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/core/app/ComponentActivity;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public enterPictureInPictureMode()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->enterPictureInPictureMode()V

    return-void
.end method

.method public enterPictureInPictureMode(Landroid/app/PictureInPictureParams;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->enterPictureInPictureMode(Landroid/app/PictureInPictureParams;)Z

    move-result p1

    return p1
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public finish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public finishActivity(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->finishActivity(I)V

    return-void
.end method

.method public finishActivityFromChild(Landroid/app/Activity;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->finishActivityFromChild(Landroid/app/Activity;I)V

    return-void
.end method

.method public finishAffinity()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finishAffinity()V

    return-void
.end method

.method public finishAfterTransition()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finishAfterTransition()V

    return-void
.end method

.method public finishAndRemoveTask()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method

.method public finishFromChild(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->finishFromChild(Landroid/app/Activity;)V

    return-void
.end method

.method public getActionBar()Landroid/app/ActionBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public getCallingActivity()Landroid/content/ComponentName;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getCallingPackage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getContentScene()Landroid/transition/Scene;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentScene()Landroid/transition/Scene;

    move-result-object v0

    return-object v0
.end method

.method public getContentTransitionManager()Landroid/transition/TransitionManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentTransitionManager()Landroid/transition/TransitionManager;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentFocus()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getExtraData(Ljava/lang/Class;)Landroidx/core/app/ComponentActivity$ExtraData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/core/app/ComponentActivity;->getExtraData(Ljava/lang/Class;)Landroidx/core/app/ComponentActivity$ExtraData;

    move-result-object p1

    return-object p1
.end method

.method public getFragmentManager()Landroid/app/FragmentManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getLastNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    return-object v0
.end method

.method public getLoaderManager()Landroid/app/LoaderManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    return-object v0
.end method

.method public getLocalClassName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxNumPictureInPictureActions()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMaxNumPictureInPictureActions()I

    move-result v0

    return v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getParentActivityIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getPreferences(I)Landroid/content/SharedPreferences;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method

.method public getReferrer()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getRequestedOrientation()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    return v0
.end method

.method public getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public getSupportLoaderManager()Landroidx/loader/app/LoaderManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->pluginContext:Lcom/bytedance/pangle/PluginContext;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/PluginContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getTaskId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTaskId()I

    move-result v0

    return v0
.end method

.method public getViewModelStore()Landroidx/lifecycle/ViewModelStore;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceInteractor()Landroid/app/VoiceInteractor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object v0

    return-object v0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    return-object v0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public isActivityTransitionRunning()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isActivityTransitionRunning()Z

    move-result v0

    return v0
.end method

.method public isChangingConfigurations()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    return v0
.end method

.method public isDestroyed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method public isFinishing()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    return v0
.end method

.method public isImmersive()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isImmersive()Z

    move-result v0

    return v0
.end method

.method public isInMultiWindowMode()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    return v0
.end method

.method public isInPictureInPictureMode()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v0

    return v0
.end method

.method public isLocalVoiceInteractionSupported()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isLocalVoiceInteractionSupported()Z

    move-result v0

    return v0
.end method

.method public isTaskRoot()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    return v0
.end method

.method public isVoiceInteraction()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isVoiceInteraction()Z

    move-result v0

    return v0
.end method

.method public isVoiceInteractionRoot()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isVoiceInteractionRoot()Z

    move-result v0

    return v0
.end method

.method public moveTaskToBack(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    move-result p1

    return p1
.end method

.method public navigateUpTo(Landroid/content/Intent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public navigateUpToFromChild(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->navigateUpToFromChild(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onActionModeFinished(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onActionModeStarted(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onActivityReenter(ILandroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onActivityReenter(ILandroid/content/Intent;)V

    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onAttachFragment(Landroid/app/Fragment;)V

    return-void
.end method

.method public onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->onAttachFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->onAttachedToWindow()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onContentChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->onContentChanged()V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->onCreateDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onCreateNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onCreateNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z

    move-result p1

    return p1
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentActivity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->onDetachedFromWindow()V

    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->onEnterAnimationComplete()V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onGetDirectActions(Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onGetDirectActions(Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLocalVoiceInteractionStarted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->onLocalVoiceInteractionStarted()V

    return-void
.end method

.method public onLocalVoiceInteractionStopped()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->onLocalVoiceInteractionStopped()V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onLowMemory()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->onMultiWindowModeChanged(Z)V

    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    return-void
.end method

.method public onNavigateUp()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->onNavigateUp()Z

    move-result v0

    return v0
.end method

.method public onNavigateUpFromChild(Landroid/app/Activity;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onNavigateUpFromChild(Landroid/app/Activity;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public onPerformDirectAction(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/Activity;->onPerformDirectAction(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->onPictureInPictureModeChanged(Z)V

    return-void
.end method

.method public onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    return-void
.end method

.method public onPictureInPictureRequested()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->onPictureInPictureRequested()Z

    move-result v0

    return v0
.end method

.method public onPostCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public onPrepareNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onPrepareNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onProvideAssistContent(Landroid/app/assist/AssistContent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onProvideAssistContent(Landroid/app/assist/AssistContent;)V

    return-void
.end method

.method public onProvideAssistData(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onProvideAssistData(Landroid/os/Bundle;)V

    return-void
.end method

.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    return-void
.end method

.method public onProvideReferrer()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->onProvideReferrer()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onSearchRequested(Landroid/view/SearchEvent;)Z

    move-result p1

    return p1
.end method

.method public onStateNotSaved()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onStateNotSaved()V

    return-void
.end method

.method public onTopResumedActivityChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onTopResumedActivityChanged(Z)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->onUserInteraction()V

    return-void
.end method

.method public onVisibleBehindCanceled()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->onVisibleBehindCanceled()V

    return-void
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public openContextMenu(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->openContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public openOptionsMenu()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->openOptionsMenu()V

    return-void
.end method

.method public overridePendingTransition(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public postponeEnterTransition()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->postponeEnterTransition()V

    return-void
.end method

.method public putExtraData(Landroidx/core/app/ComponentActivity$ExtraData;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/core/app/ComponentActivity;->putExtraData(Landroidx/core/app/ComponentActivity$ExtraData;)V

    return-void
.end method

.method public recreate()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    return-void
.end method

.method public registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public releaseInstance()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->releaseInstance()Z

    move-result v0

    return v0
.end method

.method public reportFullyDrawn()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->reportFullyDrawn()V

    return-void
.end method

.method public requestDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->requestDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    move-result-object p1

    return-object p1
.end method

.method public requestVisibleBehind(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->requestVisibleBehind(Z)Z

    move-result p1

    return p1
.end method

.method public setActionBar(Landroid/widget/Toolbar;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setActionBar(Landroid/widget/Toolbar;)V

    return-void
.end method

.method public setContentTransitionManager(Landroid/transition/TransitionManager;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setContentTransitionManager(Landroid/transition/TransitionManager;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    return-void
.end method

.method public setEnterSharedElementCallback(Landroidx/core/app/SharedElementCallback;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->setEnterSharedElementCallback(Landroidx/core/app/SharedElementCallback;)V

    return-void
.end method

.method public setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    return-void
.end method

.method public setExitSharedElementCallback(Landroidx/core/app/SharedElementCallback;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->setExitSharedElementCallback(Landroidx/core/app/SharedElementCallback;)V

    return-void
.end method

.method public setFinishOnTouchOutside(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    return-void
.end method

.method public setImmersive(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setImmersive(Z)V

    return-void
.end method

.method public setInheritShowWhenLocked(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setInheritShowWhenLocked(Z)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public setLocusContext(Landroid/content/LocusId;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setLocusContext(Landroid/content/LocusId;Landroid/os/Bundle;)V

    return-void
.end method

.method public setPictureInPictureParams(Landroid/app/PictureInPictureParams;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setPictureInPictureParams(Landroid/app/PictureInPictureParams;)V

    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public setShowWhenLocked(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    return-void
.end method

.method public setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    return-void
.end method

.method public setTheme(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTheme(I)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTitleColor(I)V

    return-void
.end method

.method public setTranslucent(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTranslucent(Z)Z

    move-result p1

    return p1
.end method

.method public setTurnScreenOn(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTurnScreenOn(Z)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setVisible(Z)V

    return-void
.end method

.method public setVrModeEnabled(ZLandroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setVrModeEnabled(ZLandroid/content/ComponentName;)V

    return-void
.end method

.method public setWrapperActivityTheme(I)V
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setTheme(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public showAssist(Landroid/os/Bundle;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->showAssist(Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public showLockTaskEscapeMessage()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->showLockTaskEscapeMessage()V

    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public startActivities([Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivities([Landroid/content/Intent;)V

    return-void
.end method

.method public startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentActivity;->startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityIfNeeded(Landroid/content/Intent;I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    move-result p1

    return p1
.end method

.method public startActivityIfNeeded(Landroid/content/Intent;ILandroid/os/Bundle;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V

    return-void
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroidx/activity/ComponentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroidx/activity/ComponentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 10

    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroid/app/Activity;->startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 10

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroidx/fragment/app/FragmentActivity;->startIntentSenderFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public startLocalVoiceInteraction(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startLocalVoiceInteraction(Landroid/os/Bundle;)V

    return-void
.end method

.method public startLockTask()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->startLockTask()V

    return-void
.end method

.method public startManagingCursor(Landroid/database/Cursor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method public startNextMatchingActivity(Landroid/content/Intent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startNextMatchingActivity(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public startNextMatchingActivity(Landroid/content/Intent;Landroid/os/Bundle;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startNextMatchingActivity(Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public startPostponedEnterTransition()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->startPostponedEnterTransition()V

    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    return-void
.end method

.method public stopLocalVoiceInteraction()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->stopLocalVoiceInteraction()V

    return-void
.end method

.method public stopLockTask()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->stopLockTask()V

    return-void
.end method

.method public stopManagingCursor(Landroid/database/Cursor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->stopManagingCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/core/app/ComponentActivity;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public supportFinishAfterTransition()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->supportFinishAfterTransition()V

    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    return-void
.end method

.method public supportPostponeEnterTransition()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->supportPostponeEnterTransition()V

    return-void
.end method

.method public supportStartPostponedEnterTransition()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->supportStartPostponedEnterTransition()V

    return-void
.end method

.method public takeKeyEvents(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->takeKeyEvents(Z)V

    return-void
.end method

.method public triggerSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->triggerSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->unregisterForContextMenu(Landroid/view/View;)V

    return-void
.end method

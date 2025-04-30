.class public abstract Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/pangle/activity/IPluginActivity;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field hasInit:Z

.field public mPlugin:Lcom/bytedance/pangle/plugin/Plugin;

.field public mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->hasInit:Z

    return-void
.end method


# virtual methods
.method public _requestPermissions([Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperAddContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    .line 2
    iget-object p1, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-static {p0, p1}, Lcom/bytedance/pangle/util/a;->a(Lcom/bytedance/pangle/activity/IPluginActivity;Landroid/app/Activity;)V

    return-void
.end method

.method public closeContextMenu()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperCloseContextMenu()V

    return-void
.end method

.method public closeOptionsMenu()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperCloseOptionsMenu()V

    return-void
.end method

.method public convertToTranslucent(Landroid/app/Activity$TranslucentConversionListener;Landroid/app/ActivityOptions;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperConvertToTranslucent(Landroid/app/Activity$TranslucentConversionListener;Landroid/app/ActivityOptions;)Z

    move-result p1

    return p1
.end method

.method public createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperCreatePendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperDispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public enterPictureInPictureMode()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperEnterPictureInPictureMode()V

    return-void
.end method

.method public enterPictureInPictureMode(Landroid/app/PictureInPictureParams;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperEnterPictureInPictureMode(Landroid/app/PictureInPictureParams;)Z

    move-result p1

    return p1
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperFindViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public finish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperFinish()V

    return-void
.end method

.method public finishActivity(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperFinishActivity(I)V

    return-void
.end method

.method public finishActivityFromChild(Landroid/app/Activity;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperFinishActivityFromChild(Landroid/app/Activity;I)V

    return-void
.end method

.method public finishAffinity()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperFinishAffinity()V

    return-void
.end method

.method public finishAfterTransition()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperFinishAfterTransition()V

    return-void
.end method

.method public finishAndRemoveTask()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperFinishAndRemoveTask()V

    return-void
.end method

.method public finishFromChild(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperFinishFromChild(Landroid/app/Activity;)V

    return-void
.end method

.method public getActionBar()Landroid/app/ActionBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperGetActionBar()Landroid/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public getCallingActivity()Landroid/content/ComponentName;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperGetCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getCallingPackage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperGetCallingPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperGetChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperGetComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getContentScene()Landroid/transition/Scene;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperGetContentScene()Landroid/transition/Scene;

    move-result-object v0

    return-object v0
.end method

.method public getContentTransitionManager()Landroid/transition/TransitionManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperGetContentTransitionManager()Landroid/transition/TransitionManager;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentFocus()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperGetCurrentFocus()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getFragmentManager()Landroid/app/FragmentManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperGetFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperGetIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getLastNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperGetLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperGetLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->hasInit:Z

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 3
    :catchall_0
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    return-object v0
.end method

.method public getLoaderManager()Landroid/app/LoaderManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperGetLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    return-object v0
.end method

.method public getLocalClassName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperGetLocalClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxNumPictureInPictureActions()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperGetMaxNumPictureInPictureActions()I

    move-result v0

    return v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperGetMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getParentActivityIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperGetParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getPreferences(I)Landroid/content/SharedPreferences;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperGetPreferences(I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method

.method public getReferrer()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperGetReferrer()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getRequestedOrientation()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperGetRequestedOrientation()I

    move-result v0

    return v0
.end method

.method public getSupportActionBar()Landroidx/appcompat/app/ActionBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperGetSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperGetSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperGetSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getTaskId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperGetTaskId()I

    move-result v0

    return v0
.end method

.method public getVoiceInteractor()Landroid/app/VoiceInteractor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperGetVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object v0

    return-object v0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperGetWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperGetWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    return-object v0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperHasWindowFocus()Z

    move-result v0

    return v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperInvalidateOptionsMenu()V

    return-void
.end method

.method public isActivityTransitionRunning()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperIsActivityTransitionRunning()Z

    move-result v0

    return v0
.end method

.method public isChangingConfigurations()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperIsChangingConfigurations()Z

    move-result v0

    return v0
.end method

.method public isDestroyed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperIsDestroyed()Z

    move-result v0

    return v0
.end method

.method public isFinishing()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperIsFinishing()Z

    move-result v0

    return v0
.end method

.method public isImmersive()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperIsImmersive()Z

    move-result v0

    return v0
.end method

.method public isInMultiWindowMode()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperIsInMultiWindowMode()Z

    move-result v0

    return v0
.end method

.method public isInPictureInPictureMode()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperIsInPictureInPictureMode()Z

    move-result v0

    return v0
.end method

.method public isLocalVoiceInteractionSupported()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperIsLocalVoiceInteractionSupported()Z

    move-result v0

    return v0
.end method

.method public isTaskRoot()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperIsTaskRoot()Z

    move-result v0

    return v0
.end method

.method public isVoiceInteraction()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperIsVoiceInteraction()Z

    move-result v0

    return v0
.end method

.method public isVoiceInteractionRoot()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperIsVoiceInteractionRoot()Z

    move-result v0

    return v0
.end method

.method public moveTaskToBack(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperMoveTaskToBack(Z)Z

    move-result p1

    return p1
.end method

.method public navigateUpTo(Landroid/content/Intent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperNavigateUpTo(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public navigateUpToFromChild(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperNavigateUpToFromChild(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnActionModeFinished(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnActionModeStarted(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onActivityReenter(ILandroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnActivityReenter(ILandroid/content/Intent;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnAttachFragment(Landroid/app/Fragment;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnAttachedToWindow()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnBackPressed()V

    return-void
.end method

.method protected onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onContentChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnContentChanged()V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnContextMenuClosed(Landroid/view/Menu;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/pangle/res/b;->a(Landroid/view/LayoutInflater;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnCreateDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnCreateDialog(I)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public onCreateNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnCreateNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnCreatePanelView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z

    move-result p1

    return p1
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnDestroy()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnDetachedFromWindow()V

    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnEnterAnimationComplete()V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onGetDirectActions(Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnGetDirectActions(Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLocalVoiceInteractionStarted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnLocalVoiceInteractionStarted()V

    return-void
.end method

.method public onLocalVoiceInteractionStopped()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnLocalVoiceInteractionStopped()V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnLowMemory()V

    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnMultiWindowModeChanged(Z)V

    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    return-void
.end method

.method public onNavigateUp()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnNavigateUp()Z

    move-result v0

    return v0
.end method

.method public onNavigateUpFromChild(Landroid/app/Activity;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnNavigateUpFromChild(Landroid/app/Activity;)Z

    move-result p1

    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnOptionsMenuClosed(Landroid/view/Menu;)V

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnPause()V

    return-void
.end method

.method public onPerformDirectAction(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnPerformDirectAction(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnPictureInPictureModeChanged(Z)V

    return-void
.end method

.method public onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    return-void
.end method

.method public onPictureInPictureRequested()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnPictureInPictureRequested()Z

    move-result v0

    return v0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnPostCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnPostCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnPostResume()V

    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnPrepareDialog(ILandroid/app/Dialog;)V

    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    return-void
.end method

.method public onPrepareNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnPrepareNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onProvideAssistContent(Landroid/app/assist/AssistContent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnProvideAssistContent(Landroid/app/assist/AssistContent;)V

    return-void
.end method

.method public onProvideAssistData(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnProvideAssistData(Landroid/os/Bundle;)V

    return-void
.end method

.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    return-void
.end method

.method public onProvideReferrer()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnProvideReferrer()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onRestart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnRestart()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnRestoreInstanceState(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnSearchRequested()Z

    move-result v0

    return v0
.end method

.method public onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnSearchRequested(Landroid/view/SearchEvent;)Z

    move-result p1

    return p1
.end method

.method protected onStart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnStart()V

    return-void
.end method

.method public onStateNotSaved()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnStateNotSaved()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnStop()V

    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnTitleChanged(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public onTopResumedActivityChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnTopResumedActivityChanged(Z)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnTrimMemory(I)V

    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnUserInteraction()V

    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnUserLeaveHint()V

    return-void
.end method

.method public onVisibleBehindCanceled()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnVisibleBehindCanceled()V

    return-void
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnWindowFocusChanged(Z)V

    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOnWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public openContextMenu(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOpenContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public openOptionsMenu()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOpenOptionsMenu()V

    return-void
.end method

.method public overridePendingTransition(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperOverridePendingTransition(II)V

    return-void
.end method

.method public postponeEnterTransition()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperPostponeEnterTransition()V

    return-void
.end method

.method public recreate()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperRecreate()V

    return-void
.end method

.method public registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperRegisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperRegisterForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public releaseInstance()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperReleaseInstance()Z

    move-result v0

    return v0
.end method

.method public reportFullyDrawn()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperReportFullyDrawn()V

    return-void
.end method

.method public requestDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperRequestDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    move-result-object p1

    return-object p1
.end method

.method public requestVisibleBehind(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperRequestVisibleBehind(Z)Z

    move-result p1

    return p1
.end method

.method public setActionBar(Landroid/widget/Toolbar;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperSetActionBar(Landroid/widget/Toolbar;)V

    return-void
.end method

.method public setContentTransitionManager(Landroid/transition/TransitionManager;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperSetContentTransitionManager(Landroid/transition/TransitionManager;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/pangle/transform/ZeusTransformUtils;->clearConstructorCache()V

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperSetContentView(I)V

    .line 3
    invoke-static {}, Lcom/bytedance/pangle/transform/ZeusTransformUtils;->clearConstructorCache()V

    const p1, 0x1020002

    .line 4
    invoke-virtual {p0, p1}, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/bytedance/pangle/activity/c;->a(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperSetContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperSetContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperSetEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    return-void
.end method

.method public setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperSetExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    return-void
.end method

.method public setFinishOnTouchOutside(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperSetFinishOnTouchOutside(Z)V

    return-void
.end method

.method public setImmersive(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperSetImmersive(Z)V

    return-void
.end method

.method public setInheritShowWhenLocked(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperSetInheritShowWhenLocked(Z)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperSetIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public setLocusContext(Landroid/content/LocusId;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperSetLocusContext(Landroid/content/LocusId;Landroid/os/Bundle;)V

    return-void
.end method

.method public setPictureInPictureParams(Landroid/app/PictureInPictureParams;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperSetPictureInPictureParams(Landroid/app/PictureInPictureParams;)V

    return-void
.end method

.method public setPluginProxyActivity(Lcom/bytedance/pangle/activity/b;Lcom/bytedance/pangle/plugin/Plugin;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    iput-object p1, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    .line 2
    iput-object p2, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mPlugin:Lcom/bytedance/pangle/plugin/Plugin;

    return-void
.end method

.method public setProxyTheme2Plugin(I)V
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperSetRequestedOrientation(I)V

    return-void
.end method

.method public setShowWhenLocked(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperSetShowWhenLocked(Z)V

    return-void
.end method

.method public setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperSetTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    return-void
.end method

.method public setTheme(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperSetTheme(I)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperSetTitle(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperSetTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperSetTitleColor(I)V

    return-void
.end method

.method public setTranslucent(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperSetTranslucent(Z)Z

    move-result p1

    return p1
.end method

.method public setTurnScreenOn(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperSetTurnScreenOn(Z)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperSetVisible(Z)V

    return-void
.end method

.method public setVrModeEnabled(ZLandroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperSetVrModeEnabled(ZLandroid/content/ComponentName;)V

    return-void
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperShouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperShouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public showAssist(Landroid/os/Bundle;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperShowAssist(Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public showLockTaskEscapeMessage()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperShowLockTaskEscapeMessage()V

    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperStartActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperStartActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public startActivities([Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperStartActivities([Landroid/content/Intent;)V

    return-void
.end method

.method public startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperStartActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperStartActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperStartActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperStartActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperStartActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperStartActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperStartActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperStartActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperStartActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityIfNeeded(Landroid/content/Intent;I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperStartActivityIfNeeded(Landroid/content/Intent;I)Z

    move-result p1

    return p1
.end method

.method public startActivityIfNeeded(Landroid/content/Intent;ILandroid/os/Bundle;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperStartActivityIfNeeded(Landroid/content/Intent;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperStartIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V

    return-void
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperStartIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperStartIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperStartIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperStartIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 10

    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperStartIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public startLocalVoiceInteraction(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperStartLocalVoiceInteraction(Landroid/os/Bundle;)V

    return-void
.end method

.method public startLockTask()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperStartLockTask()V

    return-void
.end method

.method public startManagingCursor(Landroid/database/Cursor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperStartManagingCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method public startNextMatchingActivity(Landroid/content/Intent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperStartNextMatchingActivity(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public startNextMatchingActivity(Landroid/content/Intent;Landroid/os/Bundle;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperStartNextMatchingActivity(Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public startPostponedEnterTransition()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperStartPostponedEnterTransition()V

    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperStartSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    return-void
.end method

.method public stopLocalVoiceInteraction()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperStopLocalVoiceInteraction()V

    return-void
.end method

.method public stopLockTask()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperStopLockTask()V

    return-void
.end method

.method public stopManagingCursor(Landroid/database/Cursor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperStopManagingCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method public takeKeyEvents(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperTakeKeyEvents(Z)V

    return-void
.end method

.method public triggerSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperTriggerSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperUnregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/activity/GeneratePluginAppCompatActivity;->mProxyActivity:Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/activity/GenerateProxyAppCompatActivity;->zeusSuperUnregisterForContextMenu(Landroid/view/View;)V

    return-void
.end method

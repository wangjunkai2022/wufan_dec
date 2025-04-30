.class public abstract Lorg/cocos2dx/lib/Cocos2dxActivity;
.super Landroid/app/Activity;
.source "Cocos2dxActivity.java"

# interfaces
.implements Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "Cocos2dxActivity"

.field public static mFrameLayout:Landroid/widget/FrameLayout;

.field private static sContext:Lorg/cocos2dx/lib/Cocos2dxActivity;


# instance fields
.field fullScreenCfg:I

.field private fullScreenFlag:Z

.field private hideHandler:Landroid/os/Handler;

.field private hideRunnable:Ljava/lang/Runnable;

.field protected mGLContextAttrs:[I

.field public mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

.field private mHandler:Lorg/cocos2dx/lib/Cocos2dxHandler;

.field private mVideoHelper:Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

.field private mWebViewHelper:Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;

.field protected uiHider:Lcom/papa91/wrapper/SystemUiHider;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    .line 3
    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLContextAttrs:[I

    .line 4
    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mHandler:Lorg/cocos2dx/lib/Cocos2dxHandler;

    .line 5
    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mVideoHelper:Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 6
    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mWebViewHelper:Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->fullScreenFlag:Z

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->fullScreenCfg:I

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->sContext:Lorg/cocos2dx/lib/Cocos2dxActivity;

    return-object v0
.end method

.method private static native getGLContextAttrs()[I
.end method

.method private static final isAndroidEmulator()Z
    .locals 3

    .line 1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "model="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "product="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "sdk"

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "_sdk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "sdk_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEmulator="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    return v1
.end method


# virtual methods
.method protected hideUiDelayed()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->hideHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->hideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->fullScreenCfg:I

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->hideHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->hideRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public init()V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sput-object v2, Lorg/cocos2dx/lib/Cocos2dxActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 3
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 5
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditText;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxEditText;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x10000000

    .line 6
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 7
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 9
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreateView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    .line 10
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 11
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->isAndroidEmulator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/16 v6, 0x8

    const/16 v7, 0x10

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 13
    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    new-instance v2, Lorg/cocos2dx/lib/Cocos2dxRenderer;

    invoke-direct {v2}, Lorg/cocos2dx/lib/Cocos2dxRenderer;-><init>()V

    invoke-virtual {v0, v2}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setCocos2dxRenderer(Lorg/cocos2dx/lib/Cocos2dxRenderer;)V

    .line 14
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setCocos2dxEditText(Lorg/cocos2dx/lib/Cocos2dxEditText;)V

    .line 15
    sget v0, Lcom/papa91/wrapper/Wrapper;->SDK_INT:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_1

    .line 16
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 17
    :cond_1
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxActivity$4;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxActivity$4;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->getOnActivityResultListeners()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceManager$OnActivityResultListener;

    .line 2
    invoke-interface {v1, p1, p2, p3}, Landroid/preference/PreferenceManager$OnActivityResultListener;->onActivityResult(IILandroid/content/Intent;)Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 2
    invoke-static {p0, p1}, Lcom/chukong/cocosplay/client/CocosPlayClient;->init(Landroid/app/Activity;Z)Z

    .line 3
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onLoadNativeLibraries()V

    .line 4
    sput-object p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->sContext:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 5
    new-instance p1, Lorg/cocos2dx/lib/Cocos2dxHandler;

    invoke-direct {p1, p0}, Lorg/cocos2dx/lib/Cocos2dxHandler;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity;)V

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mHandler:Lorg/cocos2dx/lib/Cocos2dxHandler;

    .line 6
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->init(Landroid/app/Activity;)V

    .line 7
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getGLContextAttrs()[I

    move-result-object p1

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLContextAttrs:[I

    .line 8
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->init()V

    .line 9
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mVideoHelper:Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    if-nez p1, :cond_0

    .line 10
    new-instance p1, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-direct {p1, p0, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity;Landroid/widget/FrameLayout;)V

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mVideoHelper:Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 11
    :cond_0
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mWebViewHelper:Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;

    if-nez p1, :cond_1

    .line 12
    new-instance p1, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-direct {p1, v0}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;-><init>(Landroid/widget/FrameLayout;)V

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mWebViewHelper:Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;

    :cond_1
    return-void
.end method

.method public onCreateView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;
    .locals 3

    .line 1
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLContextAttrs:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    if-lez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v2, -0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 4
    :cond_0
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLContextAttrs:[I

    invoke-direct {v1, p0, v2}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity;[I)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    return-void
.end method

.method protected onLoadNativeLibraries()V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->soPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "libcocos2dcpp.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->onPause()V

    .line 3
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->onPause()V

    .line 4
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->uiHider:Lcom/papa91/wrapper/SystemUiHider;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lcom/papa91/wrapper/SystemUiHider;->setOnVisibilityChangeListener(Lcom/papa91/wrapper/SystemUiHider$OnVisibilityChangeListener;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->hideHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 7
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->hideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->onResume()V

    .line 3
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->onResume()V

    .line 4
    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->fullScreenFlag:Z

    if-eqz v0, :cond_2

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    .line 5
    :cond_0
    sget v0, Lcom/papa91/wrapper/Wrapper;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 6
    :goto_0
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->fullScreenCfg:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->fullScreenCfg:I

    .line 8
    :goto_1
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->fullScreenCfg:I

    if-eqz v0, :cond_3

    .line 9
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->hideHandler:Landroid/os/Handler;

    .line 10
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxActivity$2;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->hideRunnable:Ljava/lang/Runnable;

    const v0, 0x1020002

    .line 11
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->fullScreenCfg:I

    invoke-static {p0, v0, v1}, Lcom/papa91/wrapper/SystemUiHider;->getInstance(Landroid/app/Activity;Landroid/view/View;I)Lcom/papa91/wrapper/SystemUiHider;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->uiHider:Lcom/papa91/wrapper/SystemUiHider;

    .line 12
    invoke-virtual {v0}, Lcom/papa91/wrapper/SystemUiHider;->setup()V

    .line 13
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->uiHider:Lcom/papa91/wrapper/SystemUiHider;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxActivity$3;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxActivity$3;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity;)V

    invoke-virtual {v0, v1}, Lcom/papa91/wrapper/SystemUiHider;->setOnVisibilityChangeListener(Lcom/papa91/wrapper/SystemUiHider$OnVisibilityChangeListener;)V

    .line 14
    :cond_3
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->uiHider:Lcom/papa91/wrapper/SystemUiHider;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/papa91/wrapper/SystemUiHider;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->uiHider:Lcom/papa91/wrapper/SystemUiHider;

    invoke-virtual {v0}, Lcom/papa91/wrapper/SystemUiHider;->hide()V

    :cond_4
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->uiHider:Lcom/papa91/wrapper/SystemUiHider;

    invoke-virtual {v0}, Lcom/papa91/wrapper/SystemUiHider;->hide()V

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public runOnGLThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setKeepScreenOn(Z)V
    .locals 1

    .line 1
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxActivity$1;

    invoke-direct {v0, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity;Z)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Landroid/os/Message;->what:I

    .line 3
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxHandler$DialogMessage;

    invoke-direct {v1, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxHandler$DialogMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mHandler:Lorg/cocos2dx/lib/Cocos2dxHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public showEditTextDialog(Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 9

    .line 1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    .line 2
    iput v1, v0, Landroid/os/Message;->what:I

    .line 3
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxHandler$EditBoxMessage;

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v2 .. v8}, Lorg/cocos2dx/lib/Cocos2dxHandler$EditBoxMessage;-><init>(Ljava/lang/String;Ljava/lang/String;IIII)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mHandler:Lorg/cocos2dx/lib/Cocos2dxHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

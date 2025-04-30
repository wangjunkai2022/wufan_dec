.class public Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity;
.super Lcom/BaseFragmentActivity;
.source "BaseFragmentLoadingActivity.java"

# interfaces
.implements Lcom/join/mgps/customview/LoadingLayout$b;
.implements Lcom/join/mgps/customview/LoadingLayout$a;


# instance fields
.field protected a:Lcom/join/mgps/customview/LoadingLayout;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseFragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected D0()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity$b;-><init>(Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public E0()V
    .locals 0

    return-void
.end method

.method protected F0()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity$d;

    invoke-direct {v1, p0}, Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity$d;-><init>(Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected G0()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity$a;-><init>(Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected H0()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity$c;-><init>(Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public callBack()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity;->G0()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity;->E0()V

    return-void
.end method

.method protected getLoadingLayoutResID()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getLoadingMarginTop()I
    .locals 1

    const/high16 v0, 0x42400000    # 48.0f

    .line 1
    invoke-static {p0, v0}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method public noDataCallBack()V
    .locals 0

    return-void
.end method

.method public setContentView(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(I)V

    .line 2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0382

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/customview/LoadingLayout;

    iput-object p1, p0, Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity;->a:Lcom/join/mgps/customview/LoadingLayout;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/LoadingLayout;->setLoadingHintMsg(Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity;->getLoadingLayoutResID()I

    move-result p1

    if-lez p1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity;->a:Lcom/join/mgps/customview/LoadingLayout;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/customview/LoadingLayout;->b(Landroid/view/View;I)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity;->a:Lcom/join/mgps/customview/LoadingLayout;

    invoke-virtual {p1, p0}, Lcom/join/mgps/customview/LoadingLayout;->setRefreshCallBackListener(Lcom/join/mgps/customview/LoadingLayout$b;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity;->a:Lcom/join/mgps/customview/LoadingLayout;

    invoke-virtual {p0}, Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity;->getLoadingMarginTop()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/LoadingLayout;->setLoadingLayoutMarginTop(I)V

    :cond_1
    return-void
.end method

.method protected setLoadingFailMsg(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity;->a:Lcom/join/mgps/customview/LoadingLayout;

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/LoadingLayout;->setFailedMessage(Ljava/lang/String;)V

    return-void
.end method

.method public setLoadingHintMsg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity;->b:Ljava/lang/String;

    return-void
.end method

.method protected setNoDataListener()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity;->a:Lcom/join/mgps/customview/LoadingLayout;

    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/LoadingLayout;->setNoDataCallBackListener(Lcom/join/mgps/customview/LoadingLayout$a;)V

    return-void
.end method

.method public setmLoadingHintMsgLoading(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/baseactivity/BaseFragmentLoadingActivity;->a:Lcom/join/mgps/customview/LoadingLayout;

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/LoadingLayout;->setLoadingHintMsg(Ljava/lang/String;)V

    return-void
.end method

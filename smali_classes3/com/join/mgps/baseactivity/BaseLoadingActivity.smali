.class public Lcom/join/mgps/baseactivity/BaseLoadingActivity;
.super Lcom/BaseActivity;
.source "BaseLoadingActivity.java"

# interfaces
.implements Lcom/join/mgps/customview/LoadingLayout$b;
.implements Lcom/join/mgps/customview/LoadingLayout$a;


# instance fields
.field protected a:Lcom/join/mgps/customview/LoadingLayout;

.field protected b:Ljava/lang/String;

.field protected c:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public E0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/join/mgps/baseactivity/BaseLoadingActivity$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity$b;-><init>(Lcom/join/mgps/baseactivity/BaseLoadingActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public F0()V
    .locals 0

    return-void
.end method

.method public G0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/join/mgps/baseactivity/BaseLoadingActivity$d;

    invoke-direct {v1, p0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity$d;-><init>(Lcom/join/mgps/baseactivity/BaseLoadingActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public H0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/join/mgps/baseactivity/BaseLoadingActivity$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity$a;-><init>(Lcom/join/mgps/baseactivity/BaseLoadingActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public I0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/join/mgps/baseactivity/BaseLoadingActivity$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity$c;-><init>(Lcom/join/mgps/baseactivity/BaseLoadingActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public callBack()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->H0()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->F0()V

    return-void
.end method

.method public getLoadingLayoutResID()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLoadingMarginTop()I
    .locals 1

    const/high16 v0, 0x42400000    # 48.0f

    .line 1
    invoke-static {p0, v0}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method public isHindeLoadingLayout()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->a:Lcom/join/mgps/customview/LoadingLayout;

    invoke-virtual {v0}, Lcom/join/mgps/customview/LoadingLayout;->e()Z

    move-result v0

    return v0
.end method

.method public noDataCallBack()V
    .locals 0

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    iput-object v1, p0, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->c:Landroid/os/Handler;

    .line 4
    :cond_0
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    return-void
.end method

.method public setContentView(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0382

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/customview/LoadingLayout;

    iput-object p1, p0, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->a:Lcom/join/mgps/customview/LoadingLayout;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/LoadingLayout;->setLoadingHintMsg(Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->getLoadingLayoutResID()I

    move-result p1

    if-lez p1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->a:Lcom/join/mgps/customview/LoadingLayout;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/customview/LoadingLayout;->b(Landroid/view/View;I)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->a:Lcom/join/mgps/customview/LoadingLayout;

    invoke-virtual {p1, p0}, Lcom/join/mgps/customview/LoadingLayout;->setRefreshCallBackListener(Lcom/join/mgps/customview/LoadingLayout$b;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->a:Lcom/join/mgps/customview/LoadingLayout;

    invoke-virtual {p0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->getLoadingMarginTop()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/LoadingLayout;->setLoadingLayoutMarginTop(I)V

    .line 9
    :cond_1
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->c:Landroid/os/Handler;

    return-void
.end method

.method public setLoadingFailMsg(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->a:Lcom/join/mgps/customview/LoadingLayout;

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/LoadingLayout;->setFailedMessage(Ljava/lang/String;)V

    return-void
.end method

.method public setLoadingHintMsg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->b:Ljava/lang/String;

    return-void
.end method

.method public setNoDataListener()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->a:Lcom/join/mgps/customview/LoadingLayout;

    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/LoadingLayout;->setNoDataCallBackListener(Lcom/join/mgps/customview/LoadingLayout$a;)V

    return-void
.end method

.method public setTextViewNoData(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->a:Lcom/join/mgps/customview/LoadingLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/LoadingLayout;->setTextViewNoData(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setmLoadingHintMsgLoading(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->a:Lcom/join/mgps/customview/LoadingLayout;

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/LoadingLayout;->setLoadingHintMsg(Ljava/lang/String;)V

    return-void
.end method

.method public showNoDataLayoutTwo()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/join/mgps/baseactivity/BaseLoadingActivity$e;

    invoke-direct {v1, p0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity$e;-><init>(Lcom/join/mgps/baseactivity/BaseLoadingActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.class public abstract Lcom/join/mgps/basefragment/a;
.super Lcom/join/mgps/fragment/d;
.source "BaseLoadingFragment.java"

# interfaces
.implements Lcom/join/mgps/customview/LoadingLayout$b;


# instance fields
.field protected a:Lcom/join/mgps/customview/LoadingLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected M(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0382

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/LoadingLayout;

    iput-object v0, p0, Lcom/join/mgps/basefragment/a;->a:Lcom/join/mgps/customview/LoadingLayout;

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/basefragment/a;->O()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/basefragment/a;->a:Lcom/join/mgps/customview/LoadingLayout;

    invoke-virtual {v1, p1, v0}, Lcom/join/mgps/customview/LoadingLayout;->c(Landroid/view/View;I)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/basefragment/a;->a:Lcom/join/mgps/customview/LoadingLayout;

    invoke-virtual {p1, p0}, Lcom/join/mgps/customview/LoadingLayout;->setRefreshCallBackListener(Lcom/join/mgps/customview/LoadingLayout$b;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/basefragment/a;->a:Lcom/join/mgps/customview/LoadingLayout;

    invoke-virtual {p0}, Lcom/join/mgps/basefragment/a;->P()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/LoadingLayout;->setLoadingLayoutMarginTop(I)V

    :cond_0
    return-void
.end method

.method protected abstract N()I
.end method

.method protected abstract O()I
.end method

.method protected P()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected Q()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/join/mgps/basefragment/a$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/basefragment/a$b;-><init>(Lcom/join/mgps/basefragment/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected R(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/basefragment/a;->a:Lcom/join/mgps/customview/LoadingLayout;

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/LoadingLayout;->setFailedMessage(Ljava/lang/String;)V

    return-void
.end method

.method protected S()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/join/mgps/basefragment/a$d;

    invoke-direct {v1, p0}, Lcom/join/mgps/basefragment/a$d;-><init>(Lcom/join/mgps/basefragment/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected U()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/join/mgps/basefragment/a$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/basefragment/a$a;-><init>(Lcom/join/mgps/basefragment/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected V()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/join/mgps/basefragment/a$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/basefragment/a$c;-><init>(Lcom/join/mgps/basefragment/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public callBack()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/basefragment/a;->U()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/basefragment/a;->loadData()V

    return-void
.end method

.method protected lazyLoad()V
    .locals 0

    return-void
.end method

.method protected abstract loadData()V
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/basefragment/a;->N()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/basefragment/a;->M(Landroid/view/View;)V

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    move-object p1, p2

    check-cast p1, Landroid/view/View;

    :goto_0
    return-object p1
.end method

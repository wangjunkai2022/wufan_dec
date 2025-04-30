.class public abstract Lcom/join/mgps/fragment/d;
.super Landroidx/fragment/app/Fragment;
.source "BaseFragment.java"


# instance fields
.field protected isVisible:Z

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/d;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method T(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/d;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/join/mgps/fragment/d$a;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/fragment/d$a;-><init>(Lcom/join/mgps/fragment/d;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected abstract lazyLoad()V
.end method

.method protected onInvisible()V
    .locals 0

    return-void
.end method

.method protected onVisible()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d;->lazyLoad()V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/fragment/d;->isVisible:Z

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d;->onVisible()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/join/mgps/fragment/d;->isVisible:Z

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d;->onInvisible()V

    :goto_0
    return-void
.end method

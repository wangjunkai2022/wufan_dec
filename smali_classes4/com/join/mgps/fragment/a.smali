.class public abstract Lcom/join/mgps/fragment/a;
.super Landroidx/fragment/app/Fragment;
.source "AbsBaseFragment.java"


# instance fields
.field protected a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/a;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected abstract M(Landroid/view/View;)V
.end method

.method protected abstract N(Landroid/view/LayoutInflater;)Landroid/view/View;
.end method

.method protected abstract initData()V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/a;->initData()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/a;->N(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/a;->M(Landroid/view/View;)V

    return-object p1
.end method

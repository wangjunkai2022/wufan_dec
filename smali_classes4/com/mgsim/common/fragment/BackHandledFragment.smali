.class public abstract Lcom/mgsim/common/fragment/BackHandledFragment;
.super Landroid/app/DialogFragment;
.source "BackHandledFragment.java"


# instance fields
.field protected a:Lcom/mgsim/common/fragment/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lcom/mgsim/common/fragment/a;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/mgsim/common/fragment/a;

    iput-object p1, p0, Lcom/mgsim/common/fragment/BackHandledFragment;->a:Lcom/mgsim/common/fragment/a;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v0, "Hosting Activity must implement BackHandledInterface"

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/mgsim/common/fragment/BackHandledFragment;->a:Lcom/mgsim/common/fragment/a;

    invoke-interface {v0, p0}, Lcom/mgsim/common/fragment/a;->v0(Lcom/mgsim/common/fragment/BackHandledFragment;)V

    return-void
.end method

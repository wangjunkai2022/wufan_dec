.class Lcom/join/mgps/fragment/o3$b;
.super Ljava/lang/Object;
.source "NewArenaMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/o3;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/o3;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/o3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/o3$b;->a:Lcom/join/mgps/fragment/o3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/o3$b;->a:Lcom/join/mgps/fragment/o3;

    iget-object p1, p1, Lcom/join/mgps/fragment/o3;->F:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/o3$b;->a:Lcom/join/mgps/fragment/o3;

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Lcom/join/mgps/fragment/o3;->Z(Lcom/join/mgps/fragment/o3;ILandroidx/fragment/app/FragmentTransaction;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/o3$b;->a:Lcom/join/mgps/fragment/o3;

    iget-object v2, v0, Lcom/join/mgps/fragment/o3;->I:Lcom/join/mgps/fragment/c;

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Lcom/join/mgps/fragment/c;

    invoke-direct {v2}, Lcom/join/mgps/fragment/c;-><init>()V

    iput-object v2, v0, Lcom/join/mgps/fragment/o3;->I:Lcom/join/mgps/fragment/c;

    .line 5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v2, 0x23

    const-string v3, "room_type"

    .line 6
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "game_type"

    const/4 v3, 0x1

    .line 7
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "pn"

    .line 8
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9
    iget-object v2, p0, Lcom/join/mgps/fragment/o3$b;->a:Lcom/join/mgps/fragment/o3;

    iget-object v2, v2, Lcom/join/mgps/fragment/o3;->I:Lcom/join/mgps/fragment/c;

    invoke-virtual {v2, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const v0, 0x7f090536

    .line 10
    iget-object v2, p0, Lcom/join/mgps/fragment/o3$b;->a:Lcom/join/mgps/fragment/o3;

    iget-object v2, v2, Lcom/join/mgps/fragment/o3;->I:Lcom/join/mgps/fragment/c;

    invoke-virtual {p1, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1, v2}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 12
    :goto_0
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 13
    iget-object p1, p0, Lcom/join/mgps/fragment/o3$b;->a:Lcom/join/mgps/fragment/o3;

    iput v1, p1, Lcom/join/mgps/fragment/o3;->t0:I

    return-void
.end method

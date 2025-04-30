.class Lcom/join/mgps/fragment/o3$l;
.super Lcom/join/mgps/socket/fight/arena/a$b0;
.source "NewArenaMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/o3;->onAttach(Landroid/content/Context;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/o3$l;->a:Lcom/join/mgps/fragment/o3;

    invoke-direct {p0}, Lcom/join/mgps/socket/fight/arena/a$b0;-><init>()V

    return-void
.end method


# virtual methods
.method public t()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/socket/fight/arena/a$b0;->t()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/o3$l;->a:Lcom/join/mgps/fragment/o3;

    invoke-static {v0}, Lcom/join/mgps/fragment/o3;->U(Lcom/join/mgps/fragment/o3;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public w0(IILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/socket/fight/arena/a$b0;->w0(IILjava/lang/Object;)V

    const/16 p3, 0x65

    if-ne p1, p3, :cond_2

    const/4 p1, 0x7

    if-eq p2, p1, :cond_1

    const/16 p1, 0x8

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/o3$l;->a:Lcom/join/mgps/fragment/o3;

    invoke-static {p1}, Lcom/join/mgps/fragment/o3;->X(Lcom/join/mgps/fragment/o3;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/o3$l;->a:Lcom/join/mgps/fragment/o3;

    invoke-static {p1}, Lcom/join/mgps/fragment/o3;->W(Lcom/join/mgps/fragment/o3;)Lcom/papa91/battle/protocol/GameRoom;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/fragment/o3;->H0(Lcom/papa91/battle/protocol/GameRoom;)V

    :cond_2
    :goto_0
    return-void
.end method

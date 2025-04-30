.class public Lcom/join/mgps/adapter/l0$c;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FriendListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/view/View;

.field final synthetic c:Lcom/join/mgps/adapter/l0;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/l0;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/join/mgps/adapter/l0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/l0$c;->c:Lcom/join/mgps/adapter/l0;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090857

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/l0$c;->b:Landroid/view/View;

    const p1, 0x7f090d1d

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/l0$c;->a:Landroid/view/View;

    return-void
.end method

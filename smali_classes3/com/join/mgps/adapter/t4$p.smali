.class public Lcom/join/mgps/adapter/t4$p;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PapaMainV2Adapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/t4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "p"
.end annotation


# instance fields
.field public a:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic b:Lcom/join/mgps/adapter/t4;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/t4;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/join/mgps/adapter/t4;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/t4$p;->b:Lcom/join/mgps/adapter/t4;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090cf3

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/join/mgps/adapter/t4$p;->a:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

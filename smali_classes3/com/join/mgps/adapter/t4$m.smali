.class Lcom/join/mgps/adapter/t4$m;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PapaMainV2Adapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/t4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "m"
.end annotation


# instance fields
.field private a:Landroid/widget/FrameLayout;

.field private b:Lcom/join/mgps/customview/HorizontalRecyclerView;

.field final synthetic c:Lcom/join/mgps/adapter/t4;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/t4;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/join/mgps/adapter/t4;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/t4$m;->c:Lcom/join/mgps/adapter/t4;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090cf3

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/customview/HorizontalRecyclerView;

    iput-object p1, p0, Lcom/join/mgps/adapter/t4$m;->b:Lcom/join/mgps/customview/HorizontalRecyclerView;

    const p1, 0x7f0904d0

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/join/mgps/adapter/t4$m;->a:Landroid/widget/FrameLayout;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/t4$m;)Lcom/join/mgps/customview/HorizontalRecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/t4$m;->b:Lcom/join/mgps/customview/HorizontalRecyclerView;

    return-object p0
.end method

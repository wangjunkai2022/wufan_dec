.class Lcom/join/mgps/fragment/j2$f;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "GameFormFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/j2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field a:Lit/sephiroth/android/library/widget/HListView;

.field b:Landroid/widget/TextView;

.field final synthetic c:Lcom/join/mgps/fragment/j2;


# direct methods
.method public constructor <init>(Lcom/join/mgps/fragment/j2;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/join/mgps/fragment/j2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/j2$f;->c:Lcom/join/mgps/fragment/j2;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f09066e

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lit/sephiroth/android/library/widget/HListView;

    iput-object p1, p0, Lcom/join/mgps/fragment/j2$f;->a:Lit/sephiroth/android/library/widget/HListView;

    const p1, 0x7f09100f

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/fragment/j2$f;->b:Landroid/widget/TextView;

    return-void
.end method

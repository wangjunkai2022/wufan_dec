.class public Lcom/join/mgps/fragment/i3$u$b;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MyArchiveFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/i3$u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/ImageView;

.field c:Lcom/join/mgps/customview/ClouldItemView;

.field d:Landroid/widget/RelativeLayout;

.field final synthetic e:Lcom/join/mgps/fragment/i3$u;


# direct methods
.method public constructor <init>(Lcom/join/mgps/fragment/i3$u;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/i3$u$b;->e:Lcom/join/mgps/fragment/i3$u;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090818

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/mgps/fragment/i3$u$b;->a:Landroid/widget/ImageView;

    const p1, 0x7f090823

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/mgps/fragment/i3$u$b;->b:Landroid/widget/ImageView;

    const p1, 0x7f090303

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/customview/ClouldItemView;

    iput-object p1, p0, Lcom/join/mgps/fragment/i3$u$b;->c:Lcom/join/mgps/customview/ClouldItemView;

    const p1, 0x7f090d62

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/join/mgps/fragment/i3$u$b;->d:Landroid/widget/RelativeLayout;

    return-void
.end method

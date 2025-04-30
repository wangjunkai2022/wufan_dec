.class Lcom/join/mgps/adapter/t4$o;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PapaMainV2Adapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/t4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "o"
.end annotation


# instance fields
.field private a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private b:Lcom/join/mgps/customview/SlidingTabLayout6;

.field private c:Lcom/join/mgps/customview/RecyclerviewViewpager;

.field private d:Landroid/widget/LinearLayout;

.field final synthetic e:Lcom/join/mgps/adapter/t4;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/t4;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/join/mgps/adapter/t4;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/t4$o;->e:Lcom/join/mgps/adapter/t4;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090d90

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/join/mgps/adapter/t4$o;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    const p1, 0x7f090f0d

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/customview/SlidingTabLayout6;

    iput-object p1, p0, Lcom/join/mgps/adapter/t4$o;->b:Lcom/join/mgps/customview/SlidingTabLayout6;

    const p1, 0x7f091280

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/customview/RecyclerviewViewpager;

    iput-object p1, p0, Lcom/join/mgps/adapter/t4$o;->c:Lcom/join/mgps/customview/RecyclerviewViewpager;

    const p1, 0x7f090a8c

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/adapter/t4$o;->d:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/t4$o;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/t4$o;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/adapter/t4$o;)Lcom/join/mgps/customview/RecyclerviewViewpager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/t4$o;->c:Lcom/join/mgps/customview/RecyclerviewViewpager;

    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/adapter/t4$o;)Lcom/join/mgps/customview/SlidingTabLayout6;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/t4$o;->b:Lcom/join/mgps/customview/SlidingTabLayout6;

    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/adapter/t4$o;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/t4$o;->d:Landroid/widget/LinearLayout;

    return-object p0
.end method

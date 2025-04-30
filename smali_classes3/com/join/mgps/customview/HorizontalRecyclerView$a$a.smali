.class Lcom/join/mgps/customview/HorizontalRecyclerView$a$a;
.super Lcom/join/mgps/customview/HorizontalRecyclerView$b;
.source "HorizontalRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/HorizontalRecyclerView$a;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/HorizontalRecyclerView$a;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/HorizontalRecyclerView$a;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/HorizontalRecyclerView$a$a;->b:Lcom/join/mgps/customview/HorizontalRecyclerView$a;

    invoke-direct {p0, p2}, Lcom/join/mgps/customview/HorizontalRecyclerView$b;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

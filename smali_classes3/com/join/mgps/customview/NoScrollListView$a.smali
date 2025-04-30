.class Lcom/join/mgps/customview/NoScrollListView$a;
.super Ljava/lang/Object;
.source "NoScrollListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/NoScrollListView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/NoScrollListView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/NoScrollListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/NoScrollListView$a;->a:Lcom/join/mgps/customview/NoScrollListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    if-nez p2, :cond_1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/NoScrollListView$a;->a:Lcom/join/mgps/customview/NoScrollListView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/NoScrollListView$a;->a:Lcom/join/mgps/customview/NoScrollListView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/join/mgps/customview/NoScrollListView;->a(Lcom/join/mgps/customview/NoScrollListView;Z)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/NoScrollListView$a;->a:Lcom/join/mgps/customview/NoScrollListView;

    invoke-static {p1, p2}, Lcom/join/mgps/customview/NoScrollListView;->a(Lcom/join/mgps/customview/NoScrollListView;Z)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

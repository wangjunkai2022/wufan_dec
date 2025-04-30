.class Lin/srain/cube/views/GridViewWithHeaderAndFooter$e;
.super Ljava/lang/Object;
.source "GridViewWithHeaderAndFooter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/srain/cube/views/GridViewWithHeaderAndFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lin/srain/cube/views/GridViewWithHeaderAndFooter;


# direct methods
.method private constructor <init>(Lin/srain/cube/views/GridViewWithHeaderAndFooter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$e;->a:Lin/srain/cube/views/GridViewWithHeaderAndFooter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lin/srain/cube/views/GridViewWithHeaderAndFooter;Lin/srain/cube/views/GridViewWithHeaderAndFooter$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$e;-><init>(Lin/srain/cube/views/GridViewWithHeaderAndFooter;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$e;->a:Lin/srain/cube/views/GridViewWithHeaderAndFooter;

    invoke-static {v0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->a(Lin/srain/cube/views/GridViewWithHeaderAndFooter;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$e;->a:Lin/srain/cube/views/GridViewWithHeaderAndFooter;

    invoke-virtual {v0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->getHeaderViewCount()I

    move-result v0

    iget-object v1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$e;->a:Lin/srain/cube/views/GridViewWithHeaderAndFooter;

    invoke-static {v1}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->b(Lin/srain/cube/views/GridViewWithHeaderAndFooter;)I

    move-result v1

    mul-int v0, v0, v1

    sub-int v4, p3, v0

    if-ltz v4, :cond_0

    .line 3
    iget-object p3, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$e;->a:Lin/srain/cube/views/GridViewWithHeaderAndFooter;

    invoke-static {p3}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->a(Lin/srain/cube/views/GridViewWithHeaderAndFooter;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$e;->a:Lin/srain/cube/views/GridViewWithHeaderAndFooter;

    invoke-static {v0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->c(Lin/srain/cube/views/GridViewWithHeaderAndFooter;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$e;->a:Lin/srain/cube/views/GridViewWithHeaderAndFooter;

    invoke-virtual {v0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->getHeaderViewCount()I

    move-result v0

    iget-object v1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$e;->a:Lin/srain/cube/views/GridViewWithHeaderAndFooter;

    invoke-static {v1}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->b(Lin/srain/cube/views/GridViewWithHeaderAndFooter;)I

    move-result v1

    mul-int v0, v0, v1

    sub-int v4, p3, v0

    if-ltz v4, :cond_0

    .line 3
    iget-object p3, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$e;->a:Lin/srain/cube/views/GridViewWithHeaderAndFooter;

    invoke-static {p3}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->c(Lin/srain/cube/views/GridViewWithHeaderAndFooter;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

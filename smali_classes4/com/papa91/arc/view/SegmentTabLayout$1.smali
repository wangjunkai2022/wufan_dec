.class Lcom/papa91/arc/view/SegmentTabLayout$1;
.super Ljava/lang/Object;
.source "SegmentTabLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/view/SegmentTabLayout;->addTab(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/view/SegmentTabLayout;


# direct methods
.method constructor <init>(Lcom/papa91/arc/view/SegmentTabLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/view/SegmentTabLayout$1;->this$0:Lcom/papa91/arc/view/SegmentTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/view/SegmentTabLayout$1;->this$0:Lcom/papa91/arc/view/SegmentTabLayout;

    invoke-static {v0}, Lcom/papa91/arc/view/SegmentTabLayout;->access$000(Lcom/papa91/arc/view/SegmentTabLayout;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa91/arc/view/SegmentTabLayout$1;->this$0:Lcom/papa91/arc/view/SegmentTabLayout;

    invoke-virtual {v0, p1}, Lcom/papa91/arc/view/SegmentTabLayout;->setCurrentTab(I)V

    .line 4
    iget-object v0, p0, Lcom/papa91/arc/view/SegmentTabLayout$1;->this$0:Lcom/papa91/arc/view/SegmentTabLayout;

    invoke-static {v0}, Lcom/papa91/arc/view/SegmentTabLayout;->access$100(Lcom/papa91/arc/view/SegmentTabLayout;)Lcom/papa91/arc/view/OnTabSelectListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/papa91/arc/view/SegmentTabLayout$1;->this$0:Lcom/papa91/arc/view/SegmentTabLayout;

    invoke-static {v0}, Lcom/papa91/arc/view/SegmentTabLayout;->access$100(Lcom/papa91/arc/view/SegmentTabLayout;)Lcom/papa91/arc/view/OnTabSelectListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/papa91/arc/view/OnTabSelectListener;->onTabSelect(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/view/SegmentTabLayout$1;->this$0:Lcom/papa91/arc/view/SegmentTabLayout;

    invoke-static {v0}, Lcom/papa91/arc/view/SegmentTabLayout;->access$100(Lcom/papa91/arc/view/SegmentTabLayout;)Lcom/papa91/arc/view/OnTabSelectListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/papa91/arc/view/SegmentTabLayout$1;->this$0:Lcom/papa91/arc/view/SegmentTabLayout;

    invoke-static {v0}, Lcom/papa91/arc/view/SegmentTabLayout;->access$100(Lcom/papa91/arc/view/SegmentTabLayout;)Lcom/papa91/arc/view/OnTabSelectListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/papa91/arc/view/OnTabSelectListener;->onTabReselect(I)V

    :cond_1
    :goto_0
    return-void
.end method

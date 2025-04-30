.class Lm/framework/ui/widget/pulltorefresh/ScrollableGridView$1;
.super Ljava/lang/Object;
.source "ScrollableGridView.java"

# interfaces
.implements Lm/framework/ui/widget/pulltorefresh/OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm/framework/ui/widget/pulltorefresh/ScrollableGridView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lm/framework/ui/widget/pulltorefresh/ScrollableGridView;


# direct methods
.method constructor <init>(Lm/framework/ui/widget/pulltorefresh/ScrollableGridView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm/framework/ui/widget/pulltorefresh/ScrollableGridView$1;->this$0:Lm/framework/ui/widget/pulltorefresh/ScrollableGridView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged(Lm/framework/ui/widget/pulltorefresh/Scrollable;IIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lm/framework/ui/widget/pulltorefresh/ScrollableGridView$1;->this$0:Lm/framework/ui/widget/pulltorefresh/ScrollableGridView;

    if-gtz p3, :cond_0

    if-gtz p5, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lm/framework/ui/widget/pulltorefresh/ScrollableGridView;->access$0(Lm/framework/ui/widget/pulltorefresh/ScrollableGridView;Z)V

    return-void
.end method

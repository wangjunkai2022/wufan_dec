.class Lcom/join/mgps/customview/ScrollViewContainer$b;
.super Ljava/lang/Object;
.source "ScrollViewContainer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/ScrollViewContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/ScrollViewContainer;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/ScrollViewContainer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer$b;->a:Lcom/join/mgps/customview/ScrollViewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    check-cast p1, Landroid/widget/ScrollView;

    .line 2
    iget-object p2, p0, Lcom/join/mgps/customview/ScrollViewContainer$b;->a:Lcom/join/mgps/customview/ScrollViewContainer;

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 3
    invoke-virtual {p1}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr v2, p1

    if-ne v0, v2, :cond_0

    iget-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer$b;->a:Lcom/join/mgps/customview/ScrollViewContainer;

    invoke-static {p1}, Lcom/join/mgps/customview/ScrollViewContainer;->h(Lcom/join/mgps/customview/ScrollViewContainer;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-static {p2, p1}, Lcom/join/mgps/customview/ScrollViewContainer;->k(Lcom/join/mgps/customview/ScrollViewContainer;Z)Z

    return v1
.end method

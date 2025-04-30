.class Lcom/join/mgps/customview/ScrollViewContainer$c;
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
    iput-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer$c;->a:Lcom/join/mgps/customview/ScrollViewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    check-cast p1, Landroid/widget/ScrollView;

    .line 2
    iget-object p2, p0, Lcom/join/mgps/customview/ScrollViewContainer$c;->a:Lcom/join/mgps/customview/ScrollViewContainer;

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer$c;->a:Lcom/join/mgps/customview/ScrollViewContainer;

    invoke-static {p1}, Lcom/join/mgps/customview/ScrollViewContainer;->h(Lcom/join/mgps/customview/ScrollViewContainer;)I

    move-result p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p2, v0}, Lcom/join/mgps/customview/ScrollViewContainer;->l(Lcom/join/mgps/customview/ScrollViewContainer;Z)Z

    return v1
.end method

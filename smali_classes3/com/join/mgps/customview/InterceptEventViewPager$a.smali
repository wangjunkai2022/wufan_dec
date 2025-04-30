.class Lcom/join/mgps/customview/InterceptEventViewPager$a;
.super Ljava/lang/Object;
.source "InterceptEventViewPager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/InterceptEventViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/InterceptEventViewPager;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/InterceptEventViewPager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager$a;->a:Lcom/join/mgps/customview/InterceptEventViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/customview/InterceptEventViewPager$a;->a:Lcom/join/mgps/customview/InterceptEventViewPager;

    invoke-virtual {v0}, Lcom/join/mgps/customview/InterceptEventViewPager;->o()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/customview/InterceptEventViewPager$a;->a:Lcom/join/mgps/customview/InterceptEventViewPager;

    invoke-virtual {v0}, Lcom/join/mgps/customview/InterceptEventViewPager;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 4
    iget-object p2, p0, Lcom/join/mgps/customview/InterceptEventViewPager$a;->a:Lcom/join/mgps/customview/InterceptEventViewPager;

    invoke-virtual {p2}, Lcom/join/mgps/customview/InterceptEventViewPager;->o()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/join/mgps/customview/InterceptEventViewPager$a;->a:Lcom/join/mgps/customview/InterceptEventViewPager;

    invoke-static {p2}, Lcom/join/mgps/customview/InterceptEventViewPager;->a(Lcom/join/mgps/customview/InterceptEventViewPager;)I

    move-result p2

    if-nez p2, :cond_1

    .line 5
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/customview/InterceptEventViewPager$a;->a:Lcom/join/mgps/customview/InterceptEventViewPager;

    invoke-virtual {p2}, Lcom/join/mgps/customview/InterceptEventViewPager;->p()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/join/mgps/customview/InterceptEventViewPager$a;->a:Lcom/join/mgps/customview/InterceptEventViewPager;

    invoke-static {p2}, Lcom/join/mgps/customview/InterceptEventViewPager;->a(Lcom/join/mgps/customview/InterceptEventViewPager;)I

    move-result p2

    iget-object v0, p0, Lcom/join/mgps/customview/InterceptEventViewPager$a;->a:Lcom/join/mgps/customview/InterceptEventViewPager;

    invoke-static {v0}, Lcom/join/mgps/customview/InterceptEventViewPager;->c(Lcom/join/mgps/customview/InterceptEventViewPager;)I

    move-result v0

    sub-int/2addr v0, v1

    if-ne p2, v0, :cond_2

    .line 7
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 8
    :cond_2
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_3
    :goto_0
    return v2
.end method

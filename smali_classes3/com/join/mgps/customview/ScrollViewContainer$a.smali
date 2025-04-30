.class Lcom/join/mgps/customview/ScrollViewContainer$a;
.super Landroid/os/Handler;
.source "ScrollViewContainer.java"


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
    iput-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer$a;->a:Lcom/join/mgps/customview/ScrollViewContainer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer$a;->a:Lcom/join/mgps/customview/ScrollViewContainer;

    invoke-static {p1}, Lcom/join/mgps/customview/ScrollViewContainer;->a(Lcom/join/mgps/customview/ScrollViewContainer;)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer$a;->a:Lcom/join/mgps/customview/ScrollViewContainer;

    invoke-static {p1}, Lcom/join/mgps/customview/ScrollViewContainer;->e(Lcom/join/mgps/customview/ScrollViewContainer;)I

    move-result p1

    const/4 v1, 0x2

    const/high16 v2, 0x40d00000    # 6.5f

    const/4 v3, 0x1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer$a;->a:Lcom/join/mgps/customview/ScrollViewContainer;

    invoke-static {p1, v2}, Lcom/join/mgps/customview/ScrollViewContainer;->d(Lcom/join/mgps/customview/ScrollViewContainer;F)F

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer$a;->a:Lcom/join/mgps/customview/ScrollViewContainer;

    invoke-static {p1}, Lcom/join/mgps/customview/ScrollViewContainer;->a(Lcom/join/mgps/customview/ScrollViewContainer;)F

    move-result p1

    iget-object v0, p0, Lcom/join/mgps/customview/ScrollViewContainer$a;->a:Lcom/join/mgps/customview/ScrollViewContainer;

    invoke-static {v0}, Lcom/join/mgps/customview/ScrollViewContainer;->g(Lcom/join/mgps/customview/ScrollViewContainer;)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer$a;->a:Lcom/join/mgps/customview/ScrollViewContainer;

    invoke-static {p1}, Lcom/join/mgps/customview/ScrollViewContainer;->g(Lcom/join/mgps/customview/ScrollViewContainer;)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/join/mgps/customview/ScrollViewContainer;->b(Lcom/join/mgps/customview/ScrollViewContainer;F)F

    .line 6
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer$a;->a:Lcom/join/mgps/customview/ScrollViewContainer;

    invoke-static {p1, v1}, Lcom/join/mgps/customview/ScrollViewContainer;->f(Lcom/join/mgps/customview/ScrollViewContainer;I)I

    .line 7
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer$a;->a:Lcom/join/mgps/customview/ScrollViewContainer;

    invoke-static {p1, v3}, Lcom/join/mgps/customview/ScrollViewContainer;->i(Lcom/join/mgps/customview/ScrollViewContainer;I)I

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer$a;->a:Lcom/join/mgps/customview/ScrollViewContainer;

    invoke-static {p1}, Lcom/join/mgps/customview/ScrollViewContainer;->e(Lcom/join/mgps/customview/ScrollViewContainer;)I

    move-result p1

    if-ne p1, v3, :cond_1

    .line 9
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer$a;->a:Lcom/join/mgps/customview/ScrollViewContainer;

    invoke-static {p1, v2}, Lcom/join/mgps/customview/ScrollViewContainer;->c(Lcom/join/mgps/customview/ScrollViewContainer;F)F

    .line 10
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer$a;->a:Lcom/join/mgps/customview/ScrollViewContainer;

    invoke-static {p1}, Lcom/join/mgps/customview/ScrollViewContainer;->a(Lcom/join/mgps/customview/ScrollViewContainer;)F

    move-result p1

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer$a;->a:Lcom/join/mgps/customview/ScrollViewContainer;

    invoke-static {p1, v0}, Lcom/join/mgps/customview/ScrollViewContainer;->b(Lcom/join/mgps/customview/ScrollViewContainer;F)F

    .line 12
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer$a;->a:Lcom/join/mgps/customview/ScrollViewContainer;

    invoke-static {p1, v1}, Lcom/join/mgps/customview/ScrollViewContainer;->f(Lcom/join/mgps/customview/ScrollViewContainer;I)I

    .line 13
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer$a;->a:Lcom/join/mgps/customview/ScrollViewContainer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/join/mgps/customview/ScrollViewContainer;->i(Lcom/join/mgps/customview/ScrollViewContainer;I)I

    goto :goto_0

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer$a;->a:Lcom/join/mgps/customview/ScrollViewContainer;

    invoke-static {p1}, Lcom/join/mgps/customview/ScrollViewContainer;->j(Lcom/join/mgps/customview/ScrollViewContainer;)Lcom/join/mgps/customview/ScrollViewContainer$d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/customview/ScrollViewContainer$d;->a()V

    .line 15
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer$a;->a:Lcom/join/mgps/customview/ScrollViewContainer;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method

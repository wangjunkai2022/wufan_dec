.class Lcom/join/mgps/customview/XListView2$b;
.super Lcom/join/mgps/ptr/a;
.source "XListView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/XListView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/XListView2;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/XListView2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/XListView2$b;->a:Lcom/join/mgps/customview/XListView2;

    invoke-direct {p0}, Lcom/join/mgps/ptr/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView2$b;->a:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0, p1, p2, p3}, Lcom/join/mgps/customview/XListView2;->c(Lcom/join/mgps/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 0

    const-string p1, "onRefreshBegin----------"

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/t0;->g(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/XListView2$b;->a:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->s()V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/XListView2$b;->a:Lcom/join/mgps/customview/XListView2;

    invoke-static {p1}, Lcom/join/mgps/customview/XListView2;->b(Lcom/join/mgps/customview/XListView2;)Lcom/join/mgps/customview/j;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/XListView2$b;->a:Lcom/join/mgps/customview/XListView2;

    invoke-static {p1}, Lcom/join/mgps/customview/XListView2;->b(Lcom/join/mgps/customview/XListView2;)Lcom/join/mgps/customview/j;

    move-result-object p1

    invoke-interface {p1}, Lcom/join/mgps/customview/j;->onRefresh()V

    :cond_0
    return-void
.end method

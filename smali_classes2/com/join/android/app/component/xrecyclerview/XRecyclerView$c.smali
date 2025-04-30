.class Lcom/join/android/app/component/xrecyclerview/XRecyclerView$c;
.super Ljava/lang/Object;
.source "XRecyclerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->g1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/xrecyclerview/XRecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$c;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$c;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-static {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->Y0(Lcom/join/android/app/component/xrecyclerview/XRecyclerView;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$c;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->L1:Z

    .line 3
    iget-object p1, p1, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->K1:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 4
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$c;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-static {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->R0(Lcom/join/android/app/component/xrecyclerview/XRecyclerView;)Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$c;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-static {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->R0(Lcom/join/android/app/component/xrecyclerview/XRecyclerView;)Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;

    move-result-object p1

    invoke-interface {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;->onLoadMore()V

    :cond_1
    return-void
.end method

.class Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$c;
.super Ljava/lang/Object;
.source "XRecyclerView2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->setNoMore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$c;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$c;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    invoke-static {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->R0(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$g;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$c;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    invoke-static {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->R0(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$g;

    move-result-object p1

    invoke-interface {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$g;->onRefresh()V

    .line 3
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$c;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    iget-object p1, p1, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->K1:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 4
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$c;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->W0(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;Z)Z

    .line 5
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$c;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    iget-object p1, p1, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->K1:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

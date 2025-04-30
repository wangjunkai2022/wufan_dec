.class Lcom/join/mgps/base/BaseQuickAdapter$c;
.super Ljava/lang/Object;
.source "BaseQuickAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/base/BaseQuickAdapter;->getLoadingView(Landroid/view/ViewGroup;)Lcom/join/mgps/base/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/base/BaseQuickAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/base/BaseQuickAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter$c;->a:Lcom/join/mgps/base/BaseQuickAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter$c;->a:Lcom/join/mgps/base/BaseQuickAdapter;

    invoke-static {p1}, Lcom/join/mgps/base/BaseQuickAdapter;->access$200(Lcom/join/mgps/base/BaseQuickAdapter;)Lcom/join/mgps/base/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/base/c;->e()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter$c;->a:Lcom/join/mgps/base/BaseQuickAdapter;

    invoke-virtual {p1}, Lcom/join/mgps/base/BaseQuickAdapter;->notifyLoadMoreToLoading()V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter$c;->a:Lcom/join/mgps/base/BaseQuickAdapter;

    invoke-static {p1}, Lcom/join/mgps/base/BaseQuickAdapter;->access$300(Lcom/join/mgps/base/BaseQuickAdapter;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter$c;->a:Lcom/join/mgps/base/BaseQuickAdapter;

    invoke-static {p1}, Lcom/join/mgps/base/BaseQuickAdapter;->access$200(Lcom/join/mgps/base/BaseQuickAdapter;)Lcom/join/mgps/base/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/base/c;->e()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter$c;->a:Lcom/join/mgps/base/BaseQuickAdapter;

    invoke-virtual {p1}, Lcom/join/mgps/base/BaseQuickAdapter;->notifyLoadMoreToLoading()V

    :cond_1
    return-void
.end method

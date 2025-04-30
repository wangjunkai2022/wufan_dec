.class Lcom/join/mgps/base/b$b;
.super Ljava/lang/Object;
.source "BaseViewHolder.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/base/b;->d([I)Lcom/join/mgps/base/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/base/b;


# direct methods
.method constructor <init>(Lcom/join/mgps/base/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/base/b$b;->a:Lcom/join/mgps/base/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/base/b$b;->a:Lcom/join/mgps/base/b;

    invoke-static {v0}, Lcom/join/mgps/base/b;->a(Lcom/join/mgps/base/b;)Lcom/join/mgps/base/BaseQuickAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/base/BaseQuickAdapter;->getOnItemChildLongClickListener()Lcom/join/mgps/base/BaseQuickAdapter$h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/base/b$b;->a:Lcom/join/mgps/base/b;

    .line 2
    invoke-static {v0}, Lcom/join/mgps/base/b;->a(Lcom/join/mgps/base/b;)Lcom/join/mgps/base/BaseQuickAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/base/BaseQuickAdapter;->getOnItemChildLongClickListener()Lcom/join/mgps/base/BaseQuickAdapter$h;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/base/b$b;->a:Lcom/join/mgps/base/b;

    invoke-static {v1}, Lcom/join/mgps/base/b;->a(Lcom/join/mgps/base/b;)Lcom/join/mgps/base/BaseQuickAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/base/b$b;->a:Lcom/join/mgps/base/b;

    invoke-static {v2}, Lcom/join/mgps/base/b;->b(Lcom/join/mgps/base/b;)I

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Lcom/join/mgps/base/BaseQuickAdapter$h;->a(Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.class Lcom/join/mgps/base/BaseQuickAdapter$f;
.super Ljava/lang/Object;
.source "BaseQuickAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/base/BaseQuickAdapter;->bindViewClickListener(Lcom/join/mgps/base/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/base/b;

.field final synthetic b:Lcom/join/mgps/base/BaseQuickAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/base/BaseQuickAdapter;Lcom/join/mgps/base/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter$f;->b:Lcom/join/mgps/base/BaseQuickAdapter;

    iput-object p2, p0, Lcom/join/mgps/base/BaseQuickAdapter$f;->a:Lcom/join/mgps/base/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter$f;->a:Lcom/join/mgps/base/b;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/base/BaseQuickAdapter$f;->b:Lcom/join/mgps/base/BaseQuickAdapter;

    invoke-virtual {v1}, Lcom/join/mgps/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 3
    iget-object v1, p0, Lcom/join/mgps/base/BaseQuickAdapter$f;->b:Lcom/join/mgps/base/BaseQuickAdapter;

    invoke-virtual {v1, p1, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnItemLongClick(Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

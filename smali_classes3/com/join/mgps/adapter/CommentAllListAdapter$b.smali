.class Lcom/join/mgps/adapter/CommentAllListAdapter$b;
.super Ljava/lang/Object;
.source "CommentAllListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/CommentAllListAdapter;->e(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/adapter/CommentAllListAdapter$g;

.field final synthetic b:Lcom/join/mgps/dto/CommentBaseBean;

.field final synthetic c:Lcom/join/mgps/adapter/CommentAllListAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/CommentAllListAdapter;Lcom/join/mgps/adapter/CommentAllListAdapter$g;Lcom/join/mgps/dto/CommentBaseBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentAllListAdapter$b;->c:Lcom/join/mgps/adapter/CommentAllListAdapter;

    iput-object p2, p0, Lcom/join/mgps/adapter/CommentAllListAdapter$b;->a:Lcom/join/mgps/adapter/CommentAllListAdapter$g;

    iput-object p3, p0, Lcom/join/mgps/adapter/CommentAllListAdapter$b;->b:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListAdapter$b;->a:Lcom/join/mgps/adapter/CommentAllListAdapter$g;

    invoke-static {v0}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->g(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_4

    const/4 v3, 0x5

    const/4 v4, 0x0

    if-le v2, v3, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListAdapter$b;->a:Lcom/join/mgps/adapter/CommentAllListAdapter$g;

    invoke-static {v0}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->i(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 4
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListAdapter$b;->a:Lcom/join/mgps/adapter/CommentAllListAdapter$g;

    invoke-static {v0}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->i(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListAdapter$b;->b:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->isShowMore()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListAdapter$b;->a:Lcom/join/mgps/adapter/CommentAllListAdapter$g;

    invoke-static {v0}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->i(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListAdapter$b;->a:Lcom/join/mgps/adapter/CommentAllListAdapter$g;

    invoke-static {v0}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->i(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListAdapter$b;->a:Lcom/join/mgps/adapter/CommentAllListAdapter$g;

    invoke-static {v0}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->i(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void
.end method

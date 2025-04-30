.class Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$b;
.super Ljava/lang/Object;
.source "CommentAllListFragmentAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/CommentBaseBean;

.field final synthetic b:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;

.field final synthetic c:I

.field final synthetic d:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;Lcom/join/mgps/dto/CommentBaseBean;Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$b;->d:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;

    iput-object p2, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$b;->a:Lcom/join/mgps/dto/CommentBaseBean;

    iput-object p3, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$b;->b:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;

    iput p4, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$b;->a:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->isShowMore()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$b;->b:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;

    invoke-static {v0}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->o(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    if-lez v4, :cond_5

    sub-int/2addr v4, v3

    .line 4
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$b;->a:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/CommentBaseBean;->setShowMore(Z)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$b;->b:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;

    invoke-static {v0}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->l(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$b;->d:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->a(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;)Ljava/util/Map;

    move-result-object v0

    iget v4, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$b;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$b;->a:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/CommentBaseBean;->setShowMore(Z)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$b;->b:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;

    invoke-static {v0}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->l(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$b;->b:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;

    invoke-static {v0}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->l(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$b;->a:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x73

    if-le v0, v4, :cond_4

    .line 12
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$b;->a:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/CommentBaseBean;->setShowMore(Z)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$b;->b:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;

    invoke-static {v0}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->l(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$b;->b:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;

    invoke-static {v0}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->l(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    :goto_0
    return-void
.end method

.class Lcom/join/mgps/adapter/l1$y0;
.super Ljava/lang/Object;
.source "GameDetialModleFourAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/l1;->F(Landroid/view/View;Lcom/join/mgps/adapter/l1$r1;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/dto/InformationCommentBean;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Lcom/join/mgps/adapter/l1;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/l1;ILcom/join/mgps/dto/InformationCommentBean;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/l1$y0;->e:Lcom/join/mgps/adapter/l1;

    iput p2, p0, Lcom/join/mgps/adapter/l1$y0;->a:I

    iput-object p3, p0, Lcom/join/mgps/adapter/l1$y0;->b:Lcom/join/mgps/dto/InformationCommentBean;

    iput-object p4, p0, Lcom/join/mgps/adapter/l1$y0;->c:Ljava/lang/String;

    iput p5, p0, Lcom/join/mgps/adapter/l1$y0;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_0
    iget v3, p0, Lcom/join/mgps/adapter/l1$y0;->a:I

    if-ge v0, v3, :cond_3

    .line 2
    new-instance v3, Lcom/join/mgps/dto/InformationCommentBean;

    iget-object v4, p0, Lcom/join/mgps/adapter/l1$y0;->b:Lcom/join/mgps/dto/InformationCommentBean;

    invoke-direct {v3, v4}, Lcom/join/mgps/dto/InformationCommentBean;-><init>(Lcom/join/mgps/dto/InformationCommentBean;)V

    .line 3
    invoke-virtual {v3}, Lcom/join/mgps/dto/InformationCommentBean;->getSub()Ljava/util/List;

    move-result-object v4

    .line 4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v6, v0, 0x3

    .line 5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ge v6, v7, :cond_0

    .line 6
    invoke-interface {v4, v0, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 7
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v4, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x1

    .line 8
    :goto_1
    invoke-virtual {v3, v5}, Lcom/join/mgps/dto/InformationCommentBean;->setSub(Ljava/util/List;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/adapter/l1$y0;->e:Lcom/join/mgps/adapter/l1;

    iget-object v4, p0, Lcom/join/mgps/adapter/l1$y0;->c:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v0, v4, v3, p1, v5}, Lcom/join/mgps/adapter/l1;->p(Ljava/lang/String;Lcom/join/mgps/dto/InformationCommentBean;IZ)Lcom/join/mgps/adapter/l1$n1;

    move-result-object v0

    .line 10
    iget-object v3, v0, Lcom/join/mgps/adapter/l1$n1;->a:Ljava/lang/Object;

    check-cast v3, Lcom/join/mgps/adapter/l1$r1;

    .line 11
    iput v1, v3, Lcom/join/mgps/adapter/l1$r1;->e:I

    .line 12
    iput-boolean v2, v3, Lcom/join/mgps/adapter/l1$r1;->f:Z

    if-nez v1, :cond_2

    const/4 v4, 0x1

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    .line 13
    :goto_3
    iput-boolean v4, v3, Lcom/join/mgps/adapter/l1$r1;->d:Z

    .line 14
    iget-object v3, p0, Lcom/join/mgps/adapter/l1$y0;->e:Lcom/join/mgps/adapter/l1;

    xor-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v0, v4}, Lcom/join/mgps/adapter/l1;->J(Lcom/join/mgps/adapter/l1$n1;Z)V

    .line 15
    iget-object v3, p0, Lcom/join/mgps/adapter/l1$y0;->e:Lcom/join/mgps/adapter/l1;

    invoke-static {v3}, Lcom/join/mgps/adapter/l1;->j(Lcom/join/mgps/adapter/l1;)Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/join/mgps/adapter/l1$y0;->d:I

    add-int/2addr v4, v1

    add-int/2addr v4, v8

    invoke-interface {v3, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    move v0, v6

    goto :goto_0

    .line 16
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/adapter/l1$y0;->e:Lcom/join/mgps/adapter/l1;

    invoke-static {p1}, Lcom/join/mgps/adapter/l1;->j(Lcom/join/mgps/adapter/l1;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/join/mgps/adapter/l1$y0;->d:I

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 17
    iget-object p1, p0, Lcom/join/mgps/adapter/l1$y0;->e:Lcom/join/mgps/adapter/l1;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

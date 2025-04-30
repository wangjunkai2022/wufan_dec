.class Lcom/join/mgps/adapter/MGGameDetailAdapter$l0;
.super Ljava/lang/Object;
.source "MGGameDetailAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/MGGameDetailAdapter;->Q(Landroid/view/View;Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$r;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$r;

.field final synthetic e:Lcom/join/mgps/adapter/MGGameDetailAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;IILjava/lang/String;Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$l0;->e:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    iput p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$l0;->a:I

    iput p3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$l0;->b:I

    iput-object p4, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$l0;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$l0;->d:Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$l0;->a:I

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Lcom/join/mgps/dto/InformationCommentBean;

    invoke-direct {p1}, Lcom/join/mgps/dto/InformationCommentBean;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$l0;->a:I

    :goto_0
    if-ltz v1, :cond_3

    .line 5
    iget-object v2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$l0;->e:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->c(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$l0;->b:I

    sub-int/2addr v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;->b()Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    move-result-object v4

    sget-object v5, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->COMMIT_REPLY:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    if-ne v4, v5, :cond_1

    .line 7
    invoke-virtual {v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;->a()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$r;

    :cond_1
    if-eqz v3, :cond_2

    .line 8
    iget-object v2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$l0;->c:Ljava/lang/String;

    iget-object v4, v3, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$r;->a:Ljava/lang/String;

    if-ne v2, v4, :cond_2

    .line 9
    iget-object v2, v3, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$r;->b:Lcom/join/mgps/dto/InformationCommentBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/InformationCommentBean;->getSub()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 10
    :goto_1
    iget v2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$l0;->a:I

    if-gt v1, v2, :cond_4

    .line 11
    iget-object v2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$l0;->e:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->c(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$l0;->b:I

    sub-int/2addr v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 12
    :cond_4
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/InformationCommentBean;->setSub(Ljava/util/List;)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$l0;->e:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    iget-object v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$l0;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$l0;->d:Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$r;

    iget v2, v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$r;->c:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->l(Ljava/lang/String;Lcom/join/mgps/dto/InformationCommentBean;IZ)Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    move-result-object p1

    .line 14
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$l0;->e:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->c(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$l0;->b:I

    iget v2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$l0;->a:I

    sub-int/2addr v1, v2

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$l0;->e:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

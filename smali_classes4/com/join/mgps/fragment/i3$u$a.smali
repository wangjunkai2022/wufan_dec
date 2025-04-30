.class Lcom/join/mgps/fragment/i3$u$a;
.super Ljava/lang/Object;
.source "MyArchiveFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/i3$u;->a(Lcom/join/mgps/fragment/i3$u$b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/fragment/i3$u$b;

.field final synthetic c:Lcom/join/mgps/fragment/i3$u;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/i3$u;ILcom/join/mgps/fragment/i3$u$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/i3$u$a;->c:Lcom/join/mgps/fragment/i3$u;

    iput p2, p0, Lcom/join/mgps/fragment/i3$u$a;->a:I

    iput-object p3, p0, Lcom/join/mgps/fragment/i3$u$a;->b:Lcom/join/mgps/fragment/i3$u$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/i3$u$a;->c:Lcom/join/mgps/fragment/i3$u;

    iget-object p1, p1, Lcom/join/mgps/fragment/i3$u;->c:Lcom/join/mgps/fragment/i3;

    iget-object p1, p1, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    iget v0, p0, Lcom/join/mgps/fragment/i3$u$a;->a:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getIsCheck()I

    move-result p1

    const-string v0, "\u4e2a\u5b58\u6863"

    const-string v1, "\u5df2\u9009\u62e9"

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p1, :cond_c

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/i3$u$a;->c:Lcom/join/mgps/fragment/i3$u;

    iget-object p1, p1, Lcom/join/mgps/fragment/i3$u;->c:Lcom/join/mgps/fragment/i3;

    iget v5, p1, Lcom/join/mgps/fragment/i3;->t:I

    const/4 v6, 0x2

    const v7, 0x7f08016a

    if-ne v5, v6, :cond_5

    .line 3
    iget-object p1, p1, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    iget v5, p0, Lcom/join/mgps/fragment/i3$u$a;->a:I

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    move-result p1

    const/4 v5, 0x5

    if-eq p1, v5, :cond_4

    .line 4
    iget-object p1, p0, Lcom/join/mgps/fragment/i3$u$a;->b:Lcom/join/mgps/fragment/i3$u$b;

    iget-object p1, p1, Lcom/join/mgps/fragment/i3$u$b;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/fragment/i3$u$a;->b:Lcom/join/mgps/fragment/i3$u$b;

    iget-object p1, p1, Lcom/join/mgps/fragment/i3$u$b;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/fragment/i3$u$a;->c:Lcom/join/mgps/fragment/i3$u;

    iget-object p1, p1, Lcom/join/mgps/fragment/i3$u;->c:Lcom/join/mgps/fragment/i3;

    iget-object p1, p1, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    iget v2, p0, Lcom/join/mgps/fragment/i3$u$a;->a:I

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {p1, v4}, Lcom/join/mgps/dto/CloudListDataBean;->setIsCheck(I)V

    const/4 p1, 0x0

    const/4 v2, 0x0

    .line 7
    :goto_0
    iget-object v6, p0, Lcom/join/mgps/fragment/i3$u$a;->c:Lcom/join/mgps/fragment/i3$u;

    iget-object v6, v6, Lcom/join/mgps/fragment/i3$u;->c:Lcom/join/mgps/fragment/i3;

    iget-object v6, v6, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge p1, v6, :cond_1

    .line 8
    iget-object v6, p0, Lcom/join/mgps/fragment/i3$u$a;->c:Lcom/join/mgps/fragment/i3$u;

    iget-object v6, v6, Lcom/join/mgps/fragment/i3$u;->c:Lcom/join/mgps/fragment/i3;

    iget-object v6, v6, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/CloudListDataBean;->getIsCheck()I

    move-result v6

    if-ne v6, v4, :cond_0

    iget-object v6, p0, Lcom/join/mgps/fragment/i3$u$a;->c:Lcom/join/mgps/fragment/i3$u;

    iget-object v6, v6, Lcom/join/mgps/fragment/i3$u;->c:Lcom/join/mgps/fragment/i3;

    iget-object v6, v6, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    move-result v6

    if-eq v6, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 9
    :goto_1
    iget-object v6, p0, Lcom/join/mgps/fragment/i3$u$a;->c:Lcom/join/mgps/fragment/i3$u;

    iget-object v6, v6, Lcom/join/mgps/fragment/i3$u;->c:Lcom/join/mgps/fragment/i3;

    iget-object v6, v6, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 10
    iget-object v6, p0, Lcom/join/mgps/fragment/i3$u$a;->c:Lcom/join/mgps/fragment/i3$u;

    iget-object v6, v6, Lcom/join/mgps/fragment/i3$u;->c:Lcom/join/mgps/fragment/i3;

    iget-object v6, v6, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    move-result v6

    if-ne v6, v5, :cond_2

    add-int/lit8 p1, p1, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 11
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSS-->"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "ssss->"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    iget-object v3, p0, Lcom/join/mgps/fragment/i3$u$a;->c:Lcom/join/mgps/fragment/i3$u;

    iget-object v3, v3, Lcom/join/mgps/fragment/i3$u;->c:Lcom/join/mgps/fragment/i3;

    iget-object v3, v3, Lcom/join/mgps/fragment/i3;->c:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/fragment/i3$u$a;->c:Lcom/join/mgps/fragment/i3$u;

    iget-object v0, v0, Lcom/join/mgps/fragment/i3$u;->c:Lcom/join/mgps/fragment/i3;

    iget-object v0, v0, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p1

    if-ne v0, v2, :cond_b

    .line 14
    iget-object p1, p0, Lcom/join/mgps/fragment/i3$u$a;->c:Lcom/join/mgps/fragment/i3$u;

    iget-object p1, p1, Lcom/join/mgps/fragment/i3$u;->c:Lcom/join/mgps/fragment/i3;

    iput-boolean v4, p1, Lcom/join/mgps/fragment/i3;->J:Z

    .line 15
    iget-object p1, p1, Lcom/join/mgps/fragment/i3;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_4

    .line 16
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/fragment/i3$u$a;->c:Lcom/join/mgps/fragment/i3$u;

    iget-object p1, p1, Lcom/join/mgps/fragment/i3$u;->c:Lcom/join/mgps/fragment/i3;

    const-string v0, "\u5df2\u5907\u4efd"

    invoke-virtual {p1, v0}, Lcom/join/mgps/fragment/i3;->v0(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 17
    :cond_5
    iget-object p1, p1, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    iget v5, p0, Lcom/join/mgps/fragment/i3$u$a;->a:I

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    move-result p1

    if-eqz p1, :cond_a

    .line 18
    iget-object p1, p0, Lcom/join/mgps/fragment/i3$u$a;->b:Lcom/join/mgps/fragment/i3$u$b;

    iget-object p1, p1, Lcom/join/mgps/fragment/i3$u$b;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    iget-object p1, p0, Lcom/join/mgps/fragment/i3$u$a;->b:Lcom/join/mgps/fragment/i3$u$b;

    iget-object p1, p1, Lcom/join/mgps/fragment/i3$u$b;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 20
    iget-object p1, p0, Lcom/join/mgps/fragment/i3$u$a;->c:Lcom/join/mgps/fragment/i3$u;

    iget-object p1, p1, Lcom/join/mgps/fragment/i3$u;->c:Lcom/join/mgps/fragment/i3;

    iget-object p1, p1, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    iget v2, p0, Lcom/join/mgps/fragment/i3$u$a;->a:I

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {p1, v4}, Lcom/join/mgps/dto/CloudListDataBean;->setIsCheck(I)V

    const/4 p1, 0x0

    const/4 v2, 0x0

    .line 21
    :goto_2
    iget-object v5, p0, Lcom/join/mgps/fragment/i3$u$a;->c:Lcom/join/mgps/fragment/i3$u;

    iget-object v5, v5, Lcom/join/mgps/fragment/i3$u;->c:Lcom/join/mgps/fragment/i3;

    iget-object v5, v5, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge p1, v5, :cond_7

    .line 22
    iget-object v5, p0, Lcom/join/mgps/fragment/i3$u$a;->c:Lcom/join/mgps/fragment/i3$u;

    iget-object v5, v5, Lcom/join/mgps/fragment/i3$u;->c:Lcom/join/mgps/fragment/i3;

    iget-object v5, v5, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/CloudListDataBean;->getIsCheck()I

    move-result v5

    if-ne v5, v4, :cond_6

    iget-object v5, p0, Lcom/join/mgps/fragment/i3$u$a;->c:Lcom/join/mgps/fragment/i3$u;

    iget-object v5, v5, Lcom/join/mgps/fragment/i3$u;->c:Lcom/join/mgps/fragment/i3;

    iget-object v5, v5, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    move-result v5

    if-eqz v5, :cond_6

    add-int/lit8 v2, v2, 0x1

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    .line 23
    :goto_3
    iget-object v5, p0, Lcom/join/mgps/fragment/i3$u$a;->c:Lcom/join/mgps/fragment/i3$u;

    iget-object v5, v5, Lcom/join/mgps/fragment/i3$u;->c:Lcom/join/mgps/fragment/i3;

    iget-object v5, v5, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_9

    .line 24
    iget-object v5, p0, Lcom/join/mgps/fragment/i3$u$a;->c:Lcom/join/mgps/fragment/i3$u;

    iget-object v5, v5, Lcom/join/mgps/fragment/i3$u;->c:Lcom/join/mgps/fragment/i3;

    iget-object v5, v5, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    move-result v5

    if-nez v5, :cond_8

    add-int/lit8 p1, p1, 0x1

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 25
    :cond_9
    iget-object v3, p0, Lcom/join/mgps/fragment/i3$u$a;->c:Lcom/join/mgps/fragment/i3$u;

    iget-object v3, v3, Lcom/join/mgps/fragment/i3$u;->c:Lcom/join/mgps/fragment/i3;

    iget-object v3, v3, Lcom/join/mgps/fragment/i3;->c:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v0, p0, Lcom/join/mgps/fragment/i3$u$a;->c:Lcom/join/mgps/fragment/i3$u;

    iget-object v0, v0, Lcom/join/mgps/fragment/i3$u;->c:Lcom/join/mgps/fragment/i3;

    iget-object v0, v0, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p1

    if-ne v0, v2, :cond_b

    .line 27
    iget-object p1, p0, Lcom/join/mgps/fragment/i3$u$a;->c:Lcom/join/mgps/fragment/i3$u;

    iget-object p1, p1, Lcom/join/mgps/fragment/i3$u;->c:Lcom/join/mgps/fragment/i3;

    iget-object p1, p1, Lcom/join/mgps/fragment/i3;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 28
    iget-object p1, p0, Lcom/join/mgps/fragment/i3$u$a;->c:Lcom/join/mgps/fragment/i3$u;

    iget-object p1, p1, Lcom/join/mgps/fragment/i3$u;->c:Lcom/join/mgps/fragment/i3;

    iput-boolean v4, p1, Lcom/join/mgps/fragment/i3;->J:Z

    goto :goto_4

    .line 29
    :cond_a
    iget-object p1, p0, Lcom/join/mgps/fragment/i3$u$a;->c:Lcom/join/mgps/fragment/i3$u;

    iget-object p1, p1, Lcom/join/mgps/fragment/i3$u;->c:Lcom/join/mgps/fragment/i3;

    const-string v0, "\u5df2\u4e0b\u8f7d"

    invoke-virtual {p1, v0}, Lcom/join/mgps/fragment/i3;->v0(Ljava/lang/String;)V

    .line 30
    :cond_b
    :goto_4
    iget-object p1, p0, Lcom/join/mgps/fragment/i3$u$a;->c:Lcom/join/mgps/fragment/i3$u;

    iget-object p1, p1, Lcom/join/mgps/fragment/i3$u;->c:Lcom/join/mgps/fragment/i3;

    iget-object p1, p1, Lcom/join/mgps/fragment/i3;->A:Lcom/join/mgps/fragment/i3$u;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto/16 :goto_6

    .line 31
    :cond_c
    iget-object p1, p0, Lcom/join/mgps/fragment/i3$u$a;->b:Lcom/join/mgps/fragment/i3$u$b;

    iget-object p1, p1, Lcom/join/mgps/fragment/i3$u$b;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 32
    iget-object p1, p0, Lcom/join/mgps/fragment/i3$u$a;->b:Lcom/join/mgps/fragment/i3$u$b;

    iget-object p1, p1, Lcom/join/mgps/fragment/i3$u$b;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 33
    iget-object p1, p0, Lcom/join/mgps/fragment/i3$u$a;->c:Lcom/join/mgps/fragment/i3$u;

    iget-object p1, p1, Lcom/join/mgps/fragment/i3$u;->c:Lcom/join/mgps/fragment/i3;

    iget-object p1, p1, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    iget v2, p0, Lcom/join/mgps/fragment/i3$u$a;->a:I

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {p1, v3}, Lcom/join/mgps/dto/CloudListDataBean;->setIsCheck(I)V

    const/4 p1, 0x0

    .line 34
    :goto_5
    iget-object v2, p0, Lcom/join/mgps/fragment/i3$u$a;->c:Lcom/join/mgps/fragment/i3$u;

    iget-object v2, v2, Lcom/join/mgps/fragment/i3$u;->c:Lcom/join/mgps/fragment/i3;

    iget-object v2, v2, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_e

    .line 35
    iget-object v2, p0, Lcom/join/mgps/fragment/i3$u$a;->c:Lcom/join/mgps/fragment/i3$u;

    iget-object v2, v2, Lcom/join/mgps/fragment/i3$u;->c:Lcom/join/mgps/fragment/i3;

    iget-object v2, v2, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CloudListDataBean;->getIsCheck()I

    move-result v2

    if-ne v2, v4, :cond_d

    add-int/lit8 p1, p1, 0x1

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 36
    :cond_e
    iget-object v2, p0, Lcom/join/mgps/fragment/i3$u$a;->c:Lcom/join/mgps/fragment/i3$u;

    iget-object v2, v2, Lcom/join/mgps/fragment/i3$u;->c:Lcom/join/mgps/fragment/i3;

    iget-object v2, v2, Lcom/join/mgps/fragment/i3;->c:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v0, p0, Lcom/join/mgps/fragment/i3$u$a;->c:Lcom/join/mgps/fragment/i3$u;

    iget-object v0, v0, Lcom/join/mgps/fragment/i3$u;->c:Lcom/join/mgps/fragment/i3;

    iget-object v0, v0, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, p1, :cond_f

    .line 38
    iget-object p1, p0, Lcom/join/mgps/fragment/i3$u$a;->c:Lcom/join/mgps/fragment/i3$u;

    iget-object p1, p1, Lcom/join/mgps/fragment/i3$u;->c:Lcom/join/mgps/fragment/i3;

    iget-object p1, p1, Lcom/join/mgps/fragment/i3;->b:Landroid/widget/ImageView;

    const v0, 0x7f080169

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 39
    :cond_f
    iget-object p1, p0, Lcom/join/mgps/fragment/i3$u$a;->c:Lcom/join/mgps/fragment/i3$u;

    iget-object p1, p1, Lcom/join/mgps/fragment/i3$u;->c:Lcom/join/mgps/fragment/i3;

    iget-object p1, p1, Lcom/join/mgps/fragment/i3;->A:Lcom/join/mgps/fragment/i3$u;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_6
    return-void
.end method

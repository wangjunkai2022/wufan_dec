.class Lcom/join/mgps/adapter/r1$q;
.super Ljava/lang/Object;
.source "GameDetialModleThreeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/r1;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/adapter/r1$x1;

.field final synthetic b:Lcom/join/mgps/adapter/r1;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/r1;Lcom/join/mgps/adapter/r1$x1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/r1$q;->b:Lcom/join/mgps/adapter/r1;

    iput-object p2, p0, Lcom/join/mgps/adapter/r1$q;->a:Lcom/join/mgps/adapter/r1$x1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/r1$q;->a:Lcom/join/mgps/adapter/r1$x1;

    iget-object p1, p1, Lcom/join/mgps/adapter/r1$x1;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u6536\u8d77"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/join/mgps/adapter/r1$q;->a:Lcom/join/mgps/adapter/r1$x1;

    iget-object p1, p1, Lcom/join/mgps/adapter/r1$x1;->c:Landroid/widget/TextView;

    const-string v0, "\u5c55\u5f00"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/adapter/r1$q;->b:Lcom/join/mgps/adapter/r1;

    invoke-static {p1}, Lcom/join/mgps/adapter/r1;->f(Lcom/join/mgps/adapter/r1;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_upgrade_info_switch()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/join/mgps/adapter/r1$q;->a:Lcom/join/mgps/adapter/r1$x1;

    iget-object p1, p1, Lcom/join/mgps/adapter/r1$x1;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/r1$q;->b:Lcom/join/mgps/adapter/r1;

    invoke-static {p1}, Lcom/join/mgps/adapter/r1;->f(Lcom/join/mgps/adapter/r1;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/join/mgps/adapter/r1$q;->a:Lcom/join/mgps/adapter/r1$x1;

    iget-object p1, p1, Lcom/join/mgps/adapter/r1$x1;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/adapter/r1$q;->a:Lcom/join/mgps/adapter/r1$x1;

    iget-object p1, p1, Lcom/join/mgps/adapter/r1$x1;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/adapter/r1$q;->b:Lcom/join/mgps/adapter/r1;

    invoke-static {p1}, Lcom/join/mgps/adapter/r1;->f(Lcom/join/mgps/adapter/r1;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_upgrade_info_switch()I

    move-result p1

    const/4 v0, 0x0

    if-ne p1, v1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/join/mgps/adapter/r1$q;->a:Lcom/join/mgps/adapter/r1$x1;

    iget-object p1, p1, Lcom/join/mgps/adapter/r1$x1;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/adapter/r1$q;->b:Lcom/join/mgps/adapter/r1;

    invoke-static {p1}, Lcom/join/mgps/adapter/r1;->f(Lcom/join/mgps/adapter/r1;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/join/mgps/adapter/r1$q;->a:Lcom/join/mgps/adapter/r1$x1;

    iget-object p1, p1, Lcom/join/mgps/adapter/r1$x1;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

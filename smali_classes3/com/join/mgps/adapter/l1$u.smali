.class Lcom/join/mgps/adapter/l1$u;
.super Ljava/lang/Object;
.source "GameDetialModleFourAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/l1;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/adapter/l1$o2;

.field final synthetic b:Lcom/join/mgps/adapter/l1;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/l1;Lcom/join/mgps/adapter/l1$o2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/l1$u;->b:Lcom/join/mgps/adapter/l1;

    iput-object p2, p0, Lcom/join/mgps/adapter/l1$u;->a:Lcom/join/mgps/adapter/l1$o2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/l1$u;->a:Lcom/join/mgps/adapter/l1$o2;

    iget-object p1, p1, Lcom/join/mgps/adapter/l1$o2;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u6536\u8d77"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/adapter/l1$u;->a:Lcom/join/mgps/adapter/l1$o2;

    iget-object p1, p1, Lcom/join/mgps/adapter/l1$o2;->b:Landroid/widget/TextView;

    const-string v0, "\u5c55\u5f00"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/adapter/l1$u;->a:Lcom/join/mgps/adapter/l1$o2;

    iget-object p1, p1, Lcom/join/mgps/adapter/l1$o2;->a:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/l1$u;->a:Lcom/join/mgps/adapter/l1$o2;

    iget-object p1, p1, Lcom/join/mgps/adapter/l1$o2;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/adapter/l1$u;->a:Lcom/join/mgps/adapter/l1$o2;

    iget-object p1, p1, Lcom/join/mgps/adapter/l1$o2;->a:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

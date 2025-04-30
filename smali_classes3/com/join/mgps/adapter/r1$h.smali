.class Lcom/join/mgps/adapter/r1$h;
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
.field final synthetic a:Lcom/join/mgps/adapter/r1$r1;

.field final synthetic b:Lcom/join/mgps/adapter/r1$b1;

.field final synthetic c:Lcom/join/mgps/adapter/r1;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/r1;Lcom/join/mgps/adapter/r1$r1;Lcom/join/mgps/adapter/r1$b1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/r1$h;->c:Lcom/join/mgps/adapter/r1;

    iput-object p2, p0, Lcom/join/mgps/adapter/r1$h;->a:Lcom/join/mgps/adapter/r1$r1;

    iput-object p3, p0, Lcom/join/mgps/adapter/r1$h;->b:Lcom/join/mgps/adapter/r1$b1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/r1$h;->a:Lcom/join/mgps/adapter/r1$r1;

    iget-object p1, p1, Lcom/join/mgps/adapter/r1$r1;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u5c55\u5f00"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/adapter/r1$h;->a:Lcom/join/mgps/adapter/r1$r1;

    iget-object p1, p1, Lcom/join/mgps/adapter/r1$r1;->a:Landroid/widget/TextView;

    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/adapter/r1$h;->a:Lcom/join/mgps/adapter/r1$r1;

    iget-object p1, p1, Lcom/join/mgps/adapter/r1$r1;->b:Landroid/widget/TextView;

    const-string v0, "\u6536\u8d77"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/adapter/r1$h;->b:Lcom/join/mgps/adapter/r1$b1;

    const/4 v0, 0x1

    iput v0, p1, Lcom/join/mgps/adapter/r1$b1;->c:I

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/r1$h;->a:Lcom/join/mgps/adapter/r1$r1;

    iget-object p1, p1, Lcom/join/mgps/adapter/r1$r1;->a:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/adapter/r1$h;->a:Lcom/join/mgps/adapter/r1$r1;

    iget-object p1, p1, Lcom/join/mgps/adapter/r1$r1;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/adapter/r1$h;->b:Lcom/join/mgps/adapter/r1$b1;

    const/4 v0, 0x0

    iput v0, p1, Lcom/join/mgps/adapter/r1$b1;->c:I

    :goto_0
    return-void
.end method

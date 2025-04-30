.class Lcom/join/mgps/adapter/l1$s0;
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
.field final synthetic a:Lcom/join/mgps/adapter/l1$m1;

.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/dto/CommentBaseBean;

.field final synthetic d:Lcom/join/mgps/adapter/l1;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/l1;Lcom/join/mgps/adapter/l1$m1;ILcom/join/mgps/dto/CommentBaseBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/l1$s0;->d:Lcom/join/mgps/adapter/l1;

    iput-object p2, p0, Lcom/join/mgps/adapter/l1$s0;->a:Lcom/join/mgps/adapter/l1$m1;

    iput p3, p0, Lcom/join/mgps/adapter/l1$s0;->b:I

    iput-object p4, p0, Lcom/join/mgps/adapter/l1$s0;->c:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/l1$s0;->a:Lcom/join/mgps/adapter/l1$m1;

    invoke-static {p1}, Lcom/join/mgps/adapter/l1$m1;->r(Lcom/join/mgps/adapter/l1$m1;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u67e5\u770b\u5168\u90e8"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v1, 0x13

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/join/mgps/adapter/l1$s0;->d:Lcom/join/mgps/adapter/l1;

    invoke-static {p1}, Lcom/join/mgps/adapter/l1;->i(Lcom/join/mgps/adapter/l1;)Ljava/util/Map;

    move-result-object p1

    iget v0, p0, Lcom/join/mgps/adapter/l1$s0;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/join/mgps/adapter/l1$s0;->a:Lcom/join/mgps/adapter/l1$m1;

    invoke-static {p1}, Lcom/join/mgps/adapter/l1$m1;->d(Lcom/join/mgps/adapter/l1$m1;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/l1$s0;->c:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/l1$s0;->a:Lcom/join/mgps/adapter/l1$m1;

    invoke-static {p1}, Lcom/join/mgps/adapter/l1$m1;->d(Lcom/join/mgps/adapter/l1$m1;)Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/adapter/l1$s0;->a:Lcom/join/mgps/adapter/l1$m1;

    invoke-static {p1}, Lcom/join/mgps/adapter/l1$m1;->r(Lcom/join/mgps/adapter/l1$m1;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "\u6536\u8d77"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/adapter/l1$s0;->d:Lcom/join/mgps/adapter/l1;

    invoke-static {p1}, Lcom/join/mgps/adapter/l1;->i(Lcom/join/mgps/adapter/l1;)Ljava/util/Map;

    move-result-object p1

    iget v2, p0, Lcom/join/mgps/adapter/l1$s0;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne p1, v1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/join/mgps/adapter/l1$s0;->a:Lcom/join/mgps/adapter/l1$m1;

    invoke-static {p1}, Lcom/join/mgps/adapter/l1$m1;->d(Lcom/join/mgps/adapter/l1$m1;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/adapter/l1$s0;->c:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentBaseBean;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/adapter/l1$s0;->a:Lcom/join/mgps/adapter/l1$m1;

    invoke-static {p1}, Lcom/join/mgps/adapter/l1$m1;->d(Lcom/join/mgps/adapter/l1$m1;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/adapter/l1$s0;->a:Lcom/join/mgps/adapter/l1$m1;

    invoke-static {p1}, Lcom/join/mgps/adapter/l1$m1;->r(Lcom/join/mgps/adapter/l1$m1;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

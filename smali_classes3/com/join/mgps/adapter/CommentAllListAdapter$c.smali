.class Lcom/join/mgps/adapter/CommentAllListAdapter$c;
.super Ljava/lang/Object;
.source "CommentAllListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentAllListAdapter$c;->c:Lcom/join/mgps/adapter/CommentAllListAdapter;

    iput-object p2, p0, Lcom/join/mgps/adapter/CommentAllListAdapter$c;->a:Lcom/join/mgps/adapter/CommentAllListAdapter$g;

    iput-object p3, p0, Lcom/join/mgps/adapter/CommentAllListAdapter$c;->b:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/CommentAllListAdapter$c;->a:Lcom/join/mgps/adapter/CommentAllListAdapter$g;

    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->i(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

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
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/join/mgps/adapter/CommentAllListAdapter$c;->a:Lcom/join/mgps/adapter/CommentAllListAdapter$g;

    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->g(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListAdapter$c;->b:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/CommentAllListAdapter$c;->a:Lcom/join/mgps/adapter/CommentAllListAdapter$g;

    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->g(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/adapter/CommentAllListAdapter$c;->a:Lcom/join/mgps/adapter/CommentAllListAdapter$g;

    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->i(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "\u6536\u8d77"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/adapter/CommentAllListAdapter$c;->b:Lcom/join/mgps/dto/CommentBaseBean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentBaseBean;->setShowMore(Z)V

    goto :goto_0

    .line 8
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne p1, v1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/join/mgps/adapter/CommentAllListAdapter$c;->a:Lcom/join/mgps/adapter/CommentAllListAdapter$g;

    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->g(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/adapter/CommentAllListAdapter$c;->b:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentBaseBean;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/adapter/CommentAllListAdapter$c;->a:Lcom/join/mgps/adapter/CommentAllListAdapter$g;

    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->g(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/adapter/CommentAllListAdapter$c;->a:Lcom/join/mgps/adapter/CommentAllListAdapter$g;

    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListAdapter$g;->i(Lcom/join/mgps/adapter/CommentAllListAdapter$g;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/adapter/CommentAllListAdapter$c;->b:Lcom/join/mgps/dto/CommentBaseBean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentBaseBean;->setShowMore(Z)V

    :goto_0
    return-void
.end method

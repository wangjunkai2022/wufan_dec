.class Lcom/join/mgps/adapter/InformationAdapter$e;
.super Ljava/lang/Object;
.source "InformationAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/InformationAdapter;->h(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/adapter/InformationAdapter$p;

.field final synthetic b:Lcom/join/mgps/adapter/InformationAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/InformationAdapter;Lcom/join/mgps/adapter/InformationAdapter$p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/InformationAdapter$e;->b:Lcom/join/mgps/adapter/InformationAdapter;

    iput-object p2, p0, Lcom/join/mgps/adapter/InformationAdapter$e;->a:Lcom/join/mgps/adapter/InformationAdapter$p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/InformationAdapter$e;->a:Lcom/join/mgps/adapter/InformationAdapter$p;

    iget-object p1, p1, Lcom/join/mgps/adapter/InformationAdapter$p;->j:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u67e5\u770b\u5168\u90e8"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/adapter/InformationAdapter$e;->a:Lcom/join/mgps/adapter/InformationAdapter$p;

    invoke-static {p1}, Lcom/join/mgps/adapter/InformationAdapter$p;->k(Lcom/join/mgps/adapter/InformationAdapter$p;)Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/adapter/InformationAdapter$e;->a:Lcom/join/mgps/adapter/InformationAdapter$p;

    iget-object p1, p1, Lcom/join/mgps/adapter/InformationAdapter$p;->j:Landroid/widget/TextView;

    const-string v0, "\u6536\u8d77"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/InformationAdapter$e;->a:Lcom/join/mgps/adapter/InformationAdapter$p;

    invoke-static {p1}, Lcom/join/mgps/adapter/InformationAdapter$p;->k(Lcom/join/mgps/adapter/InformationAdapter$p;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/adapter/InformationAdapter$e;->a:Lcom/join/mgps/adapter/InformationAdapter$p;

    iget-object p1, p1, Lcom/join/mgps/adapter/InformationAdapter$p;->j:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

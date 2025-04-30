.class Lcom/join/mgps/adapter/l1$s1;
.super Lt1/a;
.source "GameDetialModleFourAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/l1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "s1"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/LinearLayout;

.field public f:Landroid/widget/LinearLayout;

.field public g:Landroid/widget/ImageView;

.field public h:Landroid/widget/ImageView;

.field public i:Landroid/widget/ImageView;

.field public j:Landroid/widget/ImageView;

.field k:Lcom/join/mgps/customview/ExpandLayout;

.field l:Lcom/join/mgps/customview/ExpandLayout;

.field public m:Landroid/widget/LinearLayout;

.field public n:Landroid/widget/LinearLayout;

.field final synthetic o:Lcom/join/mgps/adapter/l1;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/l1$s1;->o:Lcom/join/mgps/adapter/l1;

    .line 2
    invoke-direct {p0, p2}, Lt1/a;-><init>(Landroid/view/View;)V

    const p1, 0x7f091023

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/l1$s1;->a:Landroid/widget/TextView;

    const p1, 0x7f090a8e

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/l1$s1;->c:Landroid/widget/TextView;

    const p1, 0x7f0909c1

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/adapter/l1$s1;->e:Landroid/widget/LinearLayout;

    const p1, 0x7f0906d0

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/mgps/adapter/l1$s1;->g:Landroid/widget/ImageView;

    const p1, 0x7f090687

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/mgps/adapter/l1$s1;->i:Landroid/widget/ImageView;

    const p1, 0x7f090410

    .line 8
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/customview/ExpandLayout;

    iput-object p1, p0, Lcom/join/mgps/adapter/l1$s1;->k:Lcom/join/mgps/customview/ExpandLayout;

    const p1, 0x7f090976

    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/adapter/l1$s1;->m:Landroid/widget/LinearLayout;

    const p1, 0x7f091025

    .line 10
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/l1$s1;->b:Landroid/widget/TextView;

    const p1, 0x7f090a90

    .line 11
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/l1$s1;->d:Landroid/widget/TextView;

    const p1, 0x7f0909c3

    .line 12
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/adapter/l1$s1;->f:Landroid/widget/LinearLayout;

    const p1, 0x7f0906db

    .line 13
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/mgps/adapter/l1$s1;->h:Landroid/widget/ImageView;

    const p1, 0x7f09068f

    .line 14
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/mgps/adapter/l1$s1;->j:Landroid/widget/ImageView;

    const p1, 0x7f090411

    .line 15
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/customview/ExpandLayout;

    iput-object p1, p0, Lcom/join/mgps/adapter/l1$s1;->l:Lcom/join/mgps/customview/ExpandLayout;

    const p1, 0x7f090977

    .line 16
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/adapter/l1$s1;->n:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    const v1, 0x7f071167

    const-string v2, "#f47500"

    const-string v3, "\u8054\u7cfb\u5ba2\u670d"

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/l1$s1;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/l1$s1;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/adapter/l1$s1;->i:Landroid/widget/ImageView;

    const v6, 0x7f080226

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/adapter/l1$s1;->a:Landroid/widget/TextView;

    const-string v6, "\u4e13\u5c5e\u798f\u5229"

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/adapter/l1$s1;->k:Lcom/join/mgps/customview/ExpandLayout;

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/ExpandLayout;->setContent(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/adapter/l1$s1;->o:Lcom/join/mgps/adapter/l1;

    invoke-static {p1}, Lcom/join/mgps/adapter/l1;->f(Lcom/join/mgps/adapter/l1;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_exclusive_benefits_qq()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/join/mgps/adapter/l1$s1;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/adapter/l1$s1;->c:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/adapter/l1$s1;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/join/mgps/adapter/l1$s1;->o:Lcom/join/mgps/adapter/l1;

    invoke-static {v0}, Lcom/join/mgps/adapter/l1;->g(Lcom/join/mgps/adapter/l1;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v5, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/adapter/l1$s1;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/adapter/l1$s1;->e:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/join/mgps/adapter/l1$s1$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/l1$s1$a;-><init>(Lcom/join/mgps/adapter/l1$s1;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/l1$s1;->m:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14
    :cond_1
    :goto_0
    invoke-static {p2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 15
    iget-object p1, p0, Lcom/join/mgps/adapter/l1$s1;->n:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/join/mgps/adapter/l1$s1;->j:Landroid/widget/ImageView;

    const v0, 0x7f080224

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 17
    iget-object p1, p0, Lcom/join/mgps/adapter/l1$s1;->j:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 18
    iget-object p1, p0, Lcom/join/mgps/adapter/l1$s1;->b:Landroid/widget/TextView;

    const-string v0, "\u5145\u503c\u8fd4\u5229"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object p1, p0, Lcom/join/mgps/adapter/l1$s1;->l:Lcom/join/mgps/customview/ExpandLayout;

    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/ExpandLayout;->setContent(Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcom/join/mgps/adapter/l1$s1;->o:Lcom/join/mgps/adapter/l1;

    invoke-static {p1}, Lcom/join/mgps/adapter/l1;->f(Lcom/join/mgps/adapter/l1;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_exclusive_benefits_qq()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 21
    iget-object p1, p0, Lcom/join/mgps/adapter/l1$s1;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object p1, p0, Lcom/join/mgps/adapter/l1$s1;->d:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 23
    iget-object p1, p0, Lcom/join/mgps/adapter/l1$s1;->d:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/join/mgps/adapter/l1$s1;->o:Lcom/join/mgps/adapter/l1;

    invoke-static {p2}, Lcom/join/mgps/adapter/l1;->g(Lcom/join/mgps/adapter/l1;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, v5, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 24
    iget-object p1, p0, Lcom/join/mgps/adapter/l1$s1;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 25
    iget-object p1, p0, Lcom/join/mgps/adapter/l1$s1;->f:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/join/mgps/adapter/l1$s1$b;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/l1$s1$b;-><init>(Lcom/join/mgps/adapter/l1$s1;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 26
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/adapter/l1$s1;->n:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

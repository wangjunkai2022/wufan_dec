.class public Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;
.super Ljava/lang/Object;
.source "MGGameDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/MGGameDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "t1"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/LinearLayout;

.field f:Landroid/widget/LinearLayout;

.field final synthetic g:Lcom/join/mgps/adapter/MGGameDetailAdapter;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->g:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f0912c0

    .line 2
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->a:Landroid/widget/TextView;

    const p1, 0x7f0912b6

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->b:Landroid/widget/TextView;

    const p1, 0x7f0912b9

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->d:Landroid/widget/TextView;

    const p1, 0x7f0912ba

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->c:Landroid/widget/TextView;

    const p1, 0x7f09087a

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->e:Landroid/widget/LinearLayout;

    const p1, 0x7f09058b

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->f:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/dto/GameVoucherBean;)V
    .locals 7

    if-eqz p1, :cond_3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\uffe5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameVoucherBean;->getGame_coupon_money()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameVoucherBean;->getGame_coupon_title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameVoucherBean;->getGame_coupon_status()I

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x41700000    # 15.0f

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    const/4 p1, 0x2

    const v1, 0x7f060132

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto/16 :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->g:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->d:Landroid/widget/TextView;

    const-string v0, "\u770b\u770b\u5176\u4ed6"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->g:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f11044e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->g:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p1, v3, v0, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->f:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1$c;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->g:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->g:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110452

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->g:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110449

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->g:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p1, v3, v0, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->f:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1$b;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->c:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->g:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {v4}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f11045a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameVoucherBean;->getGame_coupon_surplus_number()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->g:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {v1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f11044c

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->g:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {v1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->g:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {v1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->f:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1$a;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1$a;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;Lcom/join/mgps/dto/GameVoucherBean;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    :goto_0
    return-void
.end method

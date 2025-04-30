.class public Lcom/join/mgps/adapter/n2$a;
.super Ljava/lang/Object;
.source "HotVoucherAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/n2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/LinearLayout;

.field f:Landroid/widget/LinearLayout;

.field final synthetic g:Lcom/join/mgps/adapter/n2;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/n2;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/n2$a;->g:Lcom/join/mgps/adapter/n2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f0912c0

    .line 2
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/n2$a;->a:Landroid/widget/TextView;

    const p1, 0x7f0912b6

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/n2$a;->b:Landroid/widget/TextView;

    const p1, 0x7f0912b9

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/n2$a;->d:Landroid/widget/TextView;

    const p1, 0x7f0912ba

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/n2$a;->c:Landroid/widget/TextView;

    const p1, 0x7f09087a

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/adapter/n2$a;->e:Landroid/widget/LinearLayout;

    const p1, 0x7f09058b

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/adapter/n2$a;->f:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/dto/AccountVoucherGameBean;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/n2$a;->a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\uffe5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountVoucherGameBean;->getCoupon_money()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/n2$a;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountVoucherGameBean;->getCoupon_title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/n2$a;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/adapter/n2$a;->g:Lcom/join/mgps/adapter/n2;

    invoke-static {v1}, Lcom/join/mgps/adapter/n2;->a(Lcom/join/mgps/adapter/n2;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110450

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountVoucherGameBean;->getCoupon_type()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/n2$a;->a:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/adapter/n2$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/adapter/n2$a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/n2$a;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/join/mgps/adapter/n2$a;->g:Lcom/join/mgps/adapter/n2;

    invoke-static {v3}, Lcom/join/mgps/adapter/n2;->a(Lcom/join/mgps/adapter/n2;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f11045a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountVoucherGameBean;->getCoupon_surplus()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/adapter/n2$a;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/adapter/n2$a;->g:Lcom/join/mgps/adapter/n2;

    invoke-static {v1}, Lcom/join/mgps/adapter/n2;->a(Lcom/join/mgps/adapter/n2;)Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {v1, v3}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/adapter/n2$a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/adapter/n2$a;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/adapter/n2$a;->f:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/join/mgps/adapter/n2$a$a;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/adapter/n2$a$a;-><init>(Lcom/join/mgps/adapter/n2$a;Lcom/join/mgps/dto/AccountVoucherGameBean;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

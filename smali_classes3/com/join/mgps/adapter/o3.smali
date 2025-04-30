.class public Lcom/join/mgps/adapter/o3;
.super Landroid/widget/BaseAdapter;
.source "MyVoucherAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/o3$c;,
        Lcom/join/mgps/adapter/o3$d;
    }
.end annotation


# static fields
.field public static final e:I = 0x0

.field public static final f:I = 0x1


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;

.field private d:I


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/adapter/o3;->a:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/o3;->b:Landroid/content/Context;

    .line 4
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/o3;->c:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/o3;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/o3;->b:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/o3;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/o3;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/o3;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/join/mgps/dto/AccountVoucher;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    const-string p3, "</font>"

    const-string v0, "<font color = \'#D33D3E\'>"

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/o3;->getItemViewType(I)I

    move-result v1

    iput v1, p0, Lcom/join/mgps/adapter/o3;->d:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p2, :cond_2

    if-eqz v1, :cond_1

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/adapter/o3;->c:Landroid/view/LayoutInflater;

    const v4, 0x7f0c04c9

    invoke-virtual {v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 3
    new-instance v1, Lcom/join/mgps/adapter/o3$c;

    invoke-direct {v1, p0, p2}, Lcom/join/mgps/adapter/o3$c;-><init>(Lcom/join/mgps/adapter/o3;Landroid/view/View;)V

    .line 4
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/adapter/o3;->c:Landroid/view/LayoutInflater;

    const v4, 0x7f0c04cd

    invoke-virtual {v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 6
    new-instance v1, Lcom/join/mgps/adapter/o3$d;

    invoke-direct {v1, p0, p2}, Lcom/join/mgps/adapter/o3$d;-><init>(Lcom/join/mgps/adapter/o3;Landroid/view/View;)V

    .line 7
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_4

    if-eq v1, v3, :cond_3

    :goto_0
    move-object v1, v2

    goto :goto_2

    .line 8
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/adapter/o3$c;

    goto :goto_2

    .line 9
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/adapter/o3$d;

    :goto_1
    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    .line 10
    :goto_2
    iget v4, p0, Lcom/join/mgps/adapter/o3;->d:I

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v4, :cond_8

    if-eq v4, v3, :cond_5

    goto/16 :goto_4

    .line 11
    :cond_5
    iget-object p3, p0, Lcom/join/mgps/adapter/o3;->a:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    instance-of p3, p3, Lcom/join/mgps/dto/AccountVoucherGameBean;

    if-eqz p3, :cond_9

    .line 12
    iget-object p3, p0, Lcom/join/mgps/adapter/o3;->a:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/AccountVoucherGameBean;

    .line 13
    iget-object p3, v1, Lcom/join/mgps/adapter/o3$c;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountVoucherGameBean;->getCoupon_title()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountVoucherGameBean;->getCoupon_type()I

    move-result p3

    if-eq p3, v3, :cond_7

    if-eq p3, v5, :cond_6

    goto :goto_3

    .line 15
    :cond_6
    iget-object p3, v1, Lcom/join/mgps/adapter/o3$c;->b:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    iget-object p3, v1, Lcom/join/mgps/adapter/o3$c;->c:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    iget-object p3, v1, Lcom/join/mgps/adapter/o3$c;->d:Landroid/widget/TextView;

    invoke-virtual {p3, v6, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_3

    .line 18
    :cond_7
    iget-object p3, v1, Lcom/join/mgps/adapter/o3$c;->b:Landroid/widget/TextView;

    invoke-virtual {p3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    iget-object p3, v1, Lcom/join/mgps/adapter/o3$c;->c:Landroid/widget/TextView;

    invoke-virtual {p3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    iget-object p3, v1, Lcom/join/mgps/adapter/o3$c;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/join/mgps/adapter/o3;->b:Landroid/content/Context;

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v0, v2}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p3, v6, v6, v6, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 21
    :goto_3
    iget-object p3, v1, Lcom/join/mgps/adapter/o3$c;->b:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\uffe5"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountVoucherGameBean;->getCoupon_money()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object p3, v1, Lcom/join/mgps/adapter/o3$c;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/join/mgps/adapter/o3;->b:Landroid/content/Context;

    const v2, 0x7f11045a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountVoucherGameBean;->getCoupon_surplus()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object p3, v1, Lcom/join/mgps/adapter/o3$c;->e:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/join/mgps/adapter/o3$b;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/o3$b;-><init>(Lcom/join/mgps/adapter/o3;Lcom/join/mgps/dto/AccountVoucherGameBean;)V

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 24
    :cond_8
    iget-object v1, p0, Lcom/join/mgps/adapter/o3;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/join/mgps/dto/AccountVoucher;

    if-eqz v1, :cond_9

    .line 25
    iget-object v1, p0, Lcom/join/mgps/adapter/o3;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/AccountVoucher;

    .line 26
    iget-object v1, v2, Lcom/join/mgps/adapter/o3$d;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountVoucher;->getGame_name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v1, v2, Lcom/join/mgps/adapter/o3$d;->g:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountVoucher;->getGame_icon()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 28
    iget-object v1, v2, Lcom/join/mgps/adapter/o3$d;->f:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/join/mgps/adapter/o3;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f110448

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v7, v3, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountVoucher;->getStatus()Lcom/join/mgps/dto/AccountVoucherStatus;

    move-result-object v9

    invoke-virtual {v9}, Lcom/join/mgps/dto/AccountVoucherStatus;->getUsed()Lcom/join/mgps/dto/AccountVoucherStatusBean;

    move-result-object v9

    invoke-virtual {v9}, Lcom/join/mgps/dto/AccountVoucherStatusBean;->getMoney()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v1, v2, Lcom/join/mgps/adapter/o3$d;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/join/mgps/adapter/o3;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f11045e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountVoucher;->getStatus()Lcom/join/mgps/dto/AccountVoucherStatus;

    move-result-object v7

    invoke-virtual {v7}, Lcom/join/mgps/dto/AccountVoucherStatus;->getAvailable()Lcom/join/mgps/dto/AccountVoucherStatusBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/join/mgps/dto/AccountVoucherStatusBean;->getCount()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountVoucher;->getStatus()Lcom/join/mgps/dto/AccountVoucherStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountVoucherStatus;->getAvailable()Lcom/join/mgps/dto/AccountVoucherStatusBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountVoucherStatusBean;->getMoney()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    new-instance p3, Lcom/join/mgps/adapter/o3$a;

    invoke-direct {p3, p0, p1}, Lcom/join/mgps/adapter/o3$a;-><init>(Lcom/join/mgps/adapter/o3;Lcom/join/mgps/dto/AccountVoucher;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_4
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.class public Lcom/join/mgps/adapter/p3;
.super Landroid/widget/BaseAdapter;
.source "MyVoucherGameAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/p3$a;
    }
.end annotation


# static fields
.field public static final d:Ljava/lang/String; = "expire"

.field public static final e:Ljava/lang/String; = "un_use"

.field public static final f:Ljava/lang/String; = "used"

.field public static final g:Ljava/lang/String; = "will_expire"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AccountVoucherGame;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AccountVoucherGame;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/adapter/p3;->a:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/p3;->b:Landroid/content/Context;

    .line 4
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/p3;->c:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/p3;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/p3;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    if-nez p2, :cond_0

    .line 1
    iget-object v1, v0, Lcom/join/mgps/adapter/p3;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f0c04cc

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2
    new-instance v2, Lcom/join/mgps/adapter/p3$a;

    invoke-direct {v2, v0, v1}, Lcom/join/mgps/adapter/p3$a;-><init>(Lcom/join/mgps/adapter/p3;Landroid/view/View;)V

    .line 3
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/join/mgps/adapter/p3$a;

    move-object/from16 v1, p2

    .line 5
    :goto_0
    iget-object v3, v0, Lcom/join/mgps/adapter/p3;->a:Ljava/util/List;

    move/from16 v4, p1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/AccountVoucherGame;

    .line 6
    iget-object v4, v2, Lcom/join/mgps/adapter/p3$a;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountVoucherGame;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v4, v2, Lcom/join/mgps/adapter/p3$a;->b:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/join/mgps/adapter/p3;->b:Landroid/content/Context;

    const v6, 0x7f110458

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountVoucherGame;->getMoney()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v4, v2, Lcom/join/mgps/adapter/p3$a;->c:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountVoucherGame;->getExpire_date()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountVoucherGame;->getStatus()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountVoucherGame;->getStatus()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 10
    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountVoucherGame;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x2

    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v7, "will_expire"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x3

    goto :goto_1

    :sswitch_1
    const-string v7, "used"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x2

    goto :goto_1

    :sswitch_2
    const-string v7, "un_use"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x1

    goto :goto_1

    :sswitch_3
    const-string v7, "expire"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    :goto_1
    const-string v4, "<font color=\'0xffb6b6\' >"

    const v7, 0x7f080d1e

    const v10, 0x7f080d1d

    const-string v11, "<font color=\'0xe1e1e1\' >"

    const v15, 0x7f080075

    const-string v12, "<\u000cont>"

    const v13, 0x7f110456

    const/16 v14, 0x8

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_2

    .line 11
    :pswitch_0
    iget-object v5, v2, Lcom/join/mgps/adapter/p3$a;->e:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    iget-object v5, v2, Lcom/join/mgps/adapter/p3$a;->f:Landroid/widget/ImageView;

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    iget-object v5, v2, Lcom/join/mgps/adapter/p3$a;->e:Landroid/widget/ImageView;

    const v11, 0x7f080d28

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 14
    iget-object v5, v2, Lcom/join/mgps/adapter/p3$a;->c:Landroid/widget/TextView;

    iget-object v11, v0, Lcom/join/mgps/adapter/p3;->b:Landroid/content/Context;

    const v14, 0x7f11045c

    invoke-virtual {v11, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountVoucherGame;->getExpire_date()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v8, v9

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountVoucherGame;->getNotice()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v8, v6

    invoke-static {v11, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v5, v2, Lcom/join/mgps/adapter/p3$a;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 16
    iget-object v5, v2, Lcom/join/mgps/adapter/p3$a;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 17
    iget-object v5, v2, Lcom/join/mgps/adapter/p3$a;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v15}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 18
    iget-object v5, v2, Lcom/join/mgps/adapter/p3$a;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 19
    iget-object v2, v2, Lcom/join/mgps/adapter/p3$a;->d:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/join/mgps/adapter/p3;->b:Landroid/content/Context;

    invoke-virtual {v5, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountVoucherGame;->getNo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 20
    :pswitch_1
    iget-object v4, v2, Lcom/join/mgps/adapter/p3$a;->e:Landroid/widget/ImageView;

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    iget-object v4, v2, Lcom/join/mgps/adapter/p3$a;->f:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    iget-object v4, v2, Lcom/join/mgps/adapter/p3$a;->f:Landroid/widget/ImageView;

    const v5, 0x7f080d29

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 23
    iget-object v4, v2, Lcom/join/mgps/adapter/p3$a;->c:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/join/mgps/adapter/p3;->b:Landroid/content/Context;

    const v7, 0x7f11045b

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountVoucherGame;->getExpire_date()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v4, v2, Lcom/join/mgps/adapter/p3$a;->g:Landroid/widget/LinearLayout;

    const v5, 0x7f080d21

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 25
    iget-object v4, v2, Lcom/join/mgps/adapter/p3$a;->i:Landroid/widget/RelativeLayout;

    const v5, 0x7f080d22

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 26
    iget-object v4, v2, Lcom/join/mgps/adapter/p3$a;->h:Landroid/widget/LinearLayout;

    const v5, 0x7f080073

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 27
    iget-object v4, v2, Lcom/join/mgps/adapter/p3$a;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 28
    iget-object v2, v2, Lcom/join/mgps/adapter/p3$a;->d:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/join/mgps/adapter/p3;->b:Landroid/content/Context;

    invoke-virtual {v4, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountVoucherGame;->getNo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 29
    :pswitch_2
    iget-object v5, v2, Lcom/join/mgps/adapter/p3$a;->e:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 30
    iget-object v5, v2, Lcom/join/mgps/adapter/p3$a;->f:Landroid/widget/ImageView;

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 31
    iget-object v5, v2, Lcom/join/mgps/adapter/p3$a;->e:Landroid/widget/ImageView;

    const v8, 0x7f080d26

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 32
    iget-object v5, v2, Lcom/join/mgps/adapter/p3$a;->c:Landroid/widget/TextView;

    iget-object v8, v0, Lcom/join/mgps/adapter/p3;->b:Landroid/content/Context;

    const v11, 0x7f11045b

    invoke-virtual {v8, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v11, v6, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountVoucherGame;->getExpire_date()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v9

    invoke-static {v8, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v5, v2, Lcom/join/mgps/adapter/p3$a;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 34
    iget-object v5, v2, Lcom/join/mgps/adapter/p3$a;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 35
    iget-object v5, v2, Lcom/join/mgps/adapter/p3$a;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v15}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 36
    iget-object v5, v2, Lcom/join/mgps/adapter/p3$a;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 37
    iget-object v2, v2, Lcom/join/mgps/adapter/p3$a;->d:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/join/mgps/adapter/p3;->b:Landroid/content/Context;

    invoke-virtual {v5, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountVoucherGame;->getNo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 38
    :pswitch_3
    iget-object v4, v2, Lcom/join/mgps/adapter/p3$a;->e:Landroid/widget/ImageView;

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 39
    iget-object v4, v2, Lcom/join/mgps/adapter/p3$a;->f:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    iget-object v4, v2, Lcom/join/mgps/adapter/p3$a;->f:Landroid/widget/ImageView;

    const v5, 0x7f080d27

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 41
    iget-object v4, v2, Lcom/join/mgps/adapter/p3$a;->c:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/join/mgps/adapter/p3;->b:Landroid/content/Context;

    const v7, 0x7f11045b

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountVoucherGame;->getExpire_date()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v4, v2, Lcom/join/mgps/adapter/p3$a;->g:Landroid/widget/LinearLayout;

    const v5, 0x7f080d21

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 43
    iget-object v4, v2, Lcom/join/mgps/adapter/p3$a;->i:Landroid/widget/RelativeLayout;

    const v5, 0x7f080d22

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 44
    iget-object v4, v2, Lcom/join/mgps/adapter/p3$a;->d:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/join/mgps/adapter/p3;->b:Landroid/content/Context;

    invoke-virtual {v5, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountVoucherGame;->getNo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v3, v2, Lcom/join/mgps/adapter/p3$a;->h:Landroid/widget/LinearLayout;

    const v4, 0x7f080073

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 46
    iget-object v2, v2, Lcom/join/mgps/adapter/p3$a;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_5
    :goto_2
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4cd702e1 -> :sswitch_3
        -0x321df11f -> :sswitch_2
        0x36ebbd -> :sswitch_1
        0x1ce53a2c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

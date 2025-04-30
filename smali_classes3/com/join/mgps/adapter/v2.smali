.class public Lcom/join/mgps/adapter/v2;
.super Landroid/widget/BaseAdapter;
.source "ManageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/v2$f;,
        Lcom/join/mgps/adapter/v2$e;,
        Lcom/join/mgps/adapter/v2$g;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Lcom/join/mgps/dto/AccountBean;

.field private d:J

.field private e:[Ljava/lang/String;

.field private f:[I

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/adapter/v2;->a:Ljava/lang/String;

    const-string v0, "\u5b58\u53f7\u7bb1"

    const-string v1, "\u4e0b\u8f7d\u8bbe\u7f6e"

    const-string v2, "\u5efa\u8bae\u4e0e\u53cd\u9988"

    const-string v3, "\u66f4\u591a"

    const-string v4, "\u996d\u7968\u4e2d\u5fc3"

    .line 3
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/adapter/v2;->e:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/join/mgps/adapter/v2;->f:[I

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/adapter/v2;->g:Z

    .line 6
    iput-object p1, p0, Lcom/join/mgps/adapter/v2;->b:Landroid/content/Context;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f080aa7
        0x7f080aee
        0x7f080c49
        0x7f08086f
        0x7f080aa7
    .end array-data
.end method

.method static synthetic a(Lcom/join/mgps/adapter/v2;)Lcom/join/mgps/dto/AccountBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/v2;->c:Lcom/join/mgps/dto/AccountBean;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/adapter/v2;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/v2;->b:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public c()Lcom/join/mgps/dto/AccountBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/v2;->c:Lcom/join/mgps/dto/AccountBean;

    return-object v0
.end method

.method public d(Lcom/join/mgps/dto/AccountBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/v2;->c:Lcom/join/mgps/dto/AccountBean;

    .line 2
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/adapter/v2;->g:Z

    .line 2
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/v2;->e:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/v2;->getItemViewType(I)I

    move-result p3

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_3

    if-eqz p3, :cond_2

    const v3, 0x7f0907a0

    if-eq p3, v1, :cond_1

    if-eq p3, v0, :cond_0

    :goto_0
    move-object v3, v2

    :goto_1
    move-object v4, v3

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance p2, Lcom/join/mgps/adapter/v2$f;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/v2$f;-><init>(Lcom/join/mgps/adapter/v2;)V

    .line 3
    iget-object v4, p0, Lcom/join/mgps/adapter/v2;->b:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0c03cf

    invoke-virtual {v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 4
    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p2, Lcom/join/mgps/adapter/v2$f;->a:Landroid/widget/RelativeLayout;

    const v3, 0x7f09079a

    .line 5
    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p2, Lcom/join/mgps/adapter/v2$f;->b:Landroid/widget/ImageView;

    const v3, 0x7f090111

    .line 6
    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p2, Lcom/join/mgps/adapter/v2$f;->c:Landroid/widget/ImageView;

    const v3, 0x7f0907ad

    .line 7
    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p2, Lcom/join/mgps/adapter/v2$f;->d:Landroid/widget/TextView;

    const v3, 0x7f090793

    .line 8
    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p2, Lcom/join/mgps/adapter/v2$f;->e:Landroid/widget/TextView;

    .line 9
    invoke-virtual {v4, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v3, v2

    move-object v6, v4

    move-object v4, p2

    goto/16 :goto_2

    .line 10
    :cond_1
    new-instance p2, Lcom/join/mgps/adapter/v2$e;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/v2$e;-><init>(Lcom/join/mgps/adapter/v2;)V

    .line 11
    iget-object v4, p0, Lcom/join/mgps/adapter/v2;->b:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0c03d0

    invoke-virtual {v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 12
    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p2, Lcom/join/mgps/adapter/v2$e;->a:Landroid/widget/RelativeLayout;

    .line 13
    invoke-virtual {v4, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v3, v2

    move-object v2, p2

    move-object p2, v4

    goto :goto_1

    .line 14
    :cond_2
    new-instance p2, Lcom/join/mgps/adapter/v2$g;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/v2$g;-><init>(Lcom/join/mgps/adapter/v2;)V

    .line 15
    iget-object v3, p0, Lcom/join/mgps/adapter/v2;->b:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0c03d1

    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090abd

    .line 16
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p2, Lcom/join/mgps/adapter/v2$g;->a:Landroid/widget/LinearLayout;

    const v4, 0x7f090abb

    .line 17
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p2, Lcom/join/mgps/adapter/v2$g;->b:Landroid/widget/LinearLayout;

    const v4, 0x7f09122b

    .line 18
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v4, p2, Lcom/join/mgps/adapter/v2$g;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v4, 0x7f090e24

    .line 19
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p2, Lcom/join/mgps/adapter/v2$g;->d:Landroid/widget/ImageView;

    const v4, 0x7f0905d4

    .line 20
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p2, Lcom/join/mgps/adapter/v2$g;->e:Landroid/widget/ImageView;

    const v4, 0x7f090064

    .line 21
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p2, Lcom/join/mgps/adapter/v2$g;->f:Landroid/widget/TextView;

    const v4, 0x7f090bd4

    .line 22
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p2, Lcom/join/mgps/adapter/v2$g;->h:Landroid/widget/TextView;

    const v4, 0x7f090bbc

    .line 23
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p2, Lcom/join/mgps/adapter/v2$g;->i:Landroid/widget/TextView;

    const v4, 0x7f0908b8

    .line 24
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p2, Lcom/join/mgps/adapter/v2$g;->g:Landroid/widget/TextView;

    .line 25
    invoke-virtual {v3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v4, v2

    move-object v6, v3

    move-object v3, p2

    :goto_2
    move-object p2, v6

    goto :goto_3

    :cond_3
    if-eqz p3, :cond_6

    if-eq p3, v1, :cond_5

    if-eq p3, v0, :cond_4

    goto/16 :goto_0

    .line 26
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/adapter/v2$f;

    move-object v4, v3

    move-object v3, v2

    goto :goto_3

    .line 27
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/adapter/v2$e;

    move-object v4, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_3

    .line 28
    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/adapter/v2$g;

    move-object v4, v2

    :goto_3
    const/4 v5, 0x0

    if-eqz p3, :cond_a

    if-eq p3, v1, :cond_9

    if-eq p3, v0, :cond_7

    goto/16 :goto_7

    :cond_7
    if-ne p1, v1, :cond_8

    .line 29
    iget-object p3, v4, Lcom/join/mgps/adapter/v2$f;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/join/mgps/adapter/v2;->f:[I

    aget v0, v0, v5

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 30
    iget-object p3, v4, Lcom/join/mgps/adapter/v2$f;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/join/mgps/adapter/v2;->e:[Ljava/lang/String;

    aget-object v0, v0, v5

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 31
    :cond_8
    iget-object p3, v4, Lcom/join/mgps/adapter/v2$f;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/join/mgps/adapter/v2;->f:[I

    add-int/lit8 v1, p1, -0x2

    aget v0, v0, v1

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 32
    iget-object p3, v4, Lcom/join/mgps/adapter/v2$f;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/join/mgps/adapter/v2;->e:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    :goto_4
    iget-object p3, v4, Lcom/join/mgps/adapter/v2$f;->a:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/join/mgps/adapter/v2$d;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/v2$d;-><init>(Lcom/join/mgps/adapter/v2;I)V

    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_7

    .line 34
    :cond_9
    iget-object p1, v2, Lcom/join/mgps/adapter/v2$e;->a:Landroid/widget/RelativeLayout;

    new-instance p3, Lcom/join/mgps/adapter/v2$c;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/v2$c;-><init>(Lcom/join/mgps/adapter/v2;)V

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_7

    .line 35
    :cond_a
    iget-object p1, p0, Lcom/join/mgps/adapter/v2;->c:Lcom/join/mgps/dto/AccountBean;

    const/16 p3, 0x8

    if-eqz p1, :cond_e

    .line 36
    iget-object p1, v3, Lcom/join/mgps/adapter/v2$g;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 37
    iget-object p1, v3, Lcom/join/mgps/adapter/v2$g;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 38
    iget-object p1, p0, Lcom/join/mgps/adapter/v2;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/papa/sim/statistic/pref/b;->j(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa/sim/statistic/pref/b;->f()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 39
    iget-object p1, v3, Lcom/join/mgps/adapter/v2$g;->d:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 40
    :cond_b
    iget-object p1, v3, Lcom/join/mgps/adapter/v2$g;->d:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 41
    :goto_5
    iget-object p1, p0, Lcom/join/mgps/adapter/v2;->b:Landroid/content/Context;

    iget-object p3, p0, Lcom/join/mgps/adapter/v2;->c:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {p3}, Lcom/join/mgps/dto/AccountBean;->getAvatarSrc()Ljava/lang/String;

    move-result-object p3

    iget-object v2, v3, Lcom/join/mgps/adapter/v2$g;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p1, p3, v2}, Lcom/join/mgps/Util/UtilsMy;->E2(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 42
    iget-object p1, p0, Lcom/join/mgps/adapter/v2;->c:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getLevel()I

    move-result p1

    iget-object p3, v3, Lcom/join/mgps/adapter/v2$g;->g:Landroid/widget/TextView;

    invoke-static {p1, p3}, Lcom/join/mgps/Util/r;->h(ILandroid/widget/TextView;)V

    .line 43
    iget-object p1, v3, Lcom/join/mgps/adapter/v2$g;->g:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LV."

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/adapter/v2;->c:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getLevel()I

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object p1, v3, Lcom/join/mgps/adapter/v2$g;->f:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/join/mgps/adapter/v2;->c:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {p3}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object p1, v3, Lcom/join/mgps/adapter/v2$g;->h:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/adapter/v2;->c:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getPapaMoney()J

    move-result-wide v4

    invoke-virtual {p3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\u94dc\u677f"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object p1, p0, Lcom/join/mgps/adapter/v2;->c:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getGender()I

    move-result p1

    if-eq p1, v1, :cond_d

    if-eq p1, v0, :cond_c

    goto :goto_6

    .line 47
    :cond_c
    iget-object p1, v3, Lcom/join/mgps/adapter/v2$g;->e:Landroid/widget/ImageView;

    const p3, 0x7f080062

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    .line 48
    :cond_d
    iget-object p1, v3, Lcom/join/mgps/adapter/v2$g;->e:Landroid/widget/ImageView;

    const p3, 0x7f080063

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 49
    :goto_6
    iget-object p1, v3, Lcom/join/mgps/adapter/v2$g;->b:Landroid/widget/LinearLayout;

    new-instance p3, Lcom/join/mgps/adapter/v2$a;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/v2$a;-><init>(Lcom/join/mgps/adapter/v2;)V

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7

    .line 50
    :cond_e
    iget-object p1, v3, Lcom/join/mgps/adapter/v2$g;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 51
    iget-object p1, v3, Lcom/join/mgps/adapter/v2$g;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 52
    iget-object p1, v3, Lcom/join/mgps/adapter/v2$g;->a:Landroid/widget/LinearLayout;

    new-instance p3, Lcom/join/mgps/adapter/v2$b;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/v2$b;-><init>(Lcom/join/mgps/adapter/v2;)V

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_7
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

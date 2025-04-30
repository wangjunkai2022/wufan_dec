.class public Lcom/join/mgps/adapter/GamePaiWeiAdapter;
.super Landroid/widget/BaseAdapter;
.source "GamePaiWeiAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/GamePaiWeiAdapter$b;,
        Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;,
        Lcom/join/mgps/adapter/GamePaiWeiAdapter$e;,
        Lcom/join/mgps/adapter/GamePaiWeiAdapter$d;,
        Lcom/join/mgps/adapter/GamePaiWeiAdapter$ViewType;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/GamePaiWeiAdapter$d;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/join/mgps/adapter/GamePaiWeiAdapter$b;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/join/mgps/adapter/GamePaiWeiAdapter$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/GamePaiWeiAdapter$d;",
            ">;",
            "Lcom/join/mgps/adapter/GamePaiWeiAdapter$b;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter;->b:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter;->c:Lcom/join/mgps/adapter/GamePaiWeiAdapter$b;

    .line 5
    move-object p2, p1

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Display;->getWidth()I

    move-result p2

    iput p2, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter;->e:I

    mul-int/lit8 p2, p2, 0x2a

    .line 6
    div-int/lit8 p2, p2, 0x64

    iput p2, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter;->e:I

    const/high16 p3, 0x41a00000    # 20.0f

    .line 7
    invoke-static {p1, p3}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result p1

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter;->e:I

    mul-int/lit16 p2, p2, 0x271

    .line 8
    div-int/lit16 p2, p2, 0x9ba

    iput p2, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter;->f:I

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/GamePaiWeiAdapter;)Lcom/join/mgps/adapter/GamePaiWeiAdapter$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter;->c:Lcom/join/mgps/adapter/GamePaiWeiAdapter$b;

    return-object p0
.end method

.method private b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/GamePaiWeiAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/GamePaiWeiAdapter$d$a;

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;-><init>(Lcom/join/mgps/adapter/GamePaiWeiAdapter;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0326

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0907be

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-static {p2, v1}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->b(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    const v1, 0x7f0907b3

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {p2, v1}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->f(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    const v1, 0x7f0907b6

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {p2, v1}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->j(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    const v1, 0x7f0907bc

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p2, v1}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->l(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v1, 0x7f0907b4

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p2, v1}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->n(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v1, 0x7f0907af

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {p2, v1}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->p(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    const v1, 0x7f0907b0

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p2, v1}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->r(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    const v1, 0x7f0907b7

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p2, v1}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->t(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v1, 0x7f0907b2

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p2, v1}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->v(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v1, 0x7f0907ba

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p2, v1}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->x(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v1, 0x7f0907bb

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p2, v1}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->e(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v1, 0x7f0907b8

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-static {p2, v1}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->h(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    .line 16
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;

    move-object v11, v0

    move-object v0, p2

    move-object p2, v11

    .line 18
    :goto_0
    iget-object p3, p3, Lcom/join/mgps/adapter/GamePaiWeiAdapter$d$a;->a:Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;

    .line 19
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter;->e:I

    iget v3, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter;->f:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 20
    iget-object v2, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter;->a:Landroid/content/Context;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v2, v3}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 21
    iget-object v2, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter;->a:Landroid/content/Context;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v2, v3}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 22
    iget-object v2, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter;->a:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 23
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->a(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 24
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->i(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->k(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 26
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->i(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f080985

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 27
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->c(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f080988

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 28
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->o(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f080989

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 29
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->d(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "#AB8E55"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    :cond_1
    const/4 v3, 0x1

    const-string v4, "#339CBB"

    const v5, 0x7f080984

    const v6, 0x7f080986

    if-ne p1, v3, :cond_2

    .line 30
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->i(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 31
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->k(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 32
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->i(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/ImageView;

    move-result-object v3

    const v7, 0x7f08098a

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 33
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->c(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 34
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->o(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 35
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->d(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    :cond_2
    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    .line 36
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->i(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->k(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 38
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->i(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/ImageView;

    move-result-object v3

    const v7, 0x7f080987

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 39
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->c(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 40
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->o(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 41
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->d(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 42
    :cond_3
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->i(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 43
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->k(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, p1, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 45
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v7, v3, :cond_4

    .line 46
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->k(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/TextView;

    move-result-object v7

    const/high16 v10, 0x41c80000    # 25.0f

    invoke-virtual {v7, v3, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 47
    :cond_4
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->k(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/TextView;

    move-result-object v7

    const/high16 v10, 0x41800000    # 16.0f

    invoke-virtual {v7, v3, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 48
    :goto_1
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->k(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->c(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 50
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->o(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 51
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->d(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    :goto_2
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->s(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p3}, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->getNickname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->d(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p3}, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->getUse_time()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->w(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p3}, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->getRole()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {p3}, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->getRole_rank()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p3}, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->getRole_rank()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 56
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->u(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->u(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7b2c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->getRole_rank()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/join/mgps/Util/h1;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 58
    :cond_5
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->u(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    :goto_3
    invoke-virtual {p3}, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 60
    iget-object v1, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter;->a:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->getAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->q(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->H2(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 61
    :cond_6
    invoke-virtual {p3}, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->getCost_coin()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p3}, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->getCost_coin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 62
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->m(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->getCost_coin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    :cond_7
    invoke-static {p2}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;->g(Lcom/join/mgps/adapter/GamePaiWeiAdapter$c;)Landroid/widget/ImageButton;

    move-result-object p2

    new-instance v1, Lcom/join/mgps/adapter/GamePaiWeiAdapter$a;

    invoke-direct {v1, p0, p1, p3}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$a;-><init>(Lcom/join/mgps/adapter/GamePaiWeiAdapter;ILcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method


# virtual methods
.method public c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/GamePaiWeiAdapter$d;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter;->b:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter;->d:Ljava/lang/String;

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/GamePaiWeiAdapter$d;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$d;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/GamePaiWeiAdapter$d;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$d;->b()Lcom/join/mgps/adapter/GamePaiWeiAdapter$ViewType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/GamePaiWeiAdapter;->getItemViewType(I)I

    move-result v0

    .line 2
    sget-object v1, Lcom/join/mgps/adapter/GamePaiWeiAdapter$ViewType;->RANK:Lcom/join/mgps/adapter/GamePaiWeiAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/GamePaiWeiAdapter;->b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/adapter/GamePaiWeiAdapter$ViewType;->values()[Lcom/join/mgps/adapter/GamePaiWeiAdapter$ViewType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

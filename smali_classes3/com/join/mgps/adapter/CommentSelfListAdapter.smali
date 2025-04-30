.class public Lcom/join/mgps/adapter/CommentSelfListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CommentSelfListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/CommentSelfListAdapter$j;,
        Lcom/join/mgps/adapter/CommentSelfListAdapter$h;,
        Lcom/join/mgps/adapter/CommentSelfListAdapter$g;,
        Lcom/join/mgps/adapter/CommentSelfListAdapter$i;,
        Lcom/join/mgps/adapter/CommentSelfListAdapter$l;,
        Lcom/join/mgps/adapter/CommentSelfListAdapter$n;,
        Lcom/join/mgps/adapter/CommentSelfListAdapter$m;,
        Lcom/join/mgps/adapter/CommentSelfListAdapter$o;,
        Lcom/join/mgps/adapter/CommentSelfListAdapter$k;,
        Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/CommentSelfListAdapter$k;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field e:Lcom/join/mgps/adapter/CommentSelfListAdapter$j;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->e:Lcom/join/mgps/adapter/CommentSelfListAdapter$j;

    .line 4
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->b:Landroid/content/Context;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 6
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->e:Lcom/join/mgps/adapter/CommentSelfListAdapter$j;

    .line 9
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->b:Landroid/content/Context;

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->c:Ljava/util/List;

    .line 11
    iput p2, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->d:I

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/CommentSelfListAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->d:I

    return p0
.end method

.method static synthetic b(Lcom/join/mgps/adapter/CommentSelfListAdapter;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->b:Landroid/content/Context;

    return-object p0
.end method

.method private e(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$g;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$g;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/CommentSelfListAdapter$g;-><init>(Lcom/join/mgps/adapter/CommentSelfListAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0101

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0902eb

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$g;->b:Landroid/widget/TextView;

    const v0, 0x7f090a7b

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$g;->c:Landroid/widget/TextView;

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/CommentSelfListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$a;

    if-nez p1, :cond_1

    return-object p2

    .line 8
    :cond_1
    iget-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$g;->b:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$g;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x7

    if-le v0, v1, :cond_2

    .line 10
    iget-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$g;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$g;->c:Landroid/widget/TextView;

    new-instance v1, Lcom/join/mgps/adapter/CommentSelfListAdapter$c;

    invoke-direct {v1, p0, p3}, Lcom/join/mgps/adapter/CommentSelfListAdapter$c;-><init>(Lcom/join/mgps/adapter/CommentSelfListAdapter;Lcom/join/mgps/adapter/CommentSelfListAdapter$g;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 12
    :cond_2
    iget-object p3, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$g;->c:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    const-string p3, "0"

    .line 13
    iget v0, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$a;->d:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    iget v0, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$a;->e:I

    if-eq v0, v1, :cond_3

    goto :goto_2

    :cond_3
    const-string p3, "1"

    .line 14
    :cond_4
    :goto_2
    iget v0, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$a;->a:I

    iget-object p1, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$a;->b:Ljava/lang/String;

    invoke-virtual {p0, p2, v0, p1, p3}, Lcom/join/mgps/adapter/CommentSelfListAdapter;->p(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-object p2
.end method

.method private f(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$h;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$h;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/CommentSelfListAdapter$h;-><init>(Lcom/join/mgps/adapter/CommentSelfListAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0102

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0908bc

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$h;->b:Landroid/widget/TextView;

    const v0, 0x7f091212

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$h;->c:Landroid/widget/TextView;

    const v0, 0x7f09127e

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$h;->d:Landroid/widget/TextView;

    const v0, 0x7f0908bb

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$h;->e:Landroid/widget/ImageView;

    const v0, 0x7f091211

    .line 8
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$h;->f:Landroid/widget/ImageView;

    const v0, 0x7f0908fe

    .line 9
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$h;->g:Landroid/view/View;

    const v0, 0x7f09090d

    .line 10
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$h;->h:Landroid/view/View;

    .line 11
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 12
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/CommentSelfListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$b;

    if-nez p1, :cond_1

    return-object p2

    .line 13
    :cond_1
    iget-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$h;->b:Landroid/widget/TextView;

    iget v1, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$b;->c:I

    invoke-static {v1}, Lcom/join/mgps/Util/i0;->R(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$h;->c:Landroid/widget/TextView;

    iget v1, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$b;->d:I

    invoke-static {v1}, Lcom/join/mgps/Util/i0;->R(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$h;->d:Landroid/widget/TextView;

    iget v1, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$b;->e:I

    invoke-static {v1}, Lcom/join/mgps/Util/i0;->R(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "0"

    .line 16
    iget v1, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$b;->h:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    iget v1, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$b;->i:I

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "1"

    .line 17
    :cond_3
    :goto_1
    iget v1, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$b;->a:I

    iget-object v3, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$b;->b:Ljava/lang/String;

    invoke-virtual {p0, p2, v1, v3, v0}, Lcom/join/mgps/adapter/CommentSelfListAdapter;->p(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;)V

    .line 18
    iget v0, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$b;->f:I

    if-ne v0, v2, :cond_4

    .line 19
    iget-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$h;->e:Landroid/widget/ImageView;

    const v1, 0x7f080ca5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 20
    :cond_4
    iget-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$h;->e:Landroid/widget/ImageView;

    const v1, 0x7f080ca0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 21
    :goto_2
    iget v0, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$b;->g:I

    if-ne v0, v2, :cond_5

    .line 22
    iget-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$h;->f:Landroid/widget/ImageView;

    const v1, 0x7f08038f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 23
    :cond_5
    iget-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$h;->f:Landroid/widget/ImageView;

    const v1, 0x7f08038d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 24
    :goto_3
    iget v0, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$b;->a:I

    .line 25
    iget-object v1, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$b;->b:Ljava/lang/String;

    .line 26
    iget v3, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$b;->f:I

    const/4 v4, 0x2

    if-ne v3, v2, :cond_6

    const/4 v3, 0x2

    goto :goto_4

    :cond_6
    const/4 v3, 0x1

    .line 27
    :goto_4
    iget-object v5, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$h;->g:Landroid/view/View;

    new-instance v6, Lcom/join/mgps/adapter/CommentSelfListAdapter$d;

    invoke-direct {v6, p0, v0, v1, v3}, Lcom/join/mgps/adapter/CommentSelfListAdapter$d;-><init>(Lcom/join/mgps/adapter/CommentSelfListAdapter;ILjava/lang/String;I)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget p1, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$b;->g:I

    if-ne p1, v2, :cond_7

    const/4 v2, 0x2

    .line 29
    :cond_7
    iget-object p1, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$h;->h:Landroid/view/View;

    new-instance p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$e;

    invoke-direct {p3, p0, v0, v1, v2}, Lcom/join/mgps/adapter/CommentSelfListAdapter$e;-><init>(Lcom/join/mgps/adapter/CommentSelfListAdapter;ILjava/lang/String;I)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    return-object p2
.end method

.method private g(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$i;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$i;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/CommentSelfListAdapter$i;-><init>(Lcom/join/mgps/adapter/CommentSelfListAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0103

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f091245

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$i;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f0900a4

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$i;->c:Landroid/widget/TextView;

    const v0, 0x7f09038e

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$i;->f:Landroid/view/View;

    const v0, 0x7f091248

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$i;->d:Landroid/widget/TextView;

    const v0, 0x7f0902ac

    .line 8
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/MStarBar;

    iput-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$i;->e:Lcom/join/mgps/customview/MStarBar;

    const v0, 0x7f09029f

    .line 9
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$i;->g:Landroid/view/View;

    .line 10
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 11
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/CommentSelfListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$c;

    if-nez p1, :cond_1

    return-object p2

    .line 12
    :cond_1
    iget-boolean v0, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$c;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 13
    iget-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$i;->f:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 14
    :cond_2
    iget-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$i;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    const-string v0, "0"

    .line 15
    iget v2, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$c;->i:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    iget v2, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$c;->f:I

    if-eq v2, v3, :cond_3

    goto :goto_2

    .line 16
    :cond_3
    iget-object v0, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$i;->e:Lcom/join/mgps/customview/MStarBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "1"

    goto :goto_3

    .line 17
    :cond_4
    :goto_2
    iget-object v2, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$i;->e:Lcom/join/mgps/customview/MStarBar;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 18
    :goto_3
    iget-object v2, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$i;->e:Lcom/join/mgps/customview/MStarBar;

    iget-wide v3, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$c;->h:D

    double-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/customview/MStarBar;->setStarCount(I)V

    .line 19
    iget-object v2, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$i;->e:Lcom/join/mgps/customview/MStarBar;

    iget-wide v3, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$c;->h:D

    invoke-virtual {v2, v3, v4}, Lcom/join/mgps/customview/MStarBar;->setStarMark(D)V

    .line 20
    iget-object v2, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$i;->e:Lcom/join/mgps/customview/MStarBar;

    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 21
    iget-object v1, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$i;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v2, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$c;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 22
    iget-object v1, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$i;->d:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$c;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v1, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$i;->c:Landroid/widget/TextView;

    iget-wide v2, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$c;->g:J

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-static {v2, v3}, Lcom/join/android/app/common/utils/c;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object p3, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$i;->g:Landroid/view/View;

    iget v1, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$c;->b:I

    iget-object p1, p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k$c;->c:Ljava/lang/String;

    invoke-virtual {p0, p3, v1, p1, v0}, Lcom/join/mgps/adapter/CommentSelfListAdapter;->p(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-object p2
.end method

.method private h(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c013a

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$m;

    invoke-direct {p3, p0, p2}, Lcom/join/mgps/adapter/CommentSelfListAdapter$m;-><init>(Lcom/join/mgps/adapter/CommentSelfListAdapter;Landroid/view/View;)V

    .line 3
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$m;

    .line 5
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/CommentSelfListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 6
    iget-object p3, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$m;->a:Lit/sephiroth/android/library/widget/HListView;

    new-instance v0, Lcom/join/mgps/adapter/l;

    iget-object v1, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->b:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-direct {v0, v1, p1, v2}, Lcom/join/mgps/adapter/l;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    invoke-virtual {p3, v0}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-object p2
.end method

.method private j(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c027a

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$o;

    invoke-direct {p3, p0, p2}, Lcom/join/mgps/adapter/CommentSelfListAdapter$o;-><init>(Lcom/join/mgps/adapter/CommentSelfListAdapter;Landroid/view/View;)V

    .line 3
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$o;

    .line 5
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/CommentSelfListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    const-string v1, "\u8ba2\u9605\u7684\u6e38\u620f\u5355"

    const-string v2, "\u521b\u5efa\u7684\u6e38\u620f\u5355"

    const/16 v3, 0x8

    if-ne p1, v0, :cond_1

    .line 6
    iget-object p1, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$o;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    move-object v1, v2

    goto :goto_2

    :cond_1
    const/4 v0, 0x2

    const/4 v4, 0x0

    if-ne p1, v0, :cond_2

    .line 7
    iget-object p1, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$o;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    iget-object p1, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$o;->b:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/join/mgps/adapter/CommentSelfListAdapter$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/CommentSelfListAdapter$a;-><init>(Lcom/join/mgps/adapter/CommentSelfListAdapter;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 9
    iget-object p1, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$o;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 10
    iget-object p1, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$o;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11
    iget-object p1, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$o;->b:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/join/mgps/adapter/CommentSelfListAdapter$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/CommentSelfListAdapter$b;-><init>(Lcom/join/mgps/adapter/CommentSelfListAdapter;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 12
    :cond_4
    iget-object p1, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$o;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string v1, "\u70b9\u8bc4\u7684\u6e38\u620f"

    .line 13
    :goto_2
    iget-object p1, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$o;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p1, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$o;->d:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    return-object p2
.end method

.method private l(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c01d8

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$n;

    invoke-direct {p3, p0, p2}, Lcom/join/mgps/adapter/CommentSelfListAdapter$n;-><init>(Lcom/join/mgps/adapter/CommentSelfListAdapter;Landroid/view/View;)V

    .line 3
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$n;

    .line 5
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/CommentSelfListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;

    .line 6
    iget-object v1, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$n;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;->getPortrait()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 7
    iget-object v1, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$n;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;->getNick_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;->getRank()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 9
    iget-object v1, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$n;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;->getRank()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v1, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$n;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 11
    :cond_1
    iget-object v1, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$n;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    :goto_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;->getSex()Ljava/lang/String;

    move-result-object v1

    const-string v4, "1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    iget-object v1, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$n;->e:Landroid/widget/ImageView;

    const v4, 0x7f0803eb

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 14
    :cond_2
    iget-object v1, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$n;->e:Landroid/widget/ImageView;

    const v4, 0x7f0803ec

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 15
    :goto_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;->getVip()I

    move-result v1

    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;->getSvip()I

    move-result v4

    if-lez v1, :cond_3

    .line 17
    iget-object v1, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$n;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 18
    :cond_3
    iget-object v1, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$n;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    if-lez v4, :cond_4

    .line 19
    iget-object v1, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$n;->h:Lcom/join/mgps/customview/VipView;

    invoke-virtual {v1, v3, v4}, Lcom/join/mgps/customview/VipView;->setVipData(II)V

    .line 20
    :cond_4
    invoke-virtual {p1}, Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;->getTag_info()Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, ","

    .line 22
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 23
    iget-object v1, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$n;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 24
    array-length v1, p1

    :goto_4
    if-ge v3, v1, :cond_5

    aget-object v2, p1, v3

    .line 25
    iget-object v4, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->b:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0c01da

    invoke-virtual {v4, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 26
    iget-object v5, p3, Lcom/join/mgps/adapter/CommentSelfListAdapter$n;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v5, 0x7f091005

    .line 27
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 28
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    return-object p2
.end method


# virtual methods
.method public c(Lcom/join/mgps/adapter/CommentSelfListAdapter$k;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->c:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->c:Ljava/util/List;

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/CommentSelfListAdapter$k;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->c:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->c:Ljava/util/List;

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->c:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/CommentSelfListAdapter$k;->a()Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/CommentSelfListAdapter$k;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/adapter/CommentSelfListAdapter$k;->b()Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;

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
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/CommentSelfListAdapter;->getItemViewType(I)I

    move-result v0

    .line 2
    sget-object v1, Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;->COMMENT_LIST_ITEM_HEADER:Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/CommentSelfListAdapter;->g(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;->COMMENT_LIST_ITEM_CONTENT:Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/CommentSelfListAdapter;->e(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 6
    :cond_1
    sget-object v1, Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;->COMMENT_LIST_ITEM_FOOTER:Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/CommentSelfListAdapter;->f(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 8
    :cond_2
    sget-object v1, Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;->FAVORITES_ITEM_TITLE:Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/CommentSelfListAdapter;->j(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 10
    :cond_3
    sget-object v1, Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;->FAVORITES_TITLE:Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/CommentSelfListAdapter;->l(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 12
    :cond_4
    sget-object v1, Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;->FAVORITES_F:Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/CommentSelfListAdapter;->h(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_5
    :goto_0
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;->values()[Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/CommentSelfListAdapter$k;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->c:Ljava/util/List;

    return-object v0
.end method

.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/CommentSelfListAdapter$k;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->c:Ljava/util/List;

    return-object v0
.end method

.method public m(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/CommentSelfListAdapter$k;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->c:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public n(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/CommentSelfListAdapter$k;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->c:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->c:Ljava/util/List;

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public o(Lcom/join/mgps/adapter/CommentSelfListAdapter$j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentSelfListAdapter;->e:Lcom/join/mgps/adapter/CommentSelfListAdapter$j;

    return-void
.end method

.method p(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/CommentSelfListAdapter$f;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/join/mgps/adapter/CommentSelfListAdapter$f;-><init>(Lcom/join/mgps/adapter/CommentSelfListAdapter;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

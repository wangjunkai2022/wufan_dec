.class public Lcom/join/mgps/adapter/ForumSearchHintAdapter;
.super Landroid/widget/BaseAdapter;
.source "ForumSearchHintAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/ForumSearchHintAdapter$b;,
        Lcom/join/mgps/adapter/ForumSearchHintAdapter$c;,
        Lcom/join/mgps/adapter/ForumSearchHintAdapter$d;,
        Lcom/join/mgps/adapter/ForumSearchHintAdapter$e;,
        Lcom/join/mgps/adapter/ForumSearchHintAdapter$g;,
        Lcom/join/mgps/adapter/ForumSearchHintAdapter$f;,
        Lcom/join/mgps/adapter/ForumSearchHintAdapter$ViewType;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumSearchHintAdapter$f;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/join/mgps/adapter/ForumSearchHintAdapter$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->c:Lcom/join/mgps/adapter/ForumSearchHintAdapter$b;

    .line 3
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->a:Landroid/content/Context;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->b:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/ForumSearchHintAdapter;)Lcom/join/mgps/adapter/ForumSearchHintAdapter$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->c:Lcom/join/mgps/adapter/ForumSearchHintAdapter$b;

    return-object p0
.end method

.method private c(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const-string p3, "0"

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/ForumSearchHintAdapter$c;

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumSearchHintAdapter$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/ForumSearchHintAdapter$c;-><init>(Lcom/join/mgps/adapter/ForumSearchHintAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c043d

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f090524

    .line 4
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/join/mgps/adapter/ForumSearchHintAdapter$c;->c:Landroid/widget/TextView;

    const v1, 0x7f090513

    .line 5
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/join/mgps/adapter/ForumSearchHintAdapter$c;->d:Landroid/widget/TextView;

    const v1, 0x7f09051d

    .line 6
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/join/mgps/adapter/ForumSearchHintAdapter$c;->e:Landroid/widget/TextView;

    const v1, 0x7f091283

    .line 7
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/join/mgps/adapter/ForumSearchHintAdapter$c;->f:Landroid/view/View;

    const v1, 0x7f0902a6

    .line 8
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/join/mgps/adapter/ForumSearchHintAdapter$c;->g:Landroid/view/View;

    const v1, 0x7f09051f

    .line 9
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/join/mgps/adapter/ForumSearchHintAdapter$c;->h:Landroid/view/View;

    const/high16 v1, 0x40c00000    # 6.0f

    .line 10
    :try_start_0
    invoke-static {v1}, Lcom/join/android/app/component/optimizetext/a;->a(F)I

    move-result v1

    .line 11
    iget-object v2, v0, Lcom/join/mgps/adapter/ForumSearchHintAdapter$c;->f:Landroid/view/View;

    invoke-virtual {p0, v2, v1}, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->g(Landroid/view/View;I)V

    .line 12
    iget-object v2, v0, Lcom/join/mgps/adapter/ForumSearchHintAdapter$c;->g:Landroid/view/View;

    invoke-virtual {p0, v2, v1}, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->g(Landroid/view/View;I)V

    .line 13
    iget-object v2, v0, Lcom/join/mgps/adapter/ForumSearchHintAdapter$c;->h:Landroid/view/View;

    invoke-virtual {p0, v2, v1}, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->g(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 15
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 16
    :goto_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f$a;

    if-nez p1, :cond_1

    return-object p2

    .line 17
    :cond_1
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumSearchHintAdapter$c;->c:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f$a;->c:Ljava/lang/String;

    invoke-static {v1, v2, p3}, Lcom/join/mgps/Util/i0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumSearchHintAdapter$c;->d:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f$a;->d:Ljava/lang/String;

    invoke-static {v1, v2, p3}, Lcom/join/mgps/Util/i0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v0, v0, Lcom/join/mgps/adapter/ForumSearchHintAdapter$c;->e:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f$a;->e:Ljava/lang/String;

    invoke-static {v0, v1, p3}, Lcom/join/mgps/Util/i0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f$a;->b:Ljava/lang/String;

    .line 21
    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->i(Landroid/view/View;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object p2
.end method

.method private d(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumSearchHintAdapter$d;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumSearchHintAdapter$d;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumSearchHintAdapter$d;-><init>(Lcom/join/mgps/adapter/ForumSearchHintAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0421

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090519

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumSearchHintAdapter$d;->b:Landroid/widget/TextView;

    const v0, 0x7f090a32

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumSearchHintAdapter$d;->c:Landroid/view/View;

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f$b;

    if-nez p1, :cond_1

    return-object p2

    .line 8
    :cond_1
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f$b;->c:Ljava/lang/String;

    .line 9
    iget-object v1, p1, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f$b;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v3, p0, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06038c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    add-int/2addr v1, v4

    .line 14
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v1, v0, :cond_2

    if-ltz v4, :cond_2

    .line 15
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v3, 0x21

    invoke-virtual {v2, v0, v4, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 16
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    :cond_2
    :goto_1
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumSearchHintAdapter$d;->b:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/join/mgps/Util/i0;->A1(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;)V

    .line 18
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f$b;->d:Ljava/lang/String;

    .line 19
    invoke-virtual {p0, p2, v0}, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->i(Landroid/view/View;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 20
    :try_start_3
    iget-boolean p1, p1, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f$b;->b:Z

    if-eqz p1, :cond_3

    .line 21
    iget-object p1, p3, Lcom/join/mgps/adapter/ForumSearchHintAdapter$d;->b:Landroid/widget/TextView;

    const-string v0, "#3b3b3b"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41200000    # 10.0f

    .line 22
    invoke-static {p1}, Lcom/join/android/app/component/optimizetext/a;->a(F)I

    move-result p1

    goto :goto_2

    :cond_3
    const/high16 p1, 0x40000000    # 2.0f

    .line 23
    invoke-static {p1}, Lcom/join/android/app/component/optimizetext/a;->a(F)I

    move-result p1

    .line 24
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumSearchHintAdapter$d;->b:Landroid/widget/TextView;

    const-string v1, "#8a8a8a"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    :goto_2
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumSearchHintAdapter$d;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 26
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 27
    iget-object p1, p3, Lcom/join/mgps/adapter/ForumSearchHintAdapter$d;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 28
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-object p2
.end method

.method private e(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/ForumSearchHintAdapter$e;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumSearchHintAdapter$e;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumSearchHintAdapter$e;-><init>(Lcom/join/mgps/adapter/ForumSearchHintAdapter;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0453

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090512

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumSearchHintAdapter$e;->b:Landroid/widget/Button;

    const v0, 0x7f090522

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumSearchHintAdapter$e;->c:Landroid/widget/TextView;

    const v0, 0x7f090efb

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/join/mgps/adapter/ForumSearchHintAdapter$e;->d:Landroid/view/View;

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    .line 8
    invoke-static {v2}, Lcom/join/android/app/component/optimizetext/a;->a(F)I

    move-result v2

    iget-object v3, p3, Lcom/join/mgps/adapter/ForumSearchHintAdapter$e;->d:Landroid/view/View;

    .line 9
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object v4, p3, Lcom/join/mgps/adapter/ForumSearchHintAdapter$e;->d:Landroid/view/View;

    .line 10
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 11
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 12
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 13
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f$c;

    if-nez p1, :cond_1

    return-object p2

    .line 14
    :cond_1
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f$c;->b:Ljava/lang/String;

    .line 15
    iget-object v1, p1, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f$c;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 16
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v3, p0, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06038c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 19
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-int/2addr v1, v4

    .line 20
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v1, v0, :cond_2

    if-ltz v4, :cond_2

    .line 21
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v3, 0x21

    invoke-virtual {v2, v0, v4, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 22
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 23
    :cond_2
    :goto_1
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumSearchHintAdapter$e;->c:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f$c;->c:Ljava/lang/String;

    .line 25
    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->i(Landroid/view/View;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object p2
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumSearchHintAdapter$f;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->b:Ljava/util/List;

    return-object v0
.end method

.method public f(Lcom/join/mgps/adapter/ForumSearchHintAdapter$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->c:Lcom/join/mgps/adapter/ForumSearchHintAdapter$b;

    return-void
.end method

.method g(Landroid/view/View;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    .line 3
    invoke-virtual {p1, v0, p2, v1, p2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->b:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f;->a()Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumSearchHintAdapter$f;->b()Lcom/join/mgps/adapter/ForumSearchHintAdapter$ViewType;

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
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->getItemViewType(I)I

    move-result v0

    .line 2
    sget-object v1, Lcom/join/mgps/adapter/ForumSearchHintAdapter$ViewType;->POST_FOOTER:Lcom/join/mgps/adapter/ForumSearchHintAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->c(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcom/join/mgps/adapter/ForumSearchHintAdapter$ViewType;->POST_MESSAGE:Lcom/join/mgps/adapter/ForumSearchHintAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->d(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 6
    :cond_1
    sget-object v1, Lcom/join/mgps/adapter/ForumSearchHintAdapter$ViewType;->POST_SUBJECT:Lcom/join/mgps/adapter/ForumSearchHintAdapter$ViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->e(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_2
    :goto_0
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/adapter/ForumSearchHintAdapter$ViewType;->values()[Lcom/join/mgps/adapter/ForumSearchHintAdapter$ViewType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public h(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumSearchHintAdapter$f;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->b:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->b:Ljava/util/List;

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumSearchHintAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public i(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumSearchHintAdapter$a;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumSearchHintAdapter$a;-><init>(Lcom/join/mgps/adapter/ForumSearchHintAdapter;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

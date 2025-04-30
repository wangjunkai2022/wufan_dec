.class public Lcom/airsaid/pickerviewlibrary/widget/b;
.super Ljava/lang/Object;
.source "WheelOptions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

.field private c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

.field private d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "TT;>;>;>;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Lf/c;

.field private j:Lf/c;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->h:Z

    .line 3
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->a:Landroid/view/View;

    .line 4
    invoke-virtual {p0, p1}, Lcom/airsaid/pickerviewlibrary/widget/b;->t(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/airsaid/pickerviewlibrary/widget/b;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->f:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic b(Lcom/airsaid/pickerviewlibrary/widget/b;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    return-object p0
.end method

.method static synthetic c(Lcom/airsaid/pickerviewlibrary/widget/b;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->g:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic d(Lcom/airsaid/pickerviewlibrary/widget/b;)Lf/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->j:Lf/c;

    return-object p0
.end method

.method static synthetic e(Lcom/airsaid/pickerviewlibrary/widget/b;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    return-object p0
.end method

.method static synthetic f(Lcom/airsaid/pickerviewlibrary/widget/b;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    return-object p0
.end method

.method private i(III)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    new-instance v2, Le/a;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Le/a;-><init>(Ljava/util/ArrayList;)V

    .line 4
    invoke-virtual {v1, v2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setAdapter(Le/c;)V

    .line 5
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {v0, p2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCurrentItem(I)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 7
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    new-instance v2, Le/a;

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Le/a;-><init>(Ljava/util/ArrayList;)V

    .line 9
    invoke-virtual {v1, v2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setAdapter(Le/c;)V

    .line 10
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {p1, p3}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCurrentItem(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public g()[I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {v1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 2
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {v1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 3
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {v1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    return-object v0
.end method

.method public h()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->a:Landroid/view/View;

    return-object v0
.end method

.method public j(III)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->h:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/airsaid/pickerviewlibrary/widget/b;->i(III)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {v0, p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCurrentItem(I)V

    .line 4
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {p1, p2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCurrentItem(I)V

    .line 5
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {p1, p3}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCurrentItem(I)V

    return-void
.end method

.method public k(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {v0, p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCyclic(Z)V

    .line 2
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {v0, p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCyclic(Z)V

    .line 3
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {v0, p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCyclic(Z)V

    return-void
.end method

.method public l(ZZZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {v0, p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCyclic(Z)V

    .line 2
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {p1, p2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCyclic(Z)V

    .line 3
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {p1, p3}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCyclic(Z)V

    return-void
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {v0, p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setLabel(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {p1, p2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setLabel(Ljava/lang/String;)V

    :cond_1
    if-eqz p3, :cond_2

    .line 3
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {p1, p3}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setLabel(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public n(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {v0, p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCyclic(Z)V

    return-void
.end method

.method public o(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {v0, p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCyclic(Z)V

    return-void
.end method

.method public p(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0, v1}, Lcom/airsaid/pickerviewlibrary/widget/b;->q(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public q(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TT;>;",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "TT;>;>;",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "TT;>;>;>;Z)V"
        }
    .end annotation

    .line 1
    iput-boolean p4, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->h:Z

    .line 2
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->e:Ljava/util/ArrayList;

    .line 3
    iput-object p2, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->f:Ljava/util/ArrayList;

    .line 4
    iput-object p3, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->g:Ljava/util/ArrayList;

    const/16 p1, 0x8

    if-nez p3, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    if-nez p2, :cond_1

    const/16 v0, 0xc

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->a:Landroid/view/View;

    sget v2, Lcom/airsaid/pickerviewlibrary/R$id;->options1:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    iput-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 6
    new-instance v2, Le/a;

    iget-object v3, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->e:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v0}, Le/a;-><init>(Ljava/util/ArrayList;I)V

    invoke-virtual {v1, v2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setAdapter(Le/c;)V

    .line 7
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCurrentItem(I)V

    .line 8
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->a:Landroid/view/View;

    sget v2, Lcom/airsaid/pickerviewlibrary/R$id;->options2:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 9
    iget-object v2, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->f:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 10
    new-instance v3, Le/a;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Le/a;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v3}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setAdapter(Le/c;)V

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    iget-object v2, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {v2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->getCurrentItem()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCurrentItem(I)V

    .line 12
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->a:Landroid/view/View;

    sget v2, Lcom/airsaid/pickerviewlibrary/R$id;->options3:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 13
    iget-object v2, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->g:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 14
    new-instance v3, Le/a;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Le/a;-><init>(Ljava/util/ArrayList;)V

    .line 16
    invoke-virtual {v0, v3}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setAdapter(Le/c;)V

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {v0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCurrentItem(I)V

    .line 18
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    .line 19
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    :cond_4
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 21
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    :cond_5
    new-instance p1, Lcom/airsaid/pickerviewlibrary/widget/b$a;

    invoke-direct {p1, p0}, Lcom/airsaid/pickerviewlibrary/widget/b$a;-><init>(Lcom/airsaid/pickerviewlibrary/widget/b;)V

    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->i:Lf/c;

    .line 23
    new-instance p1, Lcom/airsaid/pickerviewlibrary/widget/b$b;

    invoke-direct {p1, p0}, Lcom/airsaid/pickerviewlibrary/widget/b$b;-><init>(Lcom/airsaid/pickerviewlibrary/widget/b;)V

    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->j:Lf/c;

    if-eqz p2, :cond_6

    if-eqz p4, :cond_6

    .line 24
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    iget-object p2, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->i:Lf/c;

    invoke-virtual {p1, p2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setOnItemSelectedListener(Lf/c;)V

    :cond_6
    if-eqz p3, :cond_7

    if-eqz p4, :cond_7

    .line 25
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    iget-object p2, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->j:Lf/c;

    invoke-virtual {p1, p2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setOnItemSelectedListener(Lf/c;)V

    :cond_7
    return-void
.end method

.method public r(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TT;>;",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "TT;>;>;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/airsaid/pickerviewlibrary/widget/b;->q(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public s(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setTextSize(F)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setTextSize(F)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0, p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setTextSize(F)V

    :cond_2
    return-void
.end method

.method public t(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/b;->a:Landroid/view/View;

    return-void
.end method

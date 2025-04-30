.class public Lcom/join/mgps/customview/input/InputNumView;
.super Landroid/widget/LinearLayout;
.source "InputNumView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/input/InputNumView$d;,
        Lcom/join/mgps/customview/input/InputNumView$e;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/GridView;

.field private d:Lcom/join/mgps/customview/input/InputView_Num;

.field private e:Lcom/join/mgps/customview/input/InputNumView$d;

.field private f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/customview/input/InputNumView;->e()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/customview/input/InputNumView;->e()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/customview/input/InputNumView;->e()V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/input/InputNumView;)Lcom/join/mgps/customview/input/InputNumView$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/input/InputNumView;->e:Lcom/join/mgps/customview/input/InputNumView$d;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/input/InputNumView;)Lcom/join/mgps/customview/input/InputView_Num;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/input/InputNumView;->d:Lcom/join/mgps/customview/input/InputView_Num;

    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/customview/input/InputNumView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/input/InputNumView;->a:Landroid/content/Context;

    return-object p0
.end method

.method private f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/input/InputNumView;->b:Landroid/view/View;

    new-instance v1, Lcom/join/mgps/customview/input/InputNumView$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/input/InputNumView$a;-><init>(Lcom/join/mgps/customview/input/InputNumView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/input/InputNumView;->c:Landroid/widget/GridView;

    new-instance v1, Lcom/join/mgps/customview/input/InputNumView$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/input/InputNumView$b;-><init>(Lcom/join/mgps/customview/input/InputNumView;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/input/InputNumView;->d:Lcom/join/mgps/customview/input/InputView_Num;

    new-instance v1, Lcom/join/mgps/customview/input/InputNumView$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/input/InputNumView$c;-><init>(Lcom/join/mgps/customview/input/InputNumView;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/input/InputView_Num;->setOnFinishListener(Lcom/join/mgps/customview/input/InputView_Num$a;)V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/input/InputNumView;->d:Lcom/join/mgps/customview/input/InputView_Num;

    invoke-virtual {v0}, Lcom/join/mgps/customview/input/InputView_Num;->b()V

    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/input/InputNumView;->a:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0376

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f091192

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/mgps/customview/input/InputNumView;->f:Landroid/widget/TextView;

    const v1, 0x7f0907ee

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/customview/input/InputNumView;->b:Landroid/view/View;

    const v1, 0x7f09001d

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/join/mgps/customview/input/InputNumView;->c:Landroid/widget/GridView;

    const v0, 0x7f09001c

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/input/InputView_Num;

    iput-object v0, p0, Lcom/join/mgps/customview/input/InputNumView;->d:Lcom/join/mgps/customview/input/InputView_Num;

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/input/InputNumView;->c:Landroid/widget/GridView;

    new-instance v1, Lcom/join/mgps/customview/input/InputNumView$e;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/input/InputNumView$e;-><init>(Lcom/join/mgps/customview/input/InputNumView;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 8
    invoke-direct {p0}, Lcom/join/mgps/customview/input/InputNumView;->f()V

    return-void
.end method

.method public setCurrentPwd(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2
    iget-object v3, p0, Lcom/join/mgps/customview/input/InputNumView;->d:Lcom/join/mgps/customview/input/InputView_Num;

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/join/mgps/customview/input/InputView_Num;->a(Ljava/lang/String;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setListener(Lcom/join/mgps/customview/input/InputNumView$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/input/InputNumView;->e:Lcom/join/mgps/customview/input/InputNumView$d;

    return-void
.end method

.method public setNumLengthAndIsPwd(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/input/InputNumView;->d:Lcom/join/mgps/customview/input/InputView_Num;

    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/customview/input/InputView_Num;->setNumLengthAndIsPwd(IZ)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/input/InputNumView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

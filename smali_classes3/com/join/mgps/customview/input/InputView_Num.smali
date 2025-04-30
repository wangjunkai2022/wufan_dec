.class public Lcom/join/mgps/customview/input/InputView_Num;
.super Landroid/widget/LinearLayout;
.source "InputView_Num.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/input/InputView_Num$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/join/mgps/customview/input/InputView_Num$a;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x5

    .line 2
    iput p1, p0, Lcom/join/mgps/customview/input/InputView_Num;->a:I

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/input/InputView_Num;->c:Ljava/util/List;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/input/InputView_Num;->d:Ljava/util/List;

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/join/mgps/customview/input/InputView_Num;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x5

    .line 7
    iput p1, p0, Lcom/join/mgps/customview/input/InputView_Num;->a:I

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/input/InputView_Num;->c:Ljava/util/List;

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/input/InputView_Num;->d:Ljava/util/List;

    const/4 p1, -0x1

    .line 10
    iput p1, p0, Lcom/join/mgps/customview/input/InputView_Num;->e:I

    return-void
.end method

.method private d(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0801cd

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0801ce

    .line 3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 4
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private getNums()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/customview/input/InputView_Num;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/input/InputView_Num;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/join/mgps/customview/input/InputView_Num;->e:I

    .line 2
    iget v1, p0, Lcom/join/mgps/customview/input/InputView_Num;->a:I

    if-lt v0, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 3
    iput v0, p0, Lcom/join/mgps/customview/input/InputView_Num;->e:I

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/input/InputView_Num;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/input/InputView_Num;->d:Ljava/util/List;

    iget v1, p0, Lcom/join/mgps/customview/input/InputView_Num;->e:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/join/mgps/customview/input/InputView_Num;->d(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 6
    iget p1, p0, Lcom/join/mgps/customview/input/InputView_Num;->e:I

    iget v0, p0, Lcom/join/mgps/customview/input/InputView_Num;->a:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/join/mgps/customview/input/InputView_Num;->e:I

    .line 8
    iget-object p1, p0, Lcom/join/mgps/customview/input/InputView_Num;->b:Lcom/join/mgps/customview/input/InputView_Num$a;

    invoke-direct {p0}, Lcom/join/mgps/customview/input/InputView_Num;->getNums()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/join/mgps/customview/input/InputView_Num$a;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/input/InputView_Num;->d:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iput-object v1, p0, Lcom/join/mgps/customview/input/InputView_Num;->d:Ljava/util/List;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/input/InputView_Num;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    iput-object v1, p0, Lcom/join/mgps/customview/input/InputView_Num;->c:Ljava/util/List;

    :cond_1
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/join/mgps/customview/input/InputView_Num;->e:I

    return-void
.end method

.method public c()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/input/InputView_Num;->e:I

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/join/mgps/customview/input/InputView_Num;->c:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, ""

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/input/InputView_Num;->c:Ljava/util/List;

    iget v1, p0, Lcom/join/mgps/customview/input/InputView_Num;->e:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/input/InputView_Num;->d:Ljava/util/List;

    iget v1, p0, Lcom/join/mgps/customview/input/InputView_Num;->e:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0, v3}, Lcom/join/mgps/customview/input/InputView_Num;->d(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 5
    iget v0, p0, Lcom/join/mgps/customview/input/InputView_Num;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/join/mgps/customview/input/InputView_Num;->e:I

    if-gez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/input/InputView_Num;->b:Lcom/join/mgps/customview/input/InputView_Num$a;

    invoke-interface {v0, v3}, Lcom/join/mgps/customview/input/InputView_Num$a;->a(Ljava/lang/String;)V

    .line 7
    iput v2, p0, Lcom/join/mgps/customview/input/InputView_Num;->e:I

    goto :goto_0

    .line 8
    :cond_1
    iget v0, p0, Lcom/join/mgps/customview/input/InputView_Num;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/join/mgps/customview/input/InputView_Num;->e:I

    if-gez v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/input/InputView_Num;->b:Lcom/join/mgps/customview/input/InputView_Num$a;

    invoke-interface {v0, v3}, Lcom/join/mgps/customview/input/InputView_Num$a;->a(Ljava/lang/String;)V

    .line 10
    iput v2, p0, Lcom/join/mgps/customview/input/InputView_Num;->e:I

    :cond_2
    :goto_0
    return-void
.end method

.method public setNumLengthAndIsPwd(IZ)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41100000    # 9.0f

    invoke-static {v0, v1}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v0

    .line 2
    iput p1, p0, Lcom/join/mgps/customview/input/InputView_Num;->a:I

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/input/InputView_Num;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/input/InputView_Num;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    .line 5
    :goto_0
    iget v1, p0, Lcom/join/mgps/customview/input/InputView_Num;->a:I

    if-ge p1, v1, :cond_2

    .line 6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0388

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090434

    .line 7
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    if-eqz p2, :cond_0

    .line 8
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 9
    :cond_0
    iget-object v3, p0, Lcom/join/mgps/customview/input/InputView_Num;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 11
    iget v3, p0, Lcom/join/mgps/customview/input/InputView_Num;->a:I

    add-int/lit8 v3, v3, -0x1

    if-eq p1, v3, :cond_1

    .line 12
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 13
    :cond_1
    invoke-virtual {p0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setOnFinishListener(Lcom/join/mgps/customview/input/InputView_Num$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/input/InputView_Num;->b:Lcom/join/mgps/customview/input/InputView_Num$a;

    return-void
.end method

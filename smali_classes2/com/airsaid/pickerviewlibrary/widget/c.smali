.class public Lcom/airsaid/pickerviewlibrary/widget/c;
.super Ljava/lang/Object;
.source "WheelTime.java"


# static fields
.field public static k:Ljava/text/DateFormat; = null

.field public static final l:I = 0x7c6

.field public static final m:I = 0x834


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

.field private c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

.field private d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

.field private e:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

.field private f:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

.field private g:Lcom/airsaid/pickerviewlibrary/TimePickerView$Type;

.field private h:I

.field private i:I

.field private j:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/airsaid/pickerviewlibrary/widget/c;->k:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7c6

    .line 2
    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->h:I

    const/16 v0, 0x834

    .line 3
    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->i:I

    const/high16 v0, 0x40a00000    # 5.0f

    .line 4
    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->j:F

    .line 5
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->a:Landroid/view/View;

    .line 6
    sget-object v0, Lcom/airsaid/pickerviewlibrary/TimePickerView$Type;->ALL:Lcom/airsaid/pickerviewlibrary/TimePickerView$Type;

    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->g:Lcom/airsaid/pickerviewlibrary/TimePickerView$Type;

    .line 7
    invoke-virtual {p0, p1}, Lcom/airsaid/pickerviewlibrary/widget/c;->p(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/airsaid/pickerviewlibrary/TimePickerView$Type;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7c6

    .line 9
    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->h:I

    const/16 v0, 0x834

    .line 10
    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->i:I

    const/high16 v0, 0x40a00000    # 5.0f

    .line 11
    iput v0, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->j:F

    .line 12
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->a:Landroid/view/View;

    .line 13
    iput-object p2, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->g:Lcom/airsaid/pickerviewlibrary/TimePickerView$Type;

    .line 14
    invoke-virtual {p0, p1}, Lcom/airsaid/pickerviewlibrary/widget/c;->p(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/airsaid/pickerviewlibrary/widget/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->h:I

    return p0
.end method

.method static synthetic b(Lcom/airsaid/pickerviewlibrary/widget/c;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    return-object p0
.end method

.method static synthetic c(Lcom/airsaid/pickerviewlibrary/widget/c;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    return-object p0
.end method

.method static synthetic d(Lcom/airsaid/pickerviewlibrary/widget/c;)Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    return-object p0
.end method

.method private n()V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTextSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->j:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->j:F

    .line 3
    sget-object v1, Lcom/airsaid/pickerviewlibrary/widget/c$c;->a:[I

    iget-object v2, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->g:Lcom/airsaid/pickerviewlibrary/TimePickerView$Type;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/high16 v3, 0x40400000    # 3.0f

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    const/high16 v4, 0x40800000    # 4.0f

    const/16 v5, 0x8

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    mul-float v0, v0, v4

    .line 4
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->e:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->f:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    mul-float v0, v0, v3

    .line 7
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    mul-float v0, v0, v4

    .line 8
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    mul-float v0, v0, v4

    .line 11
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->e:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->f:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    mul-float v0, v0, v3

    .line 13
    :goto_0
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {v1, v0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setTextSize(F)V

    .line 14
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {v1, v0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setTextSize(F)V

    .line 15
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {v1, v0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setTextSize(F)V

    .line 16
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->e:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {v1, v0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setTextSize(F)V

    .line 17
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->f:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {v1, v0}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setTextSize(F)V

    return-void
.end method


# virtual methods
.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->i:I

    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->h:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {v1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->getCurrentItem()I

    move-result v1

    iget v2, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->h:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 3
    invoke-virtual {v2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 4
    invoke-virtual {v1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->e:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 5
    invoke-virtual {v1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->f:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 6
    invoke-virtual {v1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->a:Landroid/view/View;

    return-object v0
.end method

.method public i(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {v0, p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCyclic(Z)V

    .line 2
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {v0, p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCyclic(Z)V

    .line 3
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {v0, p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCyclic(Z)V

    .line 4
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->e:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {v0, p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCyclic(Z)V

    .line 5
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->f:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {v0, p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCyclic(Z)V

    return-void
.end method

.method public j(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->i:I

    return-void
.end method

.method public k(III)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/airsaid/pickerviewlibrary/widget/c;->l(IIIII)V

    return-void
.end method

.method public l(IIIII)V
    .locals 7

    const-string v0, "1"

    const-string v1, "3"

    const-string v2, "5"

    const-string v3, "7"

    const-string v4, "8"

    const-string v5, "10"

    const-string v6, "12"

    .line 1
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "4"

    const-string v2, "6"

    const-string v3, "9"

    const-string v4, "11"

    .line 2
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->a:Landroid/view/View;

    sget v4, Lcom/airsaid/pickerviewlibrary/R$id;->year:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    iput-object v3, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 7
    new-instance v4, Le/b;

    iget v5, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->h:I

    iget v6, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->i:I

    invoke-direct {v4, v5, v6}, Le/b;-><init>(II)V

    invoke-virtual {v3, v4}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setAdapter(Le/c;)V

    .line 8
    iget-object v3, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    sget v4, Lcom/airsaid/pickerviewlibrary/R$string;->pickerview_year:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setLabel(Ljava/lang/String;)V

    .line 9
    iget-object v3, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    iget v4, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->h:I

    sub-int v4, p1, v4

    invoke-virtual {v3, v4}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCurrentItem(I)V

    .line 10
    iget-object v3, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->a:Landroid/view/View;

    sget v4, Lcom/airsaid/pickerviewlibrary/R$id;->month:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    iput-object v3, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 11
    new-instance v4, Le/b;

    const/4 v5, 0x1

    const/16 v6, 0xc

    invoke-direct {v4, v5, v6}, Le/b;-><init>(II)V

    invoke-virtual {v3, v4}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setAdapter(Le/c;)V

    .line 12
    iget-object v3, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    sget v4, Lcom/airsaid/pickerviewlibrary/R$string;->pickerview_month:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setLabel(Ljava/lang/String;)V

    .line 13
    iget-object v3, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {v3, p2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCurrentItem(I)V

    .line 14
    iget-object v3, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->a:Landroid/view/View;

    sget v4, Lcom/airsaid/pickerviewlibrary/R$id;->day:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    iput-object v3, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    add-int/2addr p2, v5

    .line 15
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 16
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    new-instance p2, Le/b;

    const/16 v3, 0x1f

    invoke-direct {p2, v5, v3}, Le/b;-><init>(II)V

    invoke-virtual {p1, p2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setAdapter(Le/c;)V

    goto :goto_0

    .line 17
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 18
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    new-instance p2, Le/b;

    const/16 v3, 0x1e

    invoke-direct {p2, v5, v3}, Le/b;-><init>(II)V

    invoke-virtual {p1, p2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setAdapter(Le/c;)V

    goto :goto_0

    .line 19
    :cond_1
    rem-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2

    rem-int/lit8 p2, p1, 0x64

    if-nez p2, :cond_3

    :cond_2
    rem-int/lit16 p1, p1, 0x190

    if-nez p1, :cond_4

    .line 20
    :cond_3
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    new-instance p2, Le/b;

    const/16 v3, 0x1d

    invoke-direct {p2, v5, v3}, Le/b;-><init>(II)V

    invoke-virtual {p1, p2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setAdapter(Le/c;)V

    goto :goto_0

    .line 21
    :cond_4
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    new-instance p2, Le/b;

    const/16 v3, 0x1c

    invoke-direct {p2, v5, v3}, Le/b;-><init>(II)V

    invoke-virtual {p1, p2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setAdapter(Le/c;)V

    .line 22
    :goto_0
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    sget p2, Lcom/airsaid/pickerviewlibrary/R$string;->pickerview_day:I

    invoke-virtual {v2, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setLabel(Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->d:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    sub-int/2addr p3, v5

    invoke-virtual {p1, p3}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCurrentItem(I)V

    .line 24
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->a:Landroid/view/View;

    sget p2, Lcom/airsaid/pickerviewlibrary/R$id;->hour:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->e:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 25
    new-instance p2, Le/b;

    const/16 p3, 0x17

    const/4 v3, 0x0

    invoke-direct {p2, v3, p3}, Le/b;-><init>(II)V

    invoke-virtual {p1, p2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setAdapter(Le/c;)V

    .line 26
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->e:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    sget p2, Lcom/airsaid/pickerviewlibrary/R$string;->pickerview_hours:I

    invoke-virtual {v2, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setLabel(Ljava/lang/String;)V

    .line 27
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->e:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {p1, p4}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCurrentItem(I)V

    .line 28
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->a:Landroid/view/View;

    sget p2, Lcom/airsaid/pickerviewlibrary/R$id;->min:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->f:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    .line 29
    new-instance p2, Le/b;

    const/16 p3, 0x3b

    invoke-direct {p2, v3, p3}, Le/b;-><init>(II)V

    invoke-virtual {p1, p2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setAdapter(Le/c;)V

    .line 30
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->f:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    sget p2, Lcom/airsaid/pickerviewlibrary/R$string;->pickerview_minutes:I

    invoke-virtual {v2, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setLabel(Ljava/lang/String;)V

    .line 31
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->f:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {p1, p5}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setCurrentItem(I)V

    .line 32
    new-instance p1, Lcom/airsaid/pickerviewlibrary/widget/c$a;

    invoke-direct {p1, p0, v0, v1}, Lcom/airsaid/pickerviewlibrary/widget/c$a;-><init>(Lcom/airsaid/pickerviewlibrary/widget/c;Ljava/util/List;Ljava/util/List;)V

    .line 33
    new-instance p2, Lcom/airsaid/pickerviewlibrary/widget/c$b;

    invoke-direct {p2, p0, v0, v1}, Lcom/airsaid/pickerviewlibrary/widget/c$b;-><init>(Lcom/airsaid/pickerviewlibrary/widget/c;Ljava/util/List;Ljava/util/List;)V

    .line 34
    iget-object p3, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->b:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {p3, p1}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setOnItemSelectedListener(Lf/c;)V

    .line 35
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->c:Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;

    invoke-virtual {p1, p2}, Lcom/airsaid/pickerviewlibrary/widget/wheelview/WheelView;->setOnItemSelectedListener(Lf/c;)V

    .line 36
    invoke-direct {p0}, Lcom/airsaid/pickerviewlibrary/widget/c;->n()V

    return-void
.end method

.method public m(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->h:I

    return-void
.end method

.method public o(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->j:F

    .line 2
    invoke-direct {p0}, Lcom/airsaid/pickerviewlibrary/widget/c;->n()V

    return-void
.end method

.method public p(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/c;->a:Landroid/view/View;

    return-void
.end method

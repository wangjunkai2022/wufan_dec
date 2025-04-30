.class public Lcom/join/mgps/customview/ExpandLayout;
.super Landroid/widget/RelativeLayout;
.source "ExpandLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/ExpandLayout$b;
    }
.end annotation


# static fields
.field private static final C:Ljava/lang/String;

.field public static final D:I = 0x0

.field public static final E:I = 0x1

.field public static final F:I = 0x2


# instance fields
.field private A:Lcom/join/mgps/customview/ExpandLayout$b;

.field private B:Z

.field private a:Landroid/content/Context;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:I

.field private h:Landroid/widget/TextView;

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:I

.field private o:I

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/CharSequence;

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:F

.field private y:F

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/customview/ExpandLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/customview/ExpandLayout;->C:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/ExpandLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/join/mgps/customview/ExpandLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x2

    .line 4
    iput p3, p0, Lcom/join/mgps/customview/ExpandLayout;->m:I

    const/4 p3, 0x0

    .line 5
    iput-boolean p3, p0, Lcom/join/mgps/customview/ExpandLayout;->p:Z

    .line 6
    iput p3, p0, Lcom/join/mgps/customview/ExpandLayout;->u:I

    const/16 p3, 0xf

    .line 7
    iput p3, p0, Lcom/join/mgps/customview/ExpandLayout;->v:I

    const/16 p3, 0x14

    .line 8
    iput p3, p0, Lcom/join/mgps/customview/ExpandLayout;->w:I

    const/4 p3, 0x0

    .line 9
    iput p3, p0, Lcom/join/mgps/customview/ExpandLayout;->x:F

    const/high16 p3, 0x3f800000    # 1.0f

    .line 10
    iput p3, p0, Lcom/join/mgps/customview/ExpandLayout;->y:F

    const/4 p3, 0x1

    .line 11
    iput-boolean p3, p0, Lcom/join/mgps/customview/ExpandLayout;->z:Z

    .line 12
    iput-object p1, p0, Lcom/join/mgps/customview/ExpandLayout;->a:Landroid/content/Context;

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/ExpandLayout;->k(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    invoke-direct {p0}, Lcom/join/mgps/customview/ExpandLayout;->l()V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/ExpandLayout;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/ExpandLayout;->g:I

    return p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/ExpandLayout;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/ExpandLayout;->g:I

    return p1
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/customview/ExpandLayout;->C:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/join/mgps/customview/ExpandLayout;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ExpandLayout;->n(I)V

    return-void
.end method

.method private f(Landroid/content/Context;F)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float p2, p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method private getExpandLayoutReservedWidth()F
    .locals 4

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/ExpandLayout;->u:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 2
    :cond_1
    :goto_0
    iget v1, p0, Lcom/join/mgps/customview/ExpandLayout;->v:I

    :goto_1
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/customview/ExpandLayout;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/customview/ExpandLayout;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    :cond_3
    int-to-float v0, v1

    add-float/2addr v0, v2

    return v0
.end method

.method private h(Landroid/text/StaticLayout;I)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/ExpandLayout;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/join/mgps/customview/ExpandLayout;->m:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v1

    .line 3
    iget v2, p0, Lcom/join/mgps/customview/ExpandLayout;->m:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result p1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "endPos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-gez v1, :cond_1

    const/4 v1, 0x0

    :cond_1
    if-gez p1, :cond_2

    const/4 p1, 0x0

    .line 6
    :cond_2
    iget-object v3, p0, Lcom/join/mgps/customview/ExpandLayout;->q:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le p1, v3, :cond_3

    .line 7
    iget-object p1, p0, Lcom/join/mgps/customview/ExpandLayout;->q:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    :cond_3
    if-le v1, p1, :cond_4

    move v1, p1

    .line 8
    :cond_4
    iget-object v3, p0, Lcom/join/mgps/customview/ExpandLayout;->q:Ljava/lang/String;

    invoke-virtual {v3, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 9
    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    .line 10
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u7b2c"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/join/mgps/customview/ExpandLayout;->m:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\u884c = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/join/mgps/customview/ExpandLayout;->m:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\u884c \u6587\u672c\u957f\u5ea6 = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "..."

    .line 12
    iget v6, p0, Lcom/join/mgps/customview/ExpandLayout;->w:I

    int-to-float v6, v6

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    add-float/2addr v6, v0

    invoke-direct {p0}, Lcom/join/mgps/customview/ExpandLayout;->getExpandLayoutReservedWidth()F

    move-result v0

    add-float/2addr v6, v0

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u9700\u8981\u9884\u7559\u7684\u957f\u5ea6 = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    add-float/2addr v6, v5

    int-to-float p2, p2

    cmpl-float v0, v6, p2

    if-lez v0, :cond_6

    sub-float/2addr v6, p2

    cmpl-float p2, v5, v4

    if-eqz p2, :cond_6

    div-float/2addr v6, v5

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float v6, v6, p2

    sub-int p2, p1, v1

    int-to-float p2, p2

    mul-float v6, v6, p2

    float-to-int p2, v6

    sub-int/2addr p1, p2

    .line 14
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "correctEndPos = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    iget-object p2, p0, Lcom/join/mgps/customview/ExpandLayout;->q:Ljava/lang/String;

    invoke-virtual {p2, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ExpandLayout;->o(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/ExpandLayout;->r:Ljava/lang/CharSequence;

    return-void
.end method

.method private i(Landroid/text/StaticLayout;I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    return-void

    :cond_1
    sub-int/2addr v0, v1

    .line 2
    invoke-virtual {p1, v0}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v1

    .line 3
    invoke-virtual {p1, v0}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6700\u540e\u4e00\u884c startPos = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6700\u540e\u4e00\u884c endPos = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    if-gez v1, :cond_2

    const/4 v1, 0x0

    :cond_2
    if-gez p1, :cond_3

    const/4 p1, 0x0

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/customview/ExpandLayout;->q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_4

    .line 7
    iget-object p1, p0, Lcom/join/mgps/customview/ExpandLayout;->q:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    :cond_4
    if-le v1, p1, :cond_5

    move v1, p1

    .line 8
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/customview/ExpandLayout;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6700\u540e\u4e00\u884c \u5185\u5bb9 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 10
    iget-object v1, p0, Lcom/join/mgps/customview/ExpandLayout;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    if-eqz p1, :cond_6

    .line 11
    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 12
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6700\u540e\u4e00\u884c \u6587\u672c\u957f\u5ea6 = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {p0}, Lcom/join/mgps/customview/ExpandLayout;->getExpandLayoutReservedWidth()F

    move-result p1

    add-float/2addr v0, p1

    int-to-float p1, p2

    cmpl-float p1, v0, p1

    if-lez p1, :cond_7

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/join/mgps/customview/ExpandLayout;->q:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/ExpandLayout;->q:Ljava/lang/String;

    :cond_7
    return-void
.end method

.method private j(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ExpandLayout;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 2
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/join/mgps/customview/ExpandLayout;->q:Ljava/lang/String;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v6, p0, Lcom/join/mgps/customview/ExpandLayout;->y:F

    iget v7, p0, Lcom/join/mgps/customview/ExpandLayout;->x:F

    const/4 v8, 0x0

    move-object v1, v0

    move v4, p1

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 3
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    .line 4
    iget v2, p0, Lcom/join/mgps/customview/ExpandLayout;->m:I

    const/4 v3, 0x0

    if-gt v1, v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/join/mgps/customview/ExpandLayout;->q:Ljava/lang/String;

    iput-object v2, p0, Lcom/join/mgps/customview/ExpandLayout;->r:Ljava/lang/CharSequence;

    .line 6
    iget-object v2, p0, Lcom/join/mgps/customview/ExpandLayout;->d:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object v2, p0, Lcom/join/mgps/customview/ExpandLayout;->c:Landroid/widget/TextView;

    const v4, 0x7fffffff

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 8
    iget-object v2, p0, Lcom/join/mgps/customview/ExpandLayout;->c:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/join/mgps/customview/ExpandLayout;->q:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-boolean v2, p0, Lcom/join/mgps/customview/ExpandLayout;->B:Z

    if-eqz v2, :cond_3

    .line 10
    iget-object v2, p0, Lcom/join/mgps/customview/ExpandLayout;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11
    iget-object v2, p0, Lcom/join/mgps/customview/ExpandLayout;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v2, p0, Lcom/join/mgps/customview/ExpandLayout;->f:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iput v1, p0, Lcom/join/mgps/customview/ExpandLayout;->m:I

    .line 14
    invoke-direct {p0, v0, p1}, Lcom/join/mgps/customview/ExpandLayout;->h(Landroid/text/StaticLayout;I)V

    .line 15
    invoke-direct {p0, v0, p1}, Lcom/join/mgps/customview/ExpandLayout;->i(Landroid/text/StaticLayout;I)V

    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/customview/ExpandLayout;->e()V

    goto :goto_1

    .line 17
    :cond_0
    iget-boolean v1, p0, Lcom/join/mgps/customview/ExpandLayout;->z:Z

    if-eqz v1, :cond_1

    .line 18
    iget-object v1, p0, Lcom/join/mgps/customview/ExpandLayout;->b:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 19
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/customview/ExpandLayout;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object v1, p0, Lcom/join/mgps/customview/ExpandLayout;->f:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/customview/ExpandLayout;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 22
    invoke-direct {p0, v0, p1}, Lcom/join/mgps/customview/ExpandLayout;->h(Landroid/text/StaticLayout;I)V

    .line 23
    invoke-direct {p0, v0, p1}, Lcom/join/mgps/customview/ExpandLayout;->i(Landroid/text/StaticLayout;I)V

    .line 24
    iget-boolean p1, p0, Lcom/join/mgps/customview/ExpandLayout;->p:Z

    if-eqz p1, :cond_2

    .line 25
    invoke-virtual {p0}, Lcom/join/mgps/customview/ExpandLayout;->g()V

    goto :goto_1

    .line 26
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/customview/ExpandLayout;->e()V

    :cond_3
    :goto_1
    return-void
.end method

.method private k(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/join/android/app/mgsim/wufun/R$styleable;->ExpandLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    const/16 v1, 0xc

    const/4 v2, 0x2

    .line 2
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/join/mgps/customview/ExpandLayout;->m:I

    const/4 v1, 0x4

    const/4 v3, 0x0

    .line 3
    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/join/mgps/customview/ExpandLayout;->i:I

    .line 4
    invoke-virtual {p2, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/join/mgps/customview/ExpandLayout;->j:I

    const/4 v1, 0x6

    .line 5
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/customview/ExpandLayout;->k:Ljava/lang/String;

    .line 6
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/customview/ExpandLayout;->l:Ljava/lang/String;

    const/4 v1, 0x3

    const/high16 v4, 0x41600000    # 14.0f

    .line 7
    invoke-virtual {p0, p1, v4}, Lcom/join/mgps/customview/ExpandLayout;->p(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/join/mgps/customview/ExpandLayout;->n:I

    .line 8
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/join/mgps/customview/ExpandLayout;->s:I

    const/16 v1, 0x9

    .line 9
    invoke-virtual {p0, p1, v4}, Lcom/join/mgps/customview/ExpandLayout;->p(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/join/mgps/customview/ExpandLayout;->o:I

    const/16 v1, 0x8

    .line 10
    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/join/mgps/customview/ExpandLayout;->t:I

    const/4 v1, 0x7

    .line 11
    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/join/mgps/customview/ExpandLayout;->u:I

    const/4 v1, 0x5

    const/high16 v2, 0x41700000    # 15.0f

    .line 12
    invoke-direct {p0, p1, v2}, Lcom/join/mgps/customview/ExpandLayout;->f(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/join/mgps/customview/ExpandLayout;->v:I

    const/16 v1, 0xd

    const/high16 v2, 0x41a00000    # 20.0f

    .line 13
    invoke-direct {p0, p1, v2}, Lcom/join/mgps/customview/ExpandLayout;->f(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/ExpandLayout;->w:I

    const/16 p1, 0xa

    .line 14
    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/join/mgps/customview/ExpandLayout;->x:F

    const/16 p1, 0xb

    const/high16 v1, 0x3f800000    # 1.0f

    .line 15
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/ExpandLayout;->y:F

    .line 16
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 17
    :cond_0
    iget p1, p0, Lcom/join/mgps/customview/ExpandLayout;->m:I

    if-ge p1, v0, :cond_1

    .line 18
    iput v0, p0, Lcom/join/mgps/customview/ExpandLayout;->m:I

    :cond_1
    return-void
.end method

.method private l()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ExpandLayout;->a:Landroid/content/Context;

    const v1, 0x7f0c0371

    invoke-static {v0, v1, p0}, Landroid/widget/RelativeLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/ExpandLayout;->b:Landroid/view/View;

    const v0, 0x7f09044c

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/ExpandLayout;->c:Landroid/widget/TextView;

    const v0, 0x7f09044f

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/customview/ExpandLayout;->d:Landroid/widget/LinearLayout;

    const v0, 0x7f09044e

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/customview/ExpandLayout;->e:Landroid/widget/ImageView;

    const v0, 0x7f090451

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/ExpandLayout;->f:Landroid/widget/TextView;

    const v0, 0x7f09044d

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/ExpandLayout;->h:Landroid/widget/TextView;

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/ExpandLayout;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/customview/ExpandLayout;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/ExpandLayout;->c:Landroid/widget/TextView;

    iget v1, p0, Lcom/join/mgps/customview/ExpandLayout;->n:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/ExpandLayout;->h:Landroid/widget/TextView;

    iget v1, p0, Lcom/join/mgps/customview/ExpandLayout;->n:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/customview/ExpandLayout;->f:Landroid/widget/TextView;

    iget v1, p0, Lcom/join/mgps/customview/ExpandLayout;->o:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/ExpandLayout;->c:Landroid/widget/TextView;

    iget v1, p0, Lcom/join/mgps/customview/ExpandLayout;->x:F

    iget v2, p0, Lcom/join/mgps/customview/ExpandLayout;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/customview/ExpandLayout;->h:Landroid/widget/TextView;

    iget v1, p0, Lcom/join/mgps/customview/ExpandLayout;->x:F

    iget v2, p0, Lcom/join/mgps/customview/ExpandLayout;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/customview/ExpandLayout;->f:Landroid/widget/TextView;

    iget v1, p0, Lcom/join/mgps/customview/ExpandLayout;->x:F

    iget v2, p0, Lcom/join/mgps/customview/ExpandLayout;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 14
    iget v0, p0, Lcom/join/mgps/customview/ExpandLayout;->i:I

    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/ExpandLayout;->setExpandMoreIcon(I)V

    .line 15
    iget v0, p0, Lcom/join/mgps/customview/ExpandLayout;->s:I

    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/ExpandLayout;->setContentTextColor(I)V

    .line 16
    iget v0, p0, Lcom/join/mgps/customview/ExpandLayout;->t:I

    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/ExpandLayout;->setExpandTextColor(I)V

    .line 17
    iget v0, p0, Lcom/join/mgps/customview/ExpandLayout;->u:I

    invoke-direct {p0, v0}, Lcom/join/mgps/customview/ExpandLayout;->r(I)V

    return-void
.end method

.method private n(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ExpandLayout;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ExpandLayout;->j(I)V

    return-void
.end method

.method private o(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\n"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private q()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/ExpandLayout;->p:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/ExpandLayout;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/customview/ExpandLayout;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/ExpandLayout;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/customview/ExpandLayout;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private r(I)V
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/ExpandLayout;->e:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/ExpandLayout;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/ExpandLayout;->e:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/ExpandLayout;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/customview/ExpandLayout;->e:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/customview/ExpandLayout;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public e()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/ExpandLayout;->setIsExpand(Z)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/ExpandLayout;->c:Landroid/widget/TextView;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/ExpandLayout;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/customview/ExpandLayout;->r:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/ExpandLayout;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/customview/ExpandLayout;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget v0, p0, Lcom/join/mgps/customview/ExpandLayout;->i:I

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, Lcom/join/mgps/customview/ExpandLayout;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/ExpandLayout;->setIsExpand(Z)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/ExpandLayout;->c:Landroid/widget/TextView;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/ExpandLayout;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/customview/ExpandLayout;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/ExpandLayout;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/customview/ExpandLayout;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget v0, p0, Lcom/join/mgps/customview/ExpandLayout;->j:I

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, Lcom/join/mgps/customview/ExpandLayout;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public getLineCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ExpandLayout;->c:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/ExpandLayout;->p:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/ExpandLayout;->z:Z

    if-eqz v0, :cond_1

    .line 2
    iget-boolean p1, p0, Lcom/join/mgps/customview/ExpandLayout;->p:Z

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/customview/ExpandLayout;->g()V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/ExpandLayout;->A:Lcom/join/mgps/customview/ExpandLayout$b;

    if-eqz p1, :cond_3

    .line 5
    invoke-interface {p1}, Lcom/join/mgps/customview/ExpandLayout$b;->c()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/customview/ExpandLayout;->e()V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/customview/ExpandLayout;->A:Lcom/join/mgps/customview/ExpandLayout$b;

    if-eqz p1, :cond_3

    .line 8
    invoke-interface {p1}, Lcom/join/mgps/customview/ExpandLayout$b;->a()V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/ExpandLayout;->f:Landroid/widget/TextView;

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/join/mgps/customview/ExpandLayout;->e:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_3

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/customview/ExpandLayout;->A:Lcom/join/mgps/customview/ExpandLayout$b;

    invoke-interface {p1}, Lcom/join/mgps/customview/ExpandLayout$b;->b()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onMeasure,measureWidth = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3
    iget p1, p0, Lcom/join/mgps/customview/ExpandLayout;->g:I

    if-gtz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result p1

    if-lez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/ExpandLayout;->g:I

    .line 5
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ExpandLayout;->n(I)V

    :cond_0
    return-void
.end method

.method public p(Landroid/content/Context;F)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float p2, p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method public setAlwaysShowMore(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/ExpandLayout;->B:Z

    return-void
.end method

.method public setCollapseLessIcon(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/ExpandLayout;->j:I

    .line 2
    iget-boolean v0, p0, Lcom/join/mgps/customview/ExpandLayout;->p:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/ExpandLayout;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public setCollapseLessText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ExpandLayout;->l:Ljava/lang/String;

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/customview/ExpandLayout;->q()V

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/customview/ExpandLayout;->setContent(Ljava/lang/String;Lcom/join/mgps/customview/ExpandLayout$b;)V

    return-void
.end method

.method public setContent(Ljava/lang/String;Lcom/join/mgps/customview/ExpandLayout$b;)V
    .locals 1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/join/mgps/customview/ExpandLayout;->b:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/customview/ExpandLayout;->q:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/customview/ExpandLayout;->A:Lcom/join/mgps/customview/ExpandLayout$b;

    .line 5
    iget-object p1, p0, Lcom/join/mgps/customview/ExpandLayout;->c:Landroid/widget/TextView;

    iget p2, p0, Lcom/join/mgps/customview/ExpandLayout;->m:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/customview/ExpandLayout;->c:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/join/mgps/customview/ExpandLayout;->q:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget p1, p0, Lcom/join/mgps/customview/ExpandLayout;->g:I

    if-gtz p1, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/join/mgps/customview/ExpandLayout$a;

    invoke-direct {p2, p0}, Lcom/join/mgps/customview/ExpandLayout$a;-><init>(Lcom/join/mgps/customview/ExpandLayout;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 9
    :cond_1
    iget p1, p0, Lcom/join/mgps/customview/ExpandLayout;->g:I

    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ExpandLayout;->n(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setContentTextColor(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/ExpandLayout;->s:I

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/ExpandLayout;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setExpandMoreIcon(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/ExpandLayout;->i:I

    .line 2
    iget-boolean v0, p0, Lcom/join/mgps/customview/ExpandLayout;->p:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/ExpandLayout;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public setExpandMoreText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ExpandLayout;->k:Ljava/lang/String;

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/customview/ExpandLayout;->q()V

    return-void
.end method

.method public setExpandStyle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/ExpandLayout;->u:I

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ExpandLayout;->r(I)V

    return-void
.end method

.method public setExpandTextColor(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/ExpandLayout;->t:I

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/ExpandLayout;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setExpandable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/ExpandLayout;->z:Z

    return-void
.end method

.method public setIsExpand(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/ExpandLayout;->p:Z

    return-void
.end method

.method public setShrinkLines(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/ExpandLayout;->m:I

    return-void
.end method

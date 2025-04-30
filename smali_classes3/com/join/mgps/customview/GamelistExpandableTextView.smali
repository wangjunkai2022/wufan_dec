.class public Lcom/join/mgps/customview/GamelistExpandableTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "GamelistExpandableTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/GamelistExpandableTextView$c;,
        Lcom/join/mgps/customview/GamelistExpandableTextView$e;,
        Lcom/join/mgps/customview/GamelistExpandableTextView$b;,
        Lcom/join/mgps/customview/GamelistExpandableTextView$d;
    }
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "android.view.View"

.field private static final B:Ljava/lang/String; = "android.view.View$ListenerInfo"

.field private static final C:Ljava/lang/String; = ".."

.field private static final D:Ljava/lang/String; = " "

.field private static final E:Ljava/lang/String; = " "

.field private static final F:I = 0x2

.field private static final G:I = -0xcb6725

.field private static final H:I = -0x18b3c4

.field private static final I:I = 0x55999999

.field private static final J:I = 0x55999999

.field private static final K:Z = true

.field private static final n0:Z = true

.field private static final o0:Z = true

.field public static final y:I = 0x0

.field public static final z:I = 0x1


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Lcom/join/mgps/customview/GamelistExpandableTextView$e;

.field private p:Landroid/widget/TextView$BufferType;

.field private q:Landroid/text/TextPaint;

.field private r:Landroid/text/Layout;

.field private s:I

.field private t:I

.field private u:I

.field private v:Ljava/lang/CharSequence;

.field private w:Lcom/join/mgps/customview/GamelistExpandableTextView$b;

.field private x:Lcom/join/mgps/customview/GamelistExpandableTextView$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const-string p1, " "

    .line 2
    iput-object p1, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->d:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->e:Ljava/lang/String;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->f:Z

    .line 5
    iput-boolean p1, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->g:Z

    .line 6
    iput-boolean p1, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->h:Z

    const/4 p1, 0x2

    .line 7
    iput p1, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->i:I

    const p1, -0xcb6725

    .line 8
    iput p1, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->j:I

    const p1, -0x18b3c4

    .line 9
    iput p1, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->k:I

    const p1, 0x55999999

    .line 10
    iput p1, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->l:I

    .line 11
    iput p1, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->m:I

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->n:I

    .line 13
    sget-object v0, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    iput-object v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->p:Landroid/widget/TextView$BufferType;

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->s:I

    .line 15
    iput p1, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->t:I

    .line 16
    iput p1, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->u:I

    .line 17
    invoke-direct {p0}, Lcom/join/mgps/customview/GamelistExpandableTextView;->o()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 18
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, " "

    .line 19
    iput-object v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->d:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->e:Ljava/lang/String;

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->f:Z

    .line 22
    iput-boolean v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->g:Z

    .line 23
    iput-boolean v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->h:Z

    const/4 v0, 0x2

    .line 24
    iput v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->i:I

    const v0, -0xcb6725

    .line 25
    iput v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->j:I

    const v0, -0x18b3c4

    .line 26
    iput v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->k:I

    const v0, 0x55999999

    .line 27
    iput v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->l:I

    .line 28
    iput v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->m:I

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->n:I

    .line 30
    sget-object v1, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    iput-object v1, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->p:Landroid/widget/TextView$BufferType;

    const/4 v1, -0x1

    .line 31
    iput v1, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->s:I

    .line 32
    iput v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->t:I

    .line 33
    iput v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->u:I

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/GamelistExpandableTextView;->p(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-direct {p0}, Lcom/join/mgps/customview/GamelistExpandableTextView;->o()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p3, " "

    .line 37
    iput-object p3, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->d:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->e:Ljava/lang/String;

    const/4 p3, 0x1

    .line 39
    iput-boolean p3, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->f:Z

    .line 40
    iput-boolean p3, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->g:Z

    .line 41
    iput-boolean p3, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->h:Z

    const/4 p3, 0x2

    .line 42
    iput p3, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->i:I

    const p3, -0xcb6725

    .line 43
    iput p3, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->j:I

    const p3, -0x18b3c4

    .line 44
    iput p3, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->k:I

    const p3, 0x55999999

    .line 45
    iput p3, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->l:I

    .line 46
    iput p3, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->m:I

    const/4 p3, 0x0

    .line 47
    iput p3, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->n:I

    .line 48
    sget-object v0, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    iput-object v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->p:Landroid/widget/TextView$BufferType;

    const/4 v0, -0x1

    .line 49
    iput v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->s:I

    .line 50
    iput p3, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->t:I

    .line 51
    iput p3, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->u:I

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/GamelistExpandableTextView;->p(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    invoke-direct {p0}, Lcom/join/mgps/customview/GamelistExpandableTextView;->o()V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/GamelistExpandableTextView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->m:I

    return p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/GamelistExpandableTextView;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/GamelistExpandableTextView;->getNewTextByConfig()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/customview/GamelistExpandableTextView;)Landroid/widget/TextView$BufferType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->p:Landroid/widget/TextView$BufferType;

    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/customview/GamelistExpandableTextView;Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/GamelistExpandableTextView;->r(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method static synthetic e(Lcom/join/mgps/customview/GamelistExpandableTextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/GamelistExpandableTextView;->s()V

    return-void
.end method

.method static synthetic f(Lcom/join/mgps/customview/GamelistExpandableTextView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->n:I

    return p0
.end method

.method static synthetic g(Lcom/join/mgps/customview/GamelistExpandableTextView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->j:I

    return p0
.end method

.method private getNewTextByConfig()Ljava/lang/CharSequence;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->v:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->v:Ljava/lang/CharSequence;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->r:Landroid/text/Layout;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->t:I

    .line 5
    :cond_1
    iget v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->t:I

    if-gtz v0, :cond_4

    .line 6
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    if-nez v0, :cond_3

    .line 7
    iget v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->u:I

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->v:Ljava/lang/CharSequence;

    return-object v0

    .line 9
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->t:I

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->t:I

    .line 11
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->q:Landroid/text/TextPaint;

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->s:I

    .line 13
    iget v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->n:I

    const/16 v1, 0x21

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    if-eq v0, v2, :cond_5

    .line 14
    iget-object v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->v:Ljava/lang/CharSequence;

    return-object v0

    .line 15
    :cond_5
    iget-boolean v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->h:Z

    if-nez v0, :cond_6

    .line 16
    iget-object v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->v:Ljava/lang/CharSequence;

    return-object v0

    .line 17
    :cond_6
    new-instance v0, Landroid/text/DynamicLayout;

    iget-object v3, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->v:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->q:Landroid/text/TextPaint;

    iget v5, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->t:I

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->r:Landroid/text/Layout;

    .line 18
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->s:I

    .line 19
    iget v2, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->i:I

    if-gt v0, v2, :cond_7

    .line 20
    iget-object v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->v:Ljava/lang/CharSequence;

    return-object v0

    .line 21
    :cond_7
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->v:Ljava/lang/CharSequence;

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->e:Ljava/lang/String;

    .line 22
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 23
    iget-object v2, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->o:Lcom/join/mgps/customview/GamelistExpandableTextView$e;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    iget-object v4, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->c:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/join/mgps/customview/GamelistExpandableTextView;->k(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v0

    .line 24
    :cond_8
    new-instance v0, Landroid/text/DynamicLayout;

    iget-object v6, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->v:Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->q:Landroid/text/TextPaint;

    iget v8, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->t:I

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v12}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->r:Landroid/text/Layout;

    .line 25
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->s:I

    .line 26
    iget v3, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->i:I

    if-gt v0, v3, :cond_9

    .line 27
    iget-object v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->v:Ljava/lang/CharSequence;

    return-object v0

    .line 28
    :cond_9
    invoke-direct {p0}, Lcom/join/mgps/customview/GamelistExpandableTextView;->getValidLayout()Landroid/text/Layout;

    move-result-object v0

    iget v3, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->i:I

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 29
    invoke-direct {p0}, Lcom/join/mgps/customview/GamelistExpandableTextView;->getValidLayout()Landroid/text/Layout;

    move-result-object v3

    iget v4, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->i:I

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 30
    iget-object v4, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->a:Ljava/lang/String;

    .line 31
    invoke-direct {p0, v4}, Lcom/join/mgps/customview/GamelistExpandableTextView;->k(Ljava/lang/String;)I

    move-result v4

    sub-int v4, v0, v4

    .line 32
    iget-boolean v5, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->g:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->b:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/join/mgps/customview/GamelistExpandableTextView;->k(Ljava/lang/String;)I

    move-result v5

    iget-object v7, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->d:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/join/mgps/customview/GamelistExpandableTextView;->k(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v5, v7

    goto :goto_1

    :cond_a
    const/4 v5, 0x0

    :goto_1
    sub-int/2addr v4, v5

    if-gt v4, v3, :cond_b

    goto :goto_2

    :cond_b
    move v0, v4

    .line 33
    :goto_2
    invoke-direct {p0}, Lcom/join/mgps/customview/GamelistExpandableTextView;->getValidLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->q:Landroid/text/TextPaint;

    iget-object v7, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->v:Ljava/lang/CharSequence;

    .line 34
    invoke-interface {v7, v3, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-double v7, v5

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v7, v9

    double-to-int v5, v7

    sub-int/2addr v4, v5

    .line 35
    iget-object v5, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->q:Landroid/text/TextPaint;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->a:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/join/mgps/customview/GamelistExpandableTextView;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-boolean v8, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->g:Z

    if-eqz v8, :cond_c

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->b:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/join/mgps/customview/GamelistExpandableTextView;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->d:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/join/mgps/customview/GamelistExpandableTextView;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_c
    const-string v8, ""

    :goto_3
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 37
    invoke-virtual {v5, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    int-to-float v7, v4

    cmpl-float v8, v7, v5

    if-lez v8, :cond_e

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_4
    int-to-float v3, v3

    add-float/2addr v3, v5

    cmpl-float v3, v7, v3

    if-lez v3, :cond_d

    add-int/lit8 v4, v4, 0x1

    add-int v3, v0, v4

    .line 38
    iget-object v8, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->v:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-gt v3, v8, :cond_d

    .line 39
    iget-object v8, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->q:Landroid/text/TextPaint;

    iget-object v11, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->v:Ljava/lang/CharSequence;

    .line 40
    invoke-interface {v11, v0, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 41
    invoke-virtual {v8, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-double v11, v3

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v11, v9

    double-to-int v3, v11

    goto :goto_4

    :cond_d
    sub-int/2addr v4, v2

    add-int/2addr v0, v4

    goto :goto_6

    :cond_e
    const/4 v2, 0x0

    const/4 v7, 0x0

    :goto_5
    add-int/2addr v2, v4

    int-to-float v2, v2

    cmpg-float v2, v2, v5

    if-gez v2, :cond_f

    add-int/lit8 v7, v7, -0x1

    add-int v2, v0, v7

    if-le v2, v3, :cond_f

    .line 42
    iget-object v8, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->q:Landroid/text/TextPaint;

    iget-object v11, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->v:Ljava/lang/CharSequence;

    invoke-interface {v11, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-double v11, v2

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v11, v9

    double-to-int v2, v11

    goto :goto_5

    :cond_f
    add-int/2addr v0, v7

    .line 43
    :goto_6
    iget-object v2, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->v:Ljava/lang/CharSequence;

    invoke-interface {v2, v6, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/join/mgps/customview/GamelistExpandableTextView;->q(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 44
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->a:Ljava/lang/String;

    .line 45
    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 46
    iget-boolean v2, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->g:Z

    if-eqz v2, :cond_10

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->d:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/join/mgps/customview/GamelistExpandableTextView;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->b:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/join/mgps/customview/GamelistExpandableTextView;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 48
    iget-object v2, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->o:Lcom/join/mgps/customview/GamelistExpandableTextView$e;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    iget-object v4, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->b:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/join/mgps/customview/GamelistExpandableTextView;->k(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_10
    return-object v0
.end method

.method private getValidLayout()Landroid/text/Layout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->r:Landroid/text/Layout;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static synthetic h(Lcom/join/mgps/customview/GamelistExpandableTextView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->l:I

    return p0
.end method

.method static synthetic i(Lcom/join/mgps/customview/GamelistExpandableTextView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->k:I

    return p0
.end method

.method private j(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method private k(Ljava/lang/String;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    return p1
.end method

.method private m(Landroid/view/View;)Landroid/view/View$OnClickListener;
    .locals 2

    :try_start_0
    const-string v0, "android.view.View"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mOnClickListener"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View$OnClickListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private n(Landroid/view/View;)Landroid/view/View$OnClickListener;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.view.View"

    .line 1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mListenerInfo"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    const-string v1, "android.view.View$ListenerInfo"

    .line 4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "mOnClickListener"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 6
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View$OnClickListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-object v0
.end method

.method private o()V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/customview/GamelistExpandableTextView$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/customview/GamelistExpandableTextView$e;-><init>(Lcom/join/mgps/customview/GamelistExpandableTextView;Lcom/join/mgps/customview/GamelistExpandableTextView$a;)V

    iput-object v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->o:Lcom/join/mgps/customview/GamelistExpandableTextView$e;

    .line 2
    new-instance v0, Lcom/join/mgps/customview/GamelistExpandableTextView$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/GamelistExpandableTextView$c;-><init>(Lcom/join/mgps/customview/GamelistExpandableTextView;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ".."

    .line 4
    iput-object v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->a:Ljava/lang/String;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1103af

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->b:Ljava/lang/String;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1103b0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->c:Ljava/lang/String;

    .line 9
    :cond_2
    iget-boolean v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->f:Z

    if-eqz v0, :cond_3

    .line 10
    new-instance v0, Lcom/join/mgps/customview/GamelistExpandableTextView$b;

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/customview/GamelistExpandableTextView$b;-><init>(Lcom/join/mgps/customview/GamelistExpandableTextView;Lcom/join/mgps/customview/GamelistExpandableTextView$a;)V

    iput-object v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->w:Lcom/join/mgps/customview/GamelistExpandableTextView$b;

    .line 11
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/customview/GamelistExpandableTextView$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/GamelistExpandableTextView$a;-><init>(Lcom/join/mgps/customview/GamelistExpandableTextView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private p(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Lcom/join/android/app/mgsim/wufun/R$styleable;->ExpandableTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_10

    .line 3
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x2

    if-ne v2, v3, :cond_2

    .line 4
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->i:I

    goto/16 :goto_1

    :cond_2
    if-nez v2, :cond_3

    .line 5
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    const/4 v3, 0x6

    if-ne v2, v3, :cond_4

    .line 6
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->b:Ljava/lang/String;

    goto/16 :goto_1

    :cond_4
    const/16 v3, 0xa

    if-ne v2, v3, :cond_5

    .line 7
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->c:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 8
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->f:Z

    goto/16 :goto_1

    :cond_6
    const/16 v5, 0x9

    if-ne v2, v5, :cond_7

    .line 9
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->g:Z

    goto :goto_1

    :cond_7
    const/16 v5, 0xd

    if-ne v2, v5, :cond_8

    .line 10
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->h:Z

    goto :goto_1

    :cond_8
    const/4 v3, 0x7

    if-ne v2, v3, :cond_9

    const v3, -0xcb6725

    .line 11
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->j:I

    goto :goto_1

    :cond_9
    const/16 v3, 0xb

    if-ne v2, v3, :cond_a

    const v3, -0x18b3c4

    .line 12
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->k:I

    goto :goto_1

    :cond_a
    const/16 v3, 0x8

    const v5, 0x55999999

    if-ne v2, v3, :cond_b

    .line 13
    invoke-virtual {p1, v2, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->l:I

    goto :goto_1

    :cond_b
    const/16 v3, 0xc

    if-ne v2, v3, :cond_c

    .line 14
    invoke-virtual {p1, v2, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->m:I

    goto :goto_1

    :cond_c
    const/4 v3, 0x4

    if-ne v2, v3, :cond_d

    .line 15
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->n:I

    goto :goto_1

    :cond_d
    if-ne v2, v4, :cond_e

    .line 16
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->d:Ljava/lang/String;

    goto :goto_1

    :cond_e
    const/4 v3, 0x3

    if-ne v2, v3, :cond_f

    .line 17
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->e:Ljava/lang/String;

    :cond_f
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 18
    :cond_10
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private q(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v0, "\n"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private r(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method private s()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->n:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->n:I

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->x:Lcom/join/mgps/customview/GamelistExpandableTextView$d;

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0, p0}, Lcom/join/mgps/customview/GamelistExpandableTextView$d;->b(Lcom/join/mgps/customview/GamelistExpandableTextView;)V

    goto :goto_0

    .line 5
    :cond_1
    iput v1, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->n:I

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->x:Lcom/join/mgps/customview/GamelistExpandableTextView$d;

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {v0, p0}, Lcom/join/mgps/customview/GamelistExpandableTextView$d;->a(Lcom/join/mgps/customview/GamelistExpandableTextView;)V

    .line 8
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/join/mgps/customview/GamelistExpandableTextView;->getNewTextByConfig()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->p:Landroid/widget/TextView$BufferType;

    invoke-direct {p0, v0, v1}, Lcom/join/mgps/customview/GamelistExpandableTextView;->r(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method


# virtual methods
.method public getExpandState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->n:I

    return v0
.end method

.method public l(Landroid/view/View;)Landroid/view/View$OnClickListener;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/GamelistExpandableTextView;->n(Landroid/view/View;)Landroid/view/View$OnClickListener;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/GamelistExpandableTextView;->m(Landroid/view/View;)Landroid/view/View$OnClickListener;

    move-result-object p1

    return-object p1
.end method

.method public setExpandListener(Lcom/join/mgps/customview/GamelistExpandableTextView$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->x:Lcom/join/mgps/customview/GamelistExpandableTextView$d;

    return-void
.end method

.method public setMaxLinesOnShrink(I)V
    .locals 1

    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->i:I

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->v:Ljava/lang/CharSequence;

    .line 2
    iput-object p2, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->p:Landroid/widget/TextView$BufferType;

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/customview/GamelistExpandableTextView;->getNewTextByConfig()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/GamelistExpandableTextView;->r(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public t(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->u:I

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public u(Ljava/lang/CharSequence;II)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->u:I

    .line 2
    iput p3, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->n:I

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public v(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/join/mgps/customview/GamelistExpandableTextView;->u:I

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/customview/GamelistExpandableTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

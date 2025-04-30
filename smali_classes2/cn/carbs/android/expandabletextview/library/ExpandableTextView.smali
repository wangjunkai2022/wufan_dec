.class public Lcn/carbs/android/expandabletextview/library/ExpandableTextView;
.super Landroid/widget/TextView;
.source "ExpandableTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/carbs/android/expandabletextview/library/ExpandableTextView$c;,
        Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;,
        Lcn/carbs/android/expandabletextview/library/ExpandableTextView$b;,
        Lcn/carbs/android/expandabletextview/library/ExpandableTextView$d;
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

.field private o:Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;

.field private p:Landroid/widget/TextView$BufferType;

.field private q:Landroid/text/TextPaint;

.field private r:Landroid/text/Layout;

.field private s:I

.field private t:I

.field private u:I

.field private v:Ljava/lang/CharSequence;

.field private w:Lcn/carbs/android/expandabletextview/library/ExpandableTextView$b;

.field private x:Lcn/carbs/android/expandabletextview/library/ExpandableTextView$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string p1, " "

    .line 2
    iput-object p1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->d:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->e:Ljava/lang/String;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->f:Z

    .line 5
    iput-boolean p1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->g:Z

    .line 6
    iput-boolean p1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->h:Z

    const/4 p1, 0x2

    .line 7
    iput p1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->i:I

    const p1, -0xcb6725

    .line 8
    iput p1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->j:I

    const p1, -0x18b3c4

    .line 9
    iput p1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->k:I

    const p1, 0x55999999

    .line 10
    iput p1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->l:I

    .line 11
    iput p1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->m:I

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->n:I

    .line 13
    sget-object v0, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    iput-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->p:Landroid/widget/TextView$BufferType;

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->s:I

    .line 15
    iput p1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->t:I

    .line 16
    iput p1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->u:I

    .line 17
    invoke-direct {p0}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->o()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, " "

    .line 19
    iput-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->d:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->e:Ljava/lang/String;

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->f:Z

    .line 22
    iput-boolean v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->g:Z

    .line 23
    iput-boolean v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->h:Z

    const/4 v0, 0x2

    .line 24
    iput v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->i:I

    const v0, -0xcb6725

    .line 25
    iput v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->j:I

    const v0, -0x18b3c4

    .line 26
    iput v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->k:I

    const v0, 0x55999999

    .line 27
    iput v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->l:I

    .line 28
    iput v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->m:I

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->n:I

    .line 30
    sget-object v1, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    iput-object v1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->p:Landroid/widget/TextView$BufferType;

    const/4 v1, -0x1

    .line 31
    iput v1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->s:I

    .line 32
    iput v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->t:I

    .line 33
    iput v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->u:I

    .line 34
    invoke-direct {p0, p1, p2}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->p(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-direct {p0}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->o()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p3, " "

    .line 37
    iput-object p3, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->d:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->e:Ljava/lang/String;

    const/4 p3, 0x1

    .line 39
    iput-boolean p3, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->f:Z

    .line 40
    iput-boolean p3, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->g:Z

    .line 41
    iput-boolean p3, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->h:Z

    const/4 p3, 0x2

    .line 42
    iput p3, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->i:I

    const p3, -0xcb6725

    .line 43
    iput p3, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->j:I

    const p3, -0x18b3c4

    .line 44
    iput p3, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->k:I

    const p3, 0x55999999

    .line 45
    iput p3, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->l:I

    .line 46
    iput p3, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->m:I

    const/4 p3, 0x0

    .line 47
    iput p3, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->n:I

    .line 48
    sget-object v0, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    iput-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->p:Landroid/widget/TextView$BufferType;

    const/4 v0, -0x1

    .line 49
    iput v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->s:I

    .line 50
    iput p3, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->t:I

    .line 51
    iput p3, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->u:I

    .line 52
    invoke-direct {p0, p1, p2}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->p(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    invoke-direct {p0}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->o()V

    return-void
.end method

.method static synthetic a(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->m:I

    return p0
.end method

.method static synthetic b(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->getNewTextByConfig()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;)Landroid/widget/TextView$BufferType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->p:Landroid/widget/TextView$BufferType;

    return-object p0
.end method

.method static synthetic d(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->r(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method static synthetic e(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->s()V

    return-void
.end method

.method static synthetic f(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->n:I

    return p0
.end method

.method static synthetic g(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->j:I

    return p0
.end method

.method private getNewTextByConfig()Ljava/lang/CharSequence;
    .locals 13

    .line 1
    iget-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->v:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->v:Ljava/lang/CharSequence;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->r:Landroid/text/Layout;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    iput v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->t:I

    .line 5
    :cond_1
    iget v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->t:I

    if-gtz v0, :cond_4

    .line 6
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    if-nez v0, :cond_3

    .line 7
    iget v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->u:I

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->v:Ljava/lang/CharSequence;

    return-object v0

    .line 9
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->t:I

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

    iput v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->t:I

    .line 11
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->q:Landroid/text/TextPaint;

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->s:I

    .line 13
    iget v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->n:I

    const/16 v1, 0x21

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    if-eq v0, v2, :cond_5

    .line 14
    iget-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->v:Ljava/lang/CharSequence;

    return-object v0

    .line 15
    :cond_5
    iget-boolean v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->h:Z

    if-nez v0, :cond_6

    .line 16
    iget-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->v:Ljava/lang/CharSequence;

    return-object v0

    .line 17
    :cond_6
    new-instance v0, Landroid/text/DynamicLayout;

    iget-object v3, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->v:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->q:Landroid/text/TextPaint;

    iget v5, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->t:I

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->r:Landroid/text/Layout;

    .line 18
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    iput v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->s:I

    .line 19
    iget v2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->i:I

    if-gt v0, v2, :cond_7

    .line 20
    iget-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->v:Ljava/lang/CharSequence;

    return-object v0

    .line 21
    :cond_7
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->v:Ljava/lang/CharSequence;

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->e:Ljava/lang/String;

    .line 22
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 23
    iget-object v2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->o:Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    iget-object v4, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->c:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->k(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v0

    .line 24
    :cond_8
    new-instance v0, Landroid/text/DynamicLayout;

    iget-object v6, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->v:Ljava/lang/CharSequence;

    iget-object v7, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->q:Landroid/text/TextPaint;

    iget v8, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->t:I

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v12}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->r:Landroid/text/Layout;

    .line 25
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    iput v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->s:I

    .line 26
    iget v3, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->i:I

    if-gt v0, v3, :cond_9

    .line 27
    iget-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->v:Ljava/lang/CharSequence;

    return-object v0

    .line 28
    :cond_9
    invoke-direct {p0}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->getValidLayout()Landroid/text/Layout;

    move-result-object v0

    iget v3, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->i:I

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 29
    invoke-direct {p0}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->getValidLayout()Landroid/text/Layout;

    move-result-object v3

    iget v4, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->i:I

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 30
    iget-object v4, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->a:Ljava/lang/String;

    .line 31
    invoke-direct {p0, v4}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->k(Ljava/lang/String;)I

    move-result v4

    sub-int v4, v0, v4

    iget-boolean v5, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->g:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->b:Ljava/lang/String;

    .line 32
    invoke-direct {p0, v5}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->k(Ljava/lang/String;)I

    move-result v5

    iget-object v7, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->d:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->k(Ljava/lang/String;)I

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
    invoke-direct {p0}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->getValidLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->q:Landroid/text/TextPaint;

    iget-object v7, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->v:Ljava/lang/CharSequence;

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
    iget-object v5, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->q:Landroid/text/TextPaint;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->a:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->g:Z

    if-eqz v8, :cond_c

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->b:Ljava/lang/String;

    .line 36
    invoke-direct {p0, v11}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->d:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->j(Ljava/lang/String;)Ljava/lang/String;

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
    iget-object v8, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->v:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-gt v3, v8, :cond_d

    .line 39
    iget-object v8, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->q:Landroid/text/TextPaint;

    iget-object v11, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->v:Ljava/lang/CharSequence;

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
    iget-object v8, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->q:Landroid/text/TextPaint;

    iget-object v11, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->v:Ljava/lang/CharSequence;

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
    iget-object v2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->v:Ljava/lang/CharSequence;

    invoke-interface {v2, v6, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->q(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 44
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->a:Ljava/lang/String;

    .line 45
    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 46
    iget-boolean v2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->g:Z

    if-eqz v2, :cond_10

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->d:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->b:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 48
    iget-object v2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->o:Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    iget-object v4, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->b:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->k(Ljava/lang/String;)I

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
    iget-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->r:Landroid/text/Layout;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static synthetic h(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->l:I

    return p0
.end method

.method static synthetic i(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->k:I

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
    new-instance v0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;-><init>(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;Lcn/carbs/android/expandabletextview/library/ExpandableTextView$a;)V

    iput-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->o:Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;

    .line 2
    new-instance v0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$c;

    invoke-direct {v0, p0}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$c;-><init>(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 3
    iget-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ".."

    .line 4
    iput-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->a:Ljava/lang/String;

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcn/carbs/android/expandabletextview/library/R$string;->to_expand_hint:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->b:Ljava/lang/String;

    .line 7
    :cond_1
    iget-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcn/carbs/android/expandabletextview/library/R$string;->to_shrink_hint:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->c:Ljava/lang/String;

    .line 9
    :cond_2
    iget-boolean v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->f:Z

    if-eqz v0, :cond_3

    .line 10
    new-instance v0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$b;

    invoke-direct {v0, p0, v1}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$b;-><init>(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;Lcn/carbs/android/expandabletextview/library/ExpandableTextView$a;)V

    iput-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->w:Lcn/carbs/android/expandabletextview/library/ExpandableTextView$b;

    .line 11
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$a;

    invoke-direct {v1, p0}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$a;-><init>(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private p(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Lcn/carbs/android/expandabletextview/library/R$styleable;->ExpandableTextView:[I

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

    .line 4
    sget v3, Lcn/carbs/android/expandabletextview/library/R$styleable;->ExpandableTextView_etv_MaxLinesOnShrink:I

    if-ne v2, v3, :cond_2

    const/4 v3, 0x2

    .line 5
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->i:I

    goto/16 :goto_1

    .line 6
    :cond_2
    sget v3, Lcn/carbs/android/expandabletextview/library/R$styleable;->ExpandableTextView_etv_EllipsisHint:I

    if-ne v2, v3, :cond_3

    .line 7
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->a:Ljava/lang/String;

    goto/16 :goto_1

    .line 8
    :cond_3
    sget v3, Lcn/carbs/android/expandabletextview/library/R$styleable;->ExpandableTextView_etv_ToExpandHint:I

    if-ne v2, v3, :cond_4

    .line 9
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->b:Ljava/lang/String;

    goto/16 :goto_1

    .line 10
    :cond_4
    sget v3, Lcn/carbs/android/expandabletextview/library/R$styleable;->ExpandableTextView_etv_ToShrinkHint:I

    if-ne v2, v3, :cond_5

    .line 11
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->c:Ljava/lang/String;

    goto/16 :goto_1

    .line 12
    :cond_5
    sget v3, Lcn/carbs/android/expandabletextview/library/R$styleable;->ExpandableTextView_etv_EnableToggle:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_6

    .line 13
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->f:Z

    goto/16 :goto_1

    .line 14
    :cond_6
    sget v3, Lcn/carbs/android/expandabletextview/library/R$styleable;->ExpandableTextView_etv_ToExpandHintShow:I

    if-ne v2, v3, :cond_7

    .line 15
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->g:Z

    goto :goto_1

    .line 16
    :cond_7
    sget v3, Lcn/carbs/android/expandabletextview/library/R$styleable;->ExpandableTextView_etv_ToShrinkHintShow:I

    if-ne v2, v3, :cond_8

    .line 17
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->h:Z

    goto :goto_1

    .line 18
    :cond_8
    sget v3, Lcn/carbs/android/expandabletextview/library/R$styleable;->ExpandableTextView_etv_ToExpandHintColor:I

    if-ne v2, v3, :cond_9

    const v3, -0xcb6725

    .line 19
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->j:I

    goto :goto_1

    .line 20
    :cond_9
    sget v3, Lcn/carbs/android/expandabletextview/library/R$styleable;->ExpandableTextView_etv_ToShrinkHintColor:I

    if-ne v2, v3, :cond_a

    const v3, -0x18b3c4

    .line 21
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->k:I

    goto :goto_1

    .line 22
    :cond_a
    sget v3, Lcn/carbs/android/expandabletextview/library/R$styleable;->ExpandableTextView_etv_ToExpandHintColorBgPressed:I

    const v4, 0x55999999

    if-ne v2, v3, :cond_b

    .line 23
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->l:I

    goto :goto_1

    .line 24
    :cond_b
    sget v3, Lcn/carbs/android/expandabletextview/library/R$styleable;->ExpandableTextView_etv_ToShrinkHintColorBgPressed:I

    if-ne v2, v3, :cond_c

    .line 25
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->m:I

    goto :goto_1

    .line 26
    :cond_c
    sget v3, Lcn/carbs/android/expandabletextview/library/R$styleable;->ExpandableTextView_etv_InitState:I

    if-ne v2, v3, :cond_d

    .line 27
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->n:I

    goto :goto_1

    .line 28
    :cond_d
    sget v3, Lcn/carbs/android/expandabletextview/library/R$styleable;->ExpandableTextView_etv_GapToExpandHint:I

    if-ne v2, v3, :cond_e

    .line 29
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->d:Ljava/lang/String;

    goto :goto_1

    .line 30
    :cond_e
    sget v3, Lcn/carbs/android/expandabletextview/library/R$styleable;->ExpandableTextView_etv_GapToShrinkHint:I

    if-ne v2, v3, :cond_f

    .line 31
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->e:Ljava/lang/String;

    :cond_f
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 32
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
    iget v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->n:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->n:I

    .line 3
    iget-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->x:Lcn/carbs/android/expandabletextview/library/ExpandableTextView$d;

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0, p0}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$d;->a(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;)V

    goto :goto_0

    .line 5
    :cond_1
    iput v1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->n:I

    .line 6
    iget-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->x:Lcn/carbs/android/expandabletextview/library/ExpandableTextView$d;

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {v0, p0}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$d;->b(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;)V

    .line 8
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->getNewTextByConfig()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->p:Landroid/widget/TextView$BufferType;

    invoke-direct {p0, v0, v1}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->r(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method


# virtual methods
.method public getExpandState()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->n:I

    return v0
.end method

.method public l(Landroid/view/View;)Landroid/view/View$OnClickListener;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->n(Landroid/view/View;)Landroid/view/View$OnClickListener;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->m(Landroid/view/View;)Landroid/view/View$OnClickListener;

    move-result-object p1

    return-object p1
.end method

.method public setExpandListener(Lcn/carbs/android/expandabletextview/library/ExpandableTextView$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->x:Lcn/carbs/android/expandabletextview/library/ExpandableTextView$d;

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->v:Ljava/lang/CharSequence;

    .line 2
    iput-object p2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->p:Landroid/widget/TextView$BufferType;

    .line 3
    invoke-direct {p0}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->getNewTextByConfig()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->r(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public t(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->u:I

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public u(Ljava/lang/CharSequence;II)V
    .locals 0

    .line 1
    iput p2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->u:I

    .line 2
    iput p3, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->n:I

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public v(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->u:I

    .line 2
    invoke-virtual {p0, p1, p2}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

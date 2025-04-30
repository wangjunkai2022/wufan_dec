.class public Lcom/join/mgps/ptr/PtrClassicDefaultHeader;
.super Landroid/widget/FrameLayout;
.source "PtrClassicDefaultHeader.java"

# interfaces
.implements Lcom/join/mgps/ptr/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;
    }
.end annotation


# static fields
.field private static final k:Ljava/lang/String; = "cube_ptr_classic_last_update"

.field private static l:Ljava/text/SimpleDateFormat;


# instance fields
.field private a:I

.field private b:Landroid/view/animation/RotateAnimation;

.field private c:Landroid/view/animation/RotateAnimation;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private f:J

.field private g:Landroid/widget/TextView;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->l:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x96

    .line 2
    iput p1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->a:I

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->f:J

    .line 4
    new-instance p1, Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;-><init>(Lcom/join/mgps/ptr/PtrClassicDefaultHeader;Lcom/join/mgps/ptr/PtrClassicDefaultHeader$a;)V

    iput-object p1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->j:Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;

    .line 5
    invoke-virtual {p0, v0}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->l(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x96

    .line 7
    iput p1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->a:I

    const-wide/16 v0, -0x1

    .line 8
    iput-wide v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->f:J

    .line 9
    new-instance p1, Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;-><init>(Lcom/join/mgps/ptr/PtrClassicDefaultHeader;Lcom/join/mgps/ptr/PtrClassicDefaultHeader$a;)V

    iput-object p1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->j:Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;

    .line 10
    invoke-virtual {p0, p2}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->l(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x96

    .line 12
    iput p1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->a:I

    const-wide/16 v0, -0x1

    .line 13
    iput-wide v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->f:J

    .line 14
    new-instance p1, Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;-><init>(Lcom/join/mgps/ptr/PtrClassicDefaultHeader;Lcom/join/mgps/ptr/PtrClassicDefaultHeader$a;)V

    iput-object p1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->j:Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;

    .line 15
    invoke-virtual {p0, p2}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->l(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic f(Lcom/join/mgps/ptr/PtrClassicDefaultHeader;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/join/mgps/ptr/PtrClassicDefaultHeader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->n()V

    return-void
.end method

.method private getLastUpdateTime()Ljava/lang/String;
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->f:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v4, "cube_ptr_classic_last_update"

    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->h:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->f:J

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->f:J

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_1

    return-object v4

    .line 4
    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->f:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    .line 5
    div-long v2, v0, v2

    long-to-int v3, v2

    const-wide/16 v5, 0x0

    cmp-long v2, v0, v5

    if-gez v2, :cond_2

    return-object v4

    :cond_2
    if-gtz v3, :cond_3

    return-object v4

    .line 6
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1100b1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3c

    if-ge v3, v1, :cond_4

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1100b8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 9
    :cond_4
    div-int/2addr v3, v1

    if-le v3, v1, :cond_6

    .line 10
    div-int/2addr v3, v1

    const/16 v1, 0x18

    if-le v3, v1, :cond_5

    .line 11
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->f:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 12
    sget-object v2, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->l:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 13
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1100b0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 14
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1100b2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h()V
    .locals 9

    .line 1
    new-instance v7, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3ccc0000    # -180.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v7, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->b:Landroid/view/animation/RotateAnimation;

    .line 2
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v7, v0}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->b:Landroid/view/animation/RotateAnimation;

    iget v1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->a:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->b:Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 5
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v3, -0x3ccc0000    # -180.0f

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->c:Landroid/view/animation/RotateAnimation;

    .line 6
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->c:Landroid/view/animation/RotateAnimation;

    iget v2, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->a:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->c:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    return-void
.end method

.method private i(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/ptr/PtrFrameLayout;->p()Z

    move-result p1

    const v0, 0x7f11046e

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private j(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/ptr/PtrFrameLayout;->p()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->d:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->d:Landroid/widget/TextView;

    const v0, 0x7f11046f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 0

    return-void
.end method

.method private m()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->k()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->e:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private n()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->i:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->getLastUpdateTime()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->g:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 7
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->k()V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->e:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->d:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11046d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "cube_ptr_classic_last_update"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->f:J

    .line 8
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->h:Ljava/lang/String;

    iget-wide v1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->f:J

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public b(Lcom/join/mgps/ptr/PtrFrameLayout;ZBLcom/join/mgps/ptr/indicator/a;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/ptr/PtrFrameLayout;->getOffsetToRefresh()I

    move-result v0

    .line 2
    invoke-virtual {p4}, Lcom/join/mgps/ptr/indicator/a;->d()I

    move-result v1

    .line 3
    invoke-virtual {p4}, Lcom/join/mgps/ptr/indicator/a;->g()I

    move-result p4

    const/4 v2, 0x2

    if-ge v1, v0, :cond_0

    if-lt p4, v0, :cond_0

    if-eqz p2, :cond_1

    if-ne p3, v2, :cond_1

    .line 4
    invoke-direct {p0, p1}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->i(Lcom/join/mgps/ptr/PtrFrameLayout;)V

    goto :goto_0

    :cond_0
    if-le v1, v0, :cond_1

    if-gt p4, v0, :cond_1

    if-eqz p2, :cond_1

    if-ne p3, v2, :cond_1

    .line 5
    invoke-direct {p0, p1}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->j(Lcom/join/mgps/ptr/PtrFrameLayout;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->m()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->i:Z

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->n()V

    return-void
.end method

.method public d(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->i:Z

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->n()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->j:Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;

    invoke-static {v0}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;->b(Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->e:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/ptr/PtrFrameLayout;->p()Z

    move-result p1

    const v0, 0x7f11046e

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public e(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 1

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->i:Z

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->k()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->e:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->d:Landroid/widget/TextView;

    const v0, 0x7f11046d

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 6
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->n()V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->j:Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;

    invoke-static {p1}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;->a(Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;)V

    return-void
.end method

.method protected l(Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/join/android/app/mgsim/wufun/R$styleable;->PtrClassicHeader:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->a:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->a:I

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->h()V

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0115

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090c79

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->d:Landroid/widget/TextView;

    const v0, 0x7f090c77

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->g:Landroid/widget/TextView;

    const v0, 0x7f090c7a

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->e:Landroid/view/View;

    .line 8
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->m()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->j:Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;->a(Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;)V

    :cond_0
    return-void
.end method

.method public setLastUpdateTimeKey(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->h:Ljava/lang/String;

    return-void
.end method

.method public setLastUpdateTimeRelateObject(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->setLastUpdateTimeKey(Ljava/lang/String;)V

    return-void
.end method

.method public setRotateAniTime(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->a:I

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput p1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->a:I

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->h()V

    :cond_1
    :goto_0
    return-void
.end method

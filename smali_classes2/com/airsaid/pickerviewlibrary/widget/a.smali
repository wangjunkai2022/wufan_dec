.class public Lcom/airsaid/pickerviewlibrary/widget/a;
.super Ljava/lang/Object;
.source "BasePickerView.java"


# instance fields
.field private final a:Landroid/widget/FrameLayout$LayoutParams;

.field private b:Landroid/content/Context;

.field protected c:Landroid/view/ViewGroup;

.field private d:Landroid/view/ViewGroup;

.field private e:Landroid/view/ViewGroup;

.field private f:Lf/b;

.field private g:Z

.field private h:Landroid/view/animation/Animation;

.field private i:Landroid/view/animation/Animation;

.field private j:Z

.field private k:I

.field private l:Landroid/view/View;

.field private final m:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x50

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->a:Landroid/widget/FrameLayout$LayoutParams;

    .line 3
    iput v3, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->k:I

    .line 4
    new-instance v0, Lcom/airsaid/pickerviewlibrary/widget/a$b;

    invoke-direct {v0, p0}, Lcom/airsaid/pickerviewlibrary/widget/a$b;-><init>(Lcom/airsaid/pickerviewlibrary/widget/a;)V

    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->m:Landroid/view/View$OnTouchListener;

    .line 5
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->b:Landroid/content/Context;

    .line 6
    invoke-virtual {p0}, Lcom/airsaid/pickerviewlibrary/widget/a;->i()V

    .line 7
    invoke-virtual {p0}, Lcom/airsaid/pickerviewlibrary/widget/a;->g()V

    .line 8
    invoke-virtual {p0}, Lcom/airsaid/pickerviewlibrary/widget/a;->h()V

    return-void
.end method

.method static synthetic a(Lcom/airsaid/pickerviewlibrary/widget/a;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->d:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private k(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->c:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->i:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->g:Z

    .line 3
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->h:Landroid/view/animation/Animation;

    new-instance v1, Lcom/airsaid/pickerviewlibrary/widget/a$a;

    invoke-direct {v1, p0}, Lcom/airsaid/pickerviewlibrary/widget/a$a;-><init>(Lcom/airsaid/pickerviewlibrary/widget/a;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->h:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->d:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->j:Z

    .line 3
    iput-boolean v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->g:Z

    .line 4
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->f:Lf/b;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p0}, Lf/b;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public d(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public e()Landroid/view/animation/Animation;
    .locals 2

    .line 1
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->k:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lh/a;->a(IZ)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public f()Landroid/view/animation/Animation;
    .locals 2

    .line 1
    iget v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->k:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lh/a;->a(IZ)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method protected g()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/airsaid/pickerviewlibrary/widget/a;->e()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->i:Landroid/view/animation/Animation;

    .line 2
    invoke-virtual {p0}, Lcom/airsaid/pickerviewlibrary/widget/a;->f()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->h:Landroid/view/animation/Animation;

    return-void
.end method

.method protected h()V
    .locals 0

    return-void
.end method

.method protected i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->b:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->d:Landroid/view/ViewGroup;

    .line 3
    sget v2, Lcom/airsaid/pickerviewlibrary/R$layout;->layout_basepickerview:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->e:Landroid/view/ViewGroup;

    .line 4
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->e:Landroid/view/ViewGroup;

    sget v1, Lcom/airsaid/pickerviewlibrary/R$id;->content_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->c:Landroid/view/ViewGroup;

    .line 6
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->a:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->e:Landroid/view/ViewGroup;

    sget v1, Lcom/airsaid/pickerviewlibrary/R$id;->outmost_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->l:Landroid/view/View;

    .line 8
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->m:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->j:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public l(Z)Lcom/airsaid/pickerviewlibrary/widget/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->l:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->m:Landroid/view/View$OnTouchListener;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object p0
.end method

.method public m(Lf/b;)Lcom/airsaid/pickerviewlibrary/widget/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->f:Lf/b;

    return-object p0
.end method

.method public n()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/airsaid/pickerviewlibrary/widget/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->j:Z

    .line 3
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->e:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/airsaid/pickerviewlibrary/widget/a;->k(Landroid/view/View;)V

    return-void
.end method

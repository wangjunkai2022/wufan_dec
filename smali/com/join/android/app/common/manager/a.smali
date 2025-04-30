.class public Lcom/join/android/app/common/manager/a;
.super Ljava/lang/Object;
.source "DialogManager.java"


# static fields
.field private static k:Lcom/join/android/app/common/manager/a; = null

.field public static final l:I = 0x50

.field public static final m:I = 0x11

.field public static final n:I = 0x1

.field public static final o:I = 0x2

.field public static final p:I = 0x3


# instance fields
.field private a:Landroid/widget/PopupWindow;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/View;

.field private g:Landroid/content/Context;

.field private h:Landroid/widget/Toast;

.field private i:I

.field private j:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x50

    .line 2
    iput v0, p0, Lcom/join/android/app/common/manager/a;->i:I

    .line 3
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/join/android/app/common/manager/a$a;

    invoke-direct {v1, p0}, Lcom/join/android/app/common/manager/a$a;-><init>(Lcom/join/android/app/common/manager/a;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/join/android/app/common/manager/a;->j:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/join/android/app/common/manager/a;->a:Landroid/widget/PopupWindow;

    return-void
.end method

.method static synthetic a(Lcom/join/android/app/common/manager/a;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/manager/a;->f:Landroid/view/View;

    return-object p0
.end method

.method static synthetic b(Lcom/join/android/app/common/manager/a;)Landroid/widget/PopupWindow;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/manager/a;->a:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method private g(Landroid/app/Activity;)Landroid/util/DisplayMetrics;
    .locals 1

    .line 1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-object v0
.end method

.method public static h()Lcom/join/android/app/common/manager/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/android/app/common/manager/a;->k:Lcom/join/android/app/common/manager/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/join/android/app/common/manager/a;

    invoke-direct {v0}, Lcom/join/android/app/common/manager/a;-><init>()V

    sput-object v0, Lcom/join/android/app/common/manager/a;->k:Lcom/join/android/app/common/manager/a;

    .line 2
    :cond_0
    sget-object v0, Lcom/join/android/app/common/manager/a;->k:Lcom/join/android/app/common/manager/a;

    return-object v0
.end method

.method private n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/manager/a;->a:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 2
    iget-object v0, p0, Lcom/join/android/app/common/manager/a;->a:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 3
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 4
    iget-object v1, p0, Lcom/join/android/app/common/manager/a;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-object v0, p0, Lcom/join/android/app/common/manager/a;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;IIIILandroid/view/View;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/join/android/app/common/manager/a;->a:Landroid/widget/PopupWindow;

    .line 2
    invoke-direct {p0}, Lcom/join/android/app/common/manager/a;->n()V

    .line 3
    iget-object p1, p0, Lcom/join/android/app/common/manager/a;->a:Landroid/widget/PopupWindow;

    const/16 p2, 0x33

    invoke-virtual {p1, p6, p2, p4, p5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0082

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/android/app/common/manager/a;->f:Landroid/view/View;

    const v0, 0x7f0910f3

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/android/app/common/manager/a;->d:Landroid/widget/TextView;

    .line 3
    iget-object p1, p0, Lcom/join/android/app/common/manager/a;->f:Landroid/view/View;

    const v0, 0x7f0910f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/android/app/common/manager/a;->e:Landroid/widget/TextView;

    .line 4
    iget-object p1, p0, Lcom/join/android/app/common/manager/a;->d:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/join/android/app/common/manager/a;->e:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/join/android/app/common/manager/a;->f:Landroid/view/View;

    const p2, 0x7f0901cd

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/join/android/app/common/manager/a;->c:Landroid/widget/Button;

    .line 7
    iget-object p1, p0, Lcom/join/android/app/common/manager/a;->f:Landroid/view/View;

    const p2, 0x7f0901ce

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/join/android/app/common/manager/a;->b:Landroid/widget/Button;

    .line 8
    new-instance p1, Landroid/widget/PopupWindow;

    iget-object p2, p0, Lcom/join/android/app/common/manager/a;->f:Landroid/view/View;

    const/4 p3, -0x1

    invoke-direct {p1, p2, p3, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object p1, p0, Lcom/join/android/app/common/manager/a;->a:Landroid/widget/PopupWindow;

    .line 9
    invoke-direct {p0}, Lcom/join/android/app/common/manager/a;->n()V

    .line 10
    iget-object p1, p0, Lcom/join/android/app/common/manager/a;->j:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0082

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/android/app/common/manager/a;->f:Landroid/view/View;

    const v0, 0x7f0910f3

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/android/app/common/manager/a;->d:Landroid/widget/TextView;

    .line 3
    iget-object p1, p0, Lcom/join/android/app/common/manager/a;->f:Landroid/view/View;

    const v0, 0x7f0910f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/android/app/common/manager/a;->e:Landroid/widget/TextView;

    .line 4
    iget-object p1, p0, Lcom/join/android/app/common/manager/a;->d:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/join/android/app/common/manager/a;->e:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/join/android/app/common/manager/a;->f:Landroid/view/View;

    const p2, 0x7f0901cd

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/join/android/app/common/manager/a;->c:Landroid/widget/Button;

    .line 7
    iget-object p1, p0, Lcom/join/android/app/common/manager/a;->f:Landroid/view/View;

    const p2, 0x7f0901ce

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/join/android/app/common/manager/a;->b:Landroid/widget/Button;

    .line 8
    new-instance p1, Landroid/widget/PopupWindow;

    iget-object p2, p0, Lcom/join/android/app/common/manager/a;->f:Landroid/view/View;

    const/4 p3, -0x1

    invoke-direct {p1, p2, p3, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object p1, p0, Lcom/join/android/app/common/manager/a;->a:Landroid/widget/PopupWindow;

    .line 9
    invoke-direct {p0}, Lcom/join/android/app/common/manager/a;->n()V

    .line 10
    iget-object p1, p0, Lcom/join/android/app/common/manager/a;->j:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/manager/a;->a:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public i(Landroid/app/Activity;)I
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 3
    iget p1, v0, Landroid/graphics/Rect;->top:I

    return p1
.end method

.method public j(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    const/4 p3, 0x0

    .line 1
    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public k(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/manager/a;->c:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object p2, p0, Lcom/join/android/app/common/manager/a;->c:Landroid/widget/Button;

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public l(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/manager/a;->g:Landroid/content/Context;

    return-void
.end method

.method public m(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/manager/a;->b:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object p2, p0, Lcom/join/android/app/common/manager/a;->b:Landroid/widget/Button;

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public o(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/android/app/common/manager/a;->i:I

    return-void
.end method

.method public p(Landroid/app/Activity;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/android/app/common/manager/a;->g(Landroid/app/Activity;)Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    return p1
.end method

.method public q(Landroid/app/Activity;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/android/app/common/manager/a;->g(Landroid/app/Activity;)Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    return p1
.end method

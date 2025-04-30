.class public Lcom/join/mgps/customview/input/a;
.super Ljava/lang/Object;
.source "InputNumDialog.java"


# instance fields
.field private a:Landroid/app/Dialog;

.field private b:Landroid/view/Window;

.field private c:Lcom/join/mgps/customview/input/InputNumView;

.field private d:Landroid/content/Context;

.field private e:Lcom/join/mgps/customview/input/InputNumView$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/customview/input/a;->d:Landroid/content/Context;

    .line 3
    new-instance v0, Lcom/join/mgps/customview/input/InputNumView;

    invoke-direct {v0, p1}, Lcom/join/mgps/customview/input/InputNumView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/customview/input/a;->c:Lcom/join/mgps/customview/input/InputNumView;

    .line 4
    invoke-virtual {v0, p3, p4}, Lcom/join/mgps/customview/input/InputNumView;->setNumLengthAndIsPwd(IZ)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/customview/input/a;->c:Lcom/join/mgps/customview/input/InputNumView;

    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/input/InputNumView;->setTitle(Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lcom/join/mgps/customview/input/a;->d()V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/input/a;)Lcom/join/mgps/customview/input/InputNumView$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/input/a;->e:Lcom/join/mgps/customview/input/InputNumView$d;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/input/a;)Lcom/join/mgps/customview/input/InputNumView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/input/a;->c:Lcom/join/mgps/customview/input/InputNumView;

    return-object p0
.end method

.method private d()V
    .locals 5

    .line 1
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/join/mgps/customview/input/a;->d:Landroid/content/Context;

    const v2, 0x7f1204e2

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/join/mgps/customview/input/a;->a:Landroid/app/Dialog;

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/16 v3, 0x1c

    if-lt v1, v3, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 4
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 5
    iget-object v4, p0, Lcom/join/mgps/customview/input/a;->a:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/input/a;->a:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/join/mgps/customview/input/a;->c:Lcom/join/mgps/customview/input/InputNumView;

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    if-lt v1, v3, :cond_1

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/input/a;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 8
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 9
    iget-object v1, p0, Lcom/join/mgps/customview/input/a;->a:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/input/a;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/input/a;->b:Landroid/view/Window;

    .line 11
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 12
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 13
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 14
    iget-object v0, p0, Lcom/join/mgps/customview/input/a;->b:Landroid/view/Window;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/customview/input/a;->c:Lcom/join/mgps/customview/input/InputNumView;

    new-instance v1, Lcom/join/mgps/customview/input/a$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/input/a$a;-><init>(Lcom/join/mgps/customview/input/a;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/input/InputNumView;->setListener(Lcom/join/mgps/customview/input/InputNumView$d;)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/customview/input/a;->a:Landroid/app/Dialog;

    new-instance v1, Lcom/join/mgps/customview/input/a$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/input/a$b;-><init>(Lcom/join/mgps/customview/input/a;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/customview/input/a;->a:Landroid/app/Dialog;

    new-instance v1, Lcom/join/mgps/customview/input/a$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/input/a$c;-><init>(Lcom/join/mgps/customview/input/a;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/input/a;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/input/a;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/input/a;->c:Lcom/join/mgps/customview/input/InputNumView;

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/input/InputNumView;->setCurrentPwd(Ljava/lang/String;)V

    return-void
.end method

.method public g(Lcom/join/mgps/customview/input/InputNumView$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/input/a;->e:Lcom/join/mgps/customview/input/InputNumView$d;

    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/input/a;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/input/a;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

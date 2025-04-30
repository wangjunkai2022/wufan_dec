.class public Lcom/join/mgps/dialog/w0;
.super Ljava/lang/Object;
.source "InviteDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/w0$c;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Dialog;

.field private b:Landroid/view/Window;

.field private c:Landroid/content/Context;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/join/mgps/dialog/w0$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/join/mgps/dialog/w0$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/dialog/w0;->c:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/join/mgps/dialog/w0;->e:Lcom/join/mgps/dialog/w0$c;

    .line 4
    invoke-direct {p0, p1}, Lcom/join/mgps/dialog/w0;->c(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/dialog/w0;)Lcom/join/mgps/dialog/w0$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/w0;->e:Lcom/join/mgps/dialog/w0$c;

    return-object p0
.end method

.method private c(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f1204e2

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/join/mgps/dialog/w0;->a:Landroid/app/Dialog;

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 5
    iget-object v1, p0, Lcom/join/mgps/dialog/w0;->a:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 6
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0176

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f091165

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/dialog/w0;->d:Landroid/widget/TextView;

    const v0, 0x7f0901c9

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/dialog/w0$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/dialog/w0$a;-><init>(Lcom/join/mgps/dialog/w0;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0907ee

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/dialog/w0$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/dialog/w0$b;-><init>(Lcom/join/mgps/dialog/w0;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/dialog/w0;->a:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/dialog/w0;->a:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/dialog/w0;->b:Landroid/view/Window;

    .line 12
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v0, -0x1

    .line 13
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 14
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 15
    iget-object p1, p0, Lcom/join/mgps/dialog/w0;->b:Landroid/view/Window;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/w0;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/w0;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/w0;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/w0;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

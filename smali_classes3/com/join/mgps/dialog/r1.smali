.class public Lcom/join/mgps/dialog/r1;
.super Ljava/lang/Object;
.source "PostingSelectGameDialog.java"


# instance fields
.field private a:Landroid/app/Dialog;

.field private b:Lcom/join/mgps/activity/posting/PostingActivity$m;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/join/mgps/activity/posting/PostingActivity$m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/dialog/r1;->b:Lcom/join/mgps/activity/posting/PostingActivity$m;

    .line 3
    invoke-virtual {p0, p1}, Lcom/join/mgps/dialog/r1;->c(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/dialog/r1;)Lcom/join/mgps/activity/posting/PostingActivity$m;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/r1;->b:Lcom/join/mgps/activity/posting/PostingActivity$m;

    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/r1;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method c(Landroid/app/Activity;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f1204e2

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/join/mgps/dialog/r1;->a:Landroid/app/Dialog;

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
    iget-object v1, p0, Lcom/join/mgps/dialog/r1;->a:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 6
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c018f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f091154

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/join/mgps/dialog/r1$a;

    invoke-direct {v2, p0}, Lcom/join/mgps/dialog/r1$a;-><init>(Lcom/join/mgps/dialog/r1;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0910e0

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/join/mgps/dialog/r1$b;

    invoke-direct {v2, p0}, Lcom/join/mgps/dialog/r1$b;-><init>(Lcom/join/mgps/dialog/r1;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09112a

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/join/mgps/dialog/r1$c;

    invoke-direct {v2, p0}, Lcom/join/mgps/dialog/r1$c;-><init>(Lcom/join/mgps/dialog/r1;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v1, p0, Lcom/join/mgps/dialog/r1;->a:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/dialog/r1;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    .line 13
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/high16 v2, 0x43260000    # 166.0f

    .line 14
    invoke-static {p1, v2}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 p1, 0x50

    .line 15
    invoke-virtual {v0, p1}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/r1;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/dialog/r1;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

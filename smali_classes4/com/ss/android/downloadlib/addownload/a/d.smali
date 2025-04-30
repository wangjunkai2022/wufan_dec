.class public Lcom/ss/android/downloadlib/addownload/a/d;
.super Landroid/app/Dialog;
.source "SelectOperationDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/addownload/a/d$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/ss/android/downloadlib/addownload/a/c;

.field private e:Z

.field private f:Landroid/app/Activity;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/ss/android/downloadlib/addownload/a/c;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/ss/android/downloadlib/addownload/a/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget v0, Lcom/bytedance/sdk/openadsdk/R$style;->ttdownloader_translucent_dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/a/d;->f:Landroid/app/Activity;

    .line 3
    iput-object p6, p0, Lcom/ss/android/downloadlib/addownload/a/d;->d:Lcom/ss/android/downloadlib/addownload/a/c;

    .line 4
    iput-object p2, p0, Lcom/ss/android/downloadlib/addownload/a/d;->g:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/ss/android/downloadlib/addownload/a/d;->h:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/ss/android/downloadlib/addownload/a/d;->i:Ljava/lang/String;

    .line 7
    invoke-virtual {p0, p5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 8
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/a/d;->d()V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/addownload/a/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/a/d;->e()V

    return-void
.end method

.method static synthetic b(Lcom/ss/android/downloadlib/addownload/a/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/a/d;->f()V

    return-void
.end method

.method private d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/a/d;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ss/android/downloadlib/addownload/a/d;->a()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 3
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/addownload/a/d;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/a/d;->a:Landroid/widget/TextView;

    .line 4
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/addownload/a/d;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/a/d;->b:Landroid/widget/TextView;

    .line 5
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->message_tv:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/a/d;->c:Landroid/widget/TextView;

    .line 6
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/a/d;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/a/d;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/a/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/a/d;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/a/d;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/a/d;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/a/d;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/a/d;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/a/d;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/a/d;->a:Landroid/widget/TextView;

    new-instance v1, Lcom/ss/android/downloadlib/addownload/a/d$1;

    invoke-direct {v1, p0}, Lcom/ss/android/downloadlib/addownload/a/d$1;-><init>(Lcom/ss/android/downloadlib/addownload/a/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/a/d;->b:Landroid/widget/TextView;

    new-instance v1, Lcom/ss/android/downloadlib/addownload/a/d$2;

    invoke-direct {v1, p0}, Lcom/ss/android/downloadlib/addownload/a/d$2;-><init>(Lcom/ss/android/downloadlib/addownload/a/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private e()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/ss/android/downloadlib/addownload/a/d;->e:Z

    .line 2
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/addownload/a/d;->dismiss()V

    return-void
.end method

.method private f()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/addownload/a/d;->dismiss()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 2
    sget v0, Lcom/bytedance/sdk/openadsdk/R$layout;->ttdownloader_dialog_select_operation:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 2
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->confirm_tv:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    sget v0, Lcom/bytedance/sdk/openadsdk/R$id;->cancel_tv:I

    return v0
.end method

.method public dismiss()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/a/d;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/a/d;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/ss/android/downloadlib/addownload/a/d;->e:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/a/d;->d:Lcom/ss/android/downloadlib/addownload/a/c;

    invoke-interface {v0}, Lcom/ss/android/downloadlib/addownload/a/c;->a()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/a/d;->d:Lcom/ss/android/downloadlib/addownload/a/c;

    invoke-interface {v0}, Lcom/ss/android/downloadlib/addownload/a/c;->b()V

    :goto_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

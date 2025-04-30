.class public Lcom/join/mgps/dialog/f;
.super Landroid/app/Dialog;
.source "AppUpdateDialog.java"


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/widget/TextView;

.field c:Landroid/webkit/WebView;

.field d:Lcom/join/mgps/dto/VersionDto;

.field e:Z

.field f:Z

.field private g:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f120142

    .line 13
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/join/mgps/dialog/f;->f:Z

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lcom/join/mgps/dialog/f;->g:J

    .line 16
    iput-object p1, p0, Lcom/join/mgps/dialog/f;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/join/mgps/dto/VersionDto;)V
    .locals 2

    const p2, 0x7f120142

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x0

    .line 8
    iput-boolean p2, p0, Lcom/join/mgps/dialog/f;->f:Z

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lcom/join/mgps/dialog/f;->g:J

    .line 10
    iput-object p1, p0, Lcom/join/mgps/dialog/f;->a:Landroid/content/Context;

    .line 11
    iput-object p3, p0, Lcom/join/mgps/dialog/f;->d:Lcom/join/mgps/dto/VersionDto;

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/join/mgps/dialog/f;->f:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/join/mgps/dto/VersionDto;Z)V
    .locals 2

    const p2, 0x7f120142

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcom/join/mgps/dialog/f;->f:Z

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/join/mgps/dialog/f;->g:J

    .line 4
    iput-object p1, p0, Lcom/join/mgps/dialog/f;->a:Landroid/content/Context;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dialog/f;->d:Lcom/join/mgps/dto/VersionDto;

    .line 6
    iput-boolean p4, p0, Lcom/join/mgps/dialog/f;->e:Z

    return-void
.end method

.method private a(Ljava/io/File;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {p2}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/join/android/app/common/utils/APKUtils;->x(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method

.method static synthetic b(Lcom/join/mgps/dialog/f;Ljava/io/File;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/dialog/f;->a(Ljava/io/File;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/f;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 2
    iget-boolean v0, p0, Lcom/join/mgps/dialog/f;->e:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/join/mgps/dialog/f;->g:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    const/4 p1, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/dialog/f;->a:Landroid/content/Context;

    const-string v2, "\u518d\u6309\u4e00\u6b21\u9000\u51fa\u7a0b\u5e8f"

    invoke-static {v0, v2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/join/mgps/dialog/f;->g:J

    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/dialog/f;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 8
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return v1

    .line 9
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 10
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const/4 v0, -0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/dialog/f;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c014c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09075e

    .line 7
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/join/mgps/dialog/f;->c:Landroid/webkit/WebView;

    const v2, 0x7f090b63

    .line 8
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    const v3, 0x7f090b01

    .line 9
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    const v4, 0x7f090b00

    .line 10
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/facebook/drawee/view/SimpleDraweeView;

    const v5, 0x7f090af6

    .line 11
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 12
    iget-object v6, p0, Lcom/join/mgps/dialog/f;->d:Lcom/join/mgps/dto/VersionDto;

    invoke-virtual {v6}, Lcom/join/mgps/dto/VersionDto;->getTpl_type()I

    move-result v6

    const/16 v7, 0x8

    const/4 v8, 0x2

    if-ne v6, v8, :cond_1

    .line 13
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 14
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 15
    new-instance v2, Lcom/join/mgps/dialog/f$a;

    invoke-direct {v2, p0}, Lcom/join/mgps/dialog/f$a;-><init>(Lcom/join/mgps/dialog/f;)V

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-boolean v2, p0, Lcom/join/mgps/dialog/f;->e:Z

    if-eqz v2, :cond_0

    .line 17
    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v5, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 19
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 20
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/dialog/f;->d:Lcom/join/mgps/dto/VersionDto;

    invoke-virtual {p1}, Lcom/join/mgps/dto/VersionDto;->getTow_tpl_back_ground_pic()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 21
    new-instance p1, Lcom/join/mgps/dialog/f$b;

    invoke-direct {p1, p0}, Lcom/join/mgps/dialog/f$b;-><init>(Lcom/join/mgps/dialog/f;)V

    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 23
    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 24
    :goto_1
    iget-object v8, p0, Lcom/join/mgps/dialog/f;->c:Landroid/webkit/WebView;

    const/4 v9, 0x0

    iget-object p1, p0, Lcom/join/mgps/dialog/f;->d:Lcom/join/mgps/dto/VersionDto;

    invoke-virtual {p1}, Lcom/join/mgps/dto/VersionDto;->getInfo()Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    const-string v11, "text/html"

    const-string v12, "utf-8"

    invoke-virtual/range {v8 .. v13}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-boolean p1, p0, Lcom/join/mgps/dialog/f;->e:Z

    const v2, 0x7f090210

    if-eqz p1, :cond_2

    .line 26
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 27
    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 28
    :goto_2
    iget-boolean p1, p0, Lcom/join/mgps/dialog/f;->f:Z

    const v3, 0x7f091221

    if-eqz p1, :cond_3

    .line 29
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 30
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v4, 0x7f090772

    .line 31
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 32
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "\u514d\u6d41\u91cf\u5b89\u88c5"

    .line 33
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    :cond_3
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/join/mgps/dialog/f$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/f$c;-><init>(Lcom/join/mgps/dialog/f;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/join/mgps/dialog/f$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/f$d;-><init>(Lcom/join/mgps/dialog/f;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

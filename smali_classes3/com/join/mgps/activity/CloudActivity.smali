.class public Lcom/join/mgps/activity/CloudActivity;
.super Lcom/BaseActivity;
.source "CloudActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/CloudActivity$j;,
        Lcom/join/mgps/activity/CloudActivity$i;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c00de
.end annotation


# instance fields
.field a:Landroid/widget/ListView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CloudInfo;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CloudInfo;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/join/mgps/activity/CloudActivity$i;

.field f:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Lcom/join/mgps/rpc/k;

.field i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field l:I

.field m:Z

.field n:Lcom/join/mgps/dialog/z;

.field o:Z

.field p:I

.field q:I

.field r:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->i:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->j:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->k:Ljava/util/Map;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/CloudActivity;->l:I

    .line 6
    iput v0, p0, Lcom/join/mgps/activity/CloudActivity;->p:I

    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/activity/CloudActivity;->r:Z

    return-void
.end method


# virtual methods
.method public E0(II)Ljava/lang/String;
    .locals 4

    int-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    int-to-double p1, p2

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v2

    div-double/2addr v0, p1

    .line 3
    new-instance p1, Ljava/text/DecimalFormat;

    const-string p2, "##%"

    invoke-direct {p1, p2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method F0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/join/mgps/activity/CloudActivity;->l:I

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/CloudActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u9009\u62e9"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "\u53d6\u6d88"

    if-eqz v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/CloudInfo;

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/CloudInfo;->setSelect(Z)V

    .line 5
    iget v1, p0, Lcom/join/mgps/activity/CloudActivity;->l:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/join/mgps/activity/CloudActivity;->l:I

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/CloudActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/CloudActivity;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/CloudInfo;

    .line 9
    invoke-virtual {v3, v0}, Lcom/join/mgps/dto/CloudInfo;->setSelect(Z)V

    goto :goto_1

    .line 10
    :cond_2
    iput v0, p0, Lcom/join/mgps/activity/CloudActivity;->l:I

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/CloudActivity;->O0()V

    return-void
.end method

.method G0()V
    .locals 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/activity/CloudActivity;->o:Z

    .line 2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "showFirst"

    invoke-static {p0, v1, v0}, Lcom/join/mgps/Util/b2;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/join/mgps/activity/CloudActivity;->m:Z

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Lcom/join/mgps/dialog/v;

    const v1, 0x7f120176

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/dialog/v;-><init>(Landroid/content/Context;I)V

    .line 4
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const v1, 0x7f090210

    .line 5
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090b5c

    .line 6
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090293

    .line 7
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 8
    iget-boolean v4, p0, Lcom/join/mgps/activity/CloudActivity;->m:Z

    if-eqz v4, :cond_0

    const v4, 0x7f0802e2

    .line 9
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const v4, 0x7f0802e1

    .line 10
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11
    :goto_0
    new-instance v4, Lcom/join/mgps/activity/CloudActivity$a;

    invoke-direct {v4, p0, v3}, Lcom/join/mgps/activity/CloudActivity$a;-><init>(Lcom/join/mgps/activity/CloudActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    new-instance v3, Lcom/join/mgps/activity/CloudActivity$b;

    invoke-direct {v3, p0, v0}, Lcom/join/mgps/activity/CloudActivity$b;-><init>(Lcom/join/mgps/activity/CloudActivity;Lcom/join/mgps/dialog/v;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    new-instance v1, Lcom/join/mgps/activity/CloudActivity$c;

    invoke-direct {v1, p0, v0}, Lcom/join/mgps/activity/CloudActivity$c;-><init>(Lcom/join/mgps/activity/CloudActivity;Lcom/join/mgps/dialog/v;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/CloudActivity;->P0()V

    :goto_1
    return-void
.end method

.method H0()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/z;

    const v1, 0x7f120176

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/dialog/z;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->n:Lcom/join/mgps/dialog/z;

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->n:Lcom/join/mgps/dialog/z;

    const-string v1, "80%"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/z;->a(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->n:Lcom/join/mgps/dialog/z;

    const-string v1, "\u4e2d\u65ad\u4e0b\u8f7d"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/z;->d(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->n:Lcom/join/mgps/dialog/z;

    const-string v1, "\u5b58\u6863\u4e0b\u8f7d\u4e2d\uff0c\u8bf7\u52ff\u4e2d\u65ad\u7f51\u7edc"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/z;->f(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->n:Lcom/join/mgps/dialog/z;

    const v1, 0x7f0802e0

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/z;->c(I)V

    return-void
.end method

.method I0(II)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->n:Lcom/join/mgps/dialog/z;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/dialog/z;

    const v1, 0x7f120176

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/dialog/z;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->n:Lcom/join/mgps/dialog/z;

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->n:Lcom/join/mgps/dialog/z;

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/CloudActivity;->E0(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/dialog/z;->a(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/CloudActivity;->n:Lcom/join/mgps/dialog/z;

    const-string p2, "\u4e2d\u65ad\u5907\u4efd"

    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/z;->d(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/CloudActivity;->n:Lcom/join/mgps/dialog/z;

    const-string p2, "\u5b58\u6863\u5907\u4efd\u4e2d\uff0c\u8bf7\u52ff\u4e2d\u65ad\u7f51\u7edc"

    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/z;->f(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/CloudActivity;->n:Lcom/join/mgps/dialog/z;

    const p2, 0x7f0802e0

    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/z;->c(I)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/CloudActivity;->n:Lcom/join/mgps/dialog/z;

    new-instance p2, Lcom/join/mgps/activity/CloudActivity$d;

    invoke-direct {p2, p0}, Lcom/join/mgps/activity/CloudActivity$d;-><init>(Lcom/join/mgps/activity/CloudActivity;)V

    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/z;->e(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method J0(II)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->n:Lcom/join/mgps/dialog/z;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/dialog/z;

    const v1, 0x7f120176

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/dialog/z;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->n:Lcom/join/mgps/dialog/z;

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->n:Lcom/join/mgps/dialog/z;

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/CloudActivity;->E0(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/join/mgps/dialog/z;->a(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/join/mgps/activity/CloudActivity;->n:Lcom/join/mgps/dialog/z;

    const-string v0, "\u5b8c\u6210"

    invoke-virtual {p2, v0}, Lcom/join/mgps/dialog/z;->d(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/join/mgps/activity/CloudActivity;->n:Lcom/join/mgps/dialog/z;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4f20\u8f93\u4e2d\u65ad\uff0c\u5df2\u4f20\u8f93"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\u4e2a\u5b58\u6863"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/join/mgps/dialog/z;->f(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/CloudActivity;->n:Lcom/join/mgps/dialog/z;

    const p2, 0x7f0802dd

    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/z;->c(I)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/CloudActivity;->n:Lcom/join/mgps/dialog/z;

    new-instance p2, Lcom/join/mgps/activity/CloudActivity$e;

    invoke-direct {p2, p0}, Lcom/join/mgps/activity/CloudActivity$e;-><init>(Lcom/join/mgps/activity/CloudActivity;)V

    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/z;->e(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method K0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->n:Lcom/join/mgps/dialog/z;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/z;->b(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->n:Lcom/join/mgps/dialog/z;

    const v1, 0x7f0802de

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/z;->c(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->n:Lcom/join/mgps/dialog/z;

    const-string v1, "\u6210\u529f\u5907\u4efd\u5b58\u6863"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/z;->f(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->n:Lcom/join/mgps/dialog/z;

    const-string v1, "\u5b8c\u6210"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/z;->d(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->n:Lcom/join/mgps/dialog/z;

    new-instance v1, Lcom/join/mgps/activity/CloudActivity$f;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CloudActivity$f;-><init>(Lcom/join/mgps/activity/CloudActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/z;->e(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method L0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/CloudActivity;->o:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/CloudActivity;->G0()V

    return-void
.end method

.method public M0(Landroid/content/Context;Lcom/join/mgps/dto/CloudUploadInfo;Ljava/io/File;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/join/android/app/common/http/h;->b()Lcom/join/android/app/common/http/h;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/CloudActivity$h;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CloudActivity$h;-><init>(Lcom/join/mgps/activity/CloudActivity;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/join/android/app/common/http/h;->e(Landroid/content/Context;Lcom/join/mgps/dto/CloudUploadInfo;Ljava/io/File;Lcom/join/android/app/common/http/b;)V

    return-void
.end method

.method N0()V
    .locals 6

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/join/mgps/activity/CloudActivity;->p:I

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/CloudActivity;->k:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/CloudActivity;->I0(II)V

    .line 3
    new-instance v0, Lorg/springframework/util/LinkedMultiValueMap;

    invoke-direct {v0}, Lorg/springframework/util/LinkedMultiValueMap;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uid"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "token"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "brand_name"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/CloudActivity;->h:Lcom/join/mgps/rpc/k;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/k;->f0(Ljava/util/Map;)Lcom/join/mgps/dto/GameWorldResponse;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameWorldResponse;->getError()I

    move-result v1

    if-nez v1, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameWorldResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/CloudCreateInfo;

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudCreateInfo;->getRid()I

    move-result v1

    iput v1, p0, Lcom/join/mgps/activity/CloudActivity;->q:I

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/CloudActivity;->k:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 13
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 14
    iget-boolean v2, p0, Lcom/join/mgps/activity/CloudActivity;->r:Z

    if-eqz v2, :cond_0

    .line 15
    iget v0, p0, Lcom/join/mgps/activity/CloudActivity;->p:I

    iget-object v1, p0, Lcom/join/mgps/activity/CloudActivity;->k:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/CloudActivity;->J0(II)V

    goto :goto_1

    .line 16
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 17
    iget-object v3, p0, Lcom/join/mgps/activity/CloudActivity;->k:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 18
    new-instance v4, Lcom/join/mgps/dto/CloudUploadInfo;

    invoke-direct {v4}, Lcom/join/mgps/dto/CloudUploadInfo;-><init>()V

    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/CloudUploadInfo;->setUid(I)V

    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudCreateInfo;->getRid()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/CloudUploadInfo;->setRid(I)V

    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/CloudUploadInfo;->setToken(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v4, v2}, Lcom/join/mgps/dto/CloudUploadInfo;->setGame_id(Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/join/android/app/common/http/h;->b()Lcom/join/android/app/common/http/h;

    move-result-object v2

    new-instance v5, Lcom/join/mgps/activity/CloudActivity$g;

    invoke-direct {v5, p0}, Lcom/join/mgps/activity/CloudActivity$g;-><init>(Lcom/join/mgps/activity/CloudActivity;)V

    invoke-virtual {v2, p0, v4, v3, v5}, Lcom/join/android/app/common/http/h;->e(Landroid/content/Context;Lcom/join/mgps/dto/CloudUploadInfo;Ljava/io/File;Lcom/join/android/app/common/http/b;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method O0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->e:Lcom/join/mgps/activity/CloudActivity$i;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 2
    iget v0, p0, Lcom/join/mgps/activity/CloudActivity;->l:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->f:Landroid/widget/Button;

    const-string v1, "\u672a\u9009\u4e2d\u4efb\u4f55\u5b58\u6863"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->f:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/CloudInfo;

    .line 7
    invoke-virtual {v2}, Lcom/join/mgps/dto/CloudInfo;->isSelect()Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->f:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5907\u4efd\u5b58\u6863\uff08\u5df2\u9009\u4e2d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u6b3e\u6e38\u620f)"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method P0()V
    .locals 10
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/CloudInfo;

    .line 3
    invoke-virtual {v1}, Lcom/join/mgps/dto/CloudInfo;->isSelect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/CloudActivity;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/CloudInfo;

    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/dto/CloudInfo;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/join/mgps/Util/f0;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 10
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/RomArchived;

    .line 11
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Lcom/join/mgps/dto/RomArchived;->getArchivedPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    new-instance v7, Ljava/io/File;

    invoke-virtual {v5}, Lcom/join/mgps/dto/RomArchived;->getArchivedImagePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-static {v6}, Lcom/join/mgps/Util/m;->a(Ljava/io/File;)J

    move-result-wide v8

    .line 14
    iget-object v5, p0, Lcom/join/mgps/activity/CloudActivity;->j:Ljava/util/List;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 15
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    if-nez v4, :cond_3

    .line 17
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".zip"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    if-eqz v4, :cond_2

    .line 18
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 19
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 20
    :cond_6
    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    const-string v2, ""

    .line 21
    invoke-static {v3, v4, v2}, Lcom/join/mgps/Util/s2;->n(Ljava/util/Collection;Ljava/io/File;Ljava/lang/String;)V

    .line 22
    iget-object v2, p0, Lcom/join/mgps/activity/CloudActivity;->k:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/activity/CloudActivity;->N0()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    .line 24
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :cond_8
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/join/mgps/activity/CloudActivity;->o:Z

    return-void
.end method

.method afterView()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/k;->n0()Lcom/join/mgps/rpc/impl/k;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->h:Lcom/join/mgps/rpc/k;

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/CloudActivity;->O0()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->d:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->c:Ljava/util/List;

    .line 5
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->u()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->b:Ljava/util/List;

    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/CloudActivity;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/CloudActivity;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 8
    new-instance v2, Lcom/join/mgps/dto/CloudInfo;

    invoke-direct {v2}, Lcom/join/mgps/dto/CloudInfo;-><init>()V

    .line 9
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/CloudInfo;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 10
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/join/mgps/Util/f0;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 11
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/CloudInfo;->setRomArchiveds(Ljava/util/List;)V

    .line 12
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/CloudInfo;->setRomArchivedNum(I)V

    const-wide/16 v3, 0x0

    .line 13
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/RomArchived;

    .line 14
    invoke-virtual {v5}, Lcom/join/mgps/dto/RomArchived;->getSize()J

    move-result-wide v5

    add-long/2addr v3, v5

    goto :goto_1

    .line 15
    :cond_0
    invoke-virtual {v2, v3, v4}, Lcom/join/mgps/dto/CloudInfo;->setRomArchivedSize(J)V

    .line 16
    iget-object v1, p0, Lcom/join/mgps/activity/CloudActivity;->c:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->c:Ljava/util/List;

    new-instance v1, Lcom/join/mgps/activity/CloudActivity$j;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CloudActivity$j;-><init>(Lcom/join/mgps/activity/CloudActivity;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 18
    new-instance v0, Lcom/join/mgps/activity/CloudActivity$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CloudActivity$i;-><init>(Lcom/join/mgps/activity/CloudActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->e:Lcom/join/mgps/activity/CloudActivity$i;

    .line 19
    iget-object v1, p0, Lcom/join/mgps/activity/CloudActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method uploadSuccess()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    new-instance v0, Lorg/springframework/util/LinkedMultiValueMap;

    invoke-direct {v0}, Lorg/springframework/util/LinkedMultiValueMap;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uid"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "token"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/join/mgps/activity/CloudActivity;->q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/CloudActivity;->h:Lcom/join/mgps/rpc/k;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/k;->V(Ljava/util/Map;)Lcom/join/mgps/dto/GameWorldResponse;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameWorldResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/CloudStatus;

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudStatus;->getStatus()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ok"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/CloudActivity;->K0()V

    .line 9
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudStatus;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/t0;->g(Ljava/lang/String;)V

    return-void
.end method

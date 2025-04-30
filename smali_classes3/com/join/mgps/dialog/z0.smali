.class public Lcom/join/mgps/dialog/z0;
.super Lcom/join/mgps/dialog/q;
.source "ModDownloadDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/z0$a;
    }
.end annotation


# static fields
.field public static final w:I = 0x0

.field public static final x:I = 0x1

.field public static final y:I = 0x2

.field public static final z:I = 0x3


# instance fields
.field j:Landroid/widget/TextView;

.field k:Landroid/widget/TextView;

.field l:Landroid/widget/TextView;

.field m:Landroid/widget/TextView;

.field n:Landroid/widget/TextView;

.field o:Landroid/widget/ProgressBar;

.field p:Landroid/widget/LinearLayout;

.field q:Landroid/widget/ImageView;

.field r:Lcom/join/mgps/dialog/z0$a;

.field private s:I

.field private t:Ljava/lang/String;

.field private u:I

.field v:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x7f12013b

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/dialog/q;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/join/mgps/dialog/z0;->s:I

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lcom/join/mgps/dialog/z0;->u:I

    return-void
.end method

.method private A()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/z0;->p:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/dialog/z0;->l:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/dialog/z0;->l:Landroid/widget/TextView;

    const-string v1, "\u53d1\u73b0\u65b0\u7248\u672c\uff0c\u662f\u5426\u66f4\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/dialog/z0;->j:Landroid/widget/TextView;

    const-string v1, "\u5ffd\u7565"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/dialog/z0;->k:Landroid/widget/TextView;

    const-string v1, "\u7acb\u5373\u66f4\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/dialog/z0;->k:Landroid/widget/TextView;

    const v1, 0x7f080263

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-void
.end method

.method private B()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/z0;->p:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/dialog/z0;->l:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/dialog/z0;->n:Landroid/widget/TextView;

    const-string v1, "\u7b49\u5f85\u4e2d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/dialog/z0;->j:Landroid/widget/TextView;

    const-string v2, "\u540e\u53f0\u4e0b\u8f7d"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/dialog/z0;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/dialog/z0;->k:Landroid/widget/TextView;

    const v1, 0x7f080265

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-void
.end method

.method private m()V
    .locals 1

    const v0, 0x7f091130

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/dialog/z0;->j:Landroid/widget/TextView;

    const v0, 0x7f091131

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/dialog/z0;->k:Landroid/widget/TextView;

    const v0, 0x7f091135

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/dialog/z0;->l:Landroid/widget/TextView;

    const v0, 0x7f091132

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/dialog/z0;->m:Landroid/widget/TextView;

    const v0, 0x7f090bfe

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/join/mgps/dialog/z0;->o:Landroid/widget/ProgressBar;

    const v0, 0x7f090940

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/dialog/z0;->p:Landroid/widget/LinearLayout;

    const v0, 0x7f091134

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/dialog/z0;->n:Landroid/widget/TextView;

    .line 8
    iget-object v0, p0, Lcom/join/mgps/dialog/z0;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/dialog/z0;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private n()V
    .locals 3

    const v0, 0x7f091131

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/dialog/z0;->k:Landroid/widget/TextView;

    const v0, 0x7f0907ee

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/dialog/z0;->q:Landroid/widget/ImageView;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/dialog/z0;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/dialog/z0;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090236

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090234

    .line 6
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 7
    iget-object v2, p0, Lcom/join/mgps/dialog/z0;->v:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    if-nez v2, :cond_0

    const-string v2, "\u7a33\u5b9a\u6d41\u7545"

    .line 8
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f08061d

    .line 9
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const-string v2, "\u4e91\u5b58\u6863"

    .line 10
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080614

    .line 11
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private y()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/z0;->p:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/dialog/z0;->l:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/dialog/z0;->n:Landroid/widget/TextView;

    const-string v1, "\u4e0b\u8f7d\u4e2d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/dialog/z0;->j:Landroid/widget/TextView;

    const-string v1, "\u540e\u53f0\u4e0b\u8f7d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/dialog/z0;->k:Landroid/widget/TextView;

    const-string v1, "\u6682\u505c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/dialog/z0;->k:Landroid/widget/TextView;

    const v1, 0x7f080265

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-void
.end method

.method private z(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/z0;->p:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/dialog/z0;->l:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/dialog/z0;->l:Landroid/widget/TextView;

    const-string v0, "\u542f\u52a8\u6807\u51c6\u7248\u9700\u5b89\u88c5\u6e38\u620f\u81f3\u672c\u5730"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/dialog/z0;->l:Landroid/widget/TextView;

    const-string v0, "\u542f\u52a8\u589e\u5f3a\u7248\u9700\n\u5b89\u88c5\u6e38\u620f\u81f3\u865a\u62df\u673a"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/dialog/z0;->j:Landroid/widget/TextView;

    const-string v0, "\u53d6\u6d88"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/dialog/z0;->k:Landroid/widget/TextView;

    const-string v0, "\u7acb\u5373\u5b89\u88c5"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/dialog/z0;->k:Landroid/widget/TextView;

    const v0, 0x7f080263

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-void
.end method


# virtual methods
.method public C(IZ)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/join/mgps/dialog/z0;->s:I

    const v0, 0x7f0c0180

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    const v0, 0x7f0c017f

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/dialog/z0;->m()V

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/dialog/z0;->B()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 6
    invoke-direct {p0}, Lcom/join/mgps/dialog/z0;->m()V

    .line 7
    invoke-direct {p0}, Lcom/join/mgps/dialog/z0;->y()V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 9
    invoke-direct {p0}, Lcom/join/mgps/dialog/z0;->m()V

    .line 10
    invoke-direct {p0}, Lcom/join/mgps/dialog/z0;->A()V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 11
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 12
    invoke-direct {p0}, Lcom/join/mgps/dialog/z0;->m()V

    .line 13
    invoke-direct {p0, p2}, Lcom/join/mgps/dialog/z0;->z(Z)V

    goto :goto_0

    :cond_4
    const p1, 0x7f0c0181

    .line 14
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 15
    invoke-direct {p0}, Lcom/join/mgps/dialog/z0;->n()V

    .line 16
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object p2, Lcom/papa/sim/statistic/Event;->modDownloadTip:Lcom/papa/sim/statistic/Event;

    new-instance v0, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iget-object v1, p0, Lcom/join/mgps/dialog/z0;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/join/mgps/dialog/z0;->u:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    :goto_0
    return-void
.end method

.method public D(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 6

    if-eqz p1, :cond_3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/z0;->o:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    mul-double v0, v0, v2

    double-to-long v0, v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateStatus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, Lcom/join/mgps/dialog/z0;->m:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    const/4 v0, 0x2

    const v1, 0x7f080265

    const-string v2, "\u6682\u505c"

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/dialog/z0;->n:Landroid/widget/TextView;

    const-string v0, "\u7b49\u5f85\u4e2d"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/dialog/z0;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/dialog/z0;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/dialog/z0;->n:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/dialog/z0;->k:Landroid/widget/TextView;

    const-string v0, "\u7ee7\u7eed"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/dialog/z0;->k:Landroid/widget/TextView;

    const v0, 0x7f080263

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/dialog/z0;->n:Landroid/widget/TextView;

    const-string v0, "\u4e0b\u8f7d\u4e2d"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/dialog/z0;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/dialog/z0;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public o()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dialog/z0;->u:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f091130

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/dialog/z0;->r:Lcom/join/mgps/dialog/z0$a;

    if-eqz p1, :cond_2

    .line 3
    invoke-interface {p1, p0}, Lcom/join/mgps/dialog/z0$a;->b(Lcom/join/mgps/dialog/z0;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f091131

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/join/mgps/dialog/z0;->r:Lcom/join/mgps/dialog/z0$a;

    if-eqz p1, :cond_2

    .line 5
    invoke-interface {p1, p0}, Lcom/join/mgps/dialog/z0$a;->a(Lcom/join/mgps/dialog/z0;)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0907ee

    if-ne p1, v0, :cond_2

    .line 6
    iget-object p1, p0, Lcom/join/mgps/dialog/z0;->r:Lcom/join/mgps/dialog/z0$a;

    if-eqz p1, :cond_2

    .line 7
    invoke-interface {p1, p0}, Lcom/join/mgps/dialog/z0$a;->b(Lcom/join/mgps/dialog/z0;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/dialog/q;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 4
    invoke-virtual {p0, p0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public p(Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/z0;->v:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/z0;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/z0;->t:Ljava/lang/String;

    return-void
.end method

.method public s(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/z0;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/z0;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public u(Lcom/join/mgps/dialog/z0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/z0;->r:Lcom/join/mgps/dialog/z0$a;

    return-void
.end method

.method public v(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dialog/z0;->u:I

    return-void
.end method

.method public w(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/z0;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/z0;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

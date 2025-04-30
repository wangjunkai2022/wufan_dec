.class public Lcom/join/mgps/adapter/m3;
.super Landroid/widget/BaseAdapter;
.source "MyGameAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/m3$e;,
        Lcom/join/mgps/adapter/m3$f;,
        Lcom/join/mgps/adapter/m3$g;,
        Lcom/join/mgps/adapter/m3$i;,
        Lcom/join/mgps/adapter/m3$h;,
        Lcom/join/mgps/adapter/m3$j;,
        Lcom/join/mgps/adapter/m3$d;
    }
.end annotation


# static fields
.field public static final h:I = 0x0

.field public static final i:I = 0x1

.field public static final j:I = 0x2

.field public static final k:I = 0x3

.field public static final l:I = 0x4


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/lang/String;

.field c:Z

.field d:Z

.field e:I

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/m3$f;",
            ">;"
        }
    .end annotation
.end field

.field g:Lcom/join/mgps/adapter/m3$e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/join/mgps/adapter/m3;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/adapter/m3;->c:Z

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/adapter/m3;->d:Z

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/adapter/m3;->e:I

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/m3;->f:Ljava/util/List;

    .line 7
    iput-object p1, p0, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    return-void
.end method

.method private synthetic A(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/m3;->g:Lcom/join/mgps/adapter/m3$e;

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/join/mgps/adapter/m3$e;->Y(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p2

    iget-object v0, p0, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivityBYDownloadTAsk(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    :goto_0
    return-void
.end method

.method private synthetic B(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/m3;->g:Lcom/join/mgps/adapter/m3$e;

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/join/mgps/adapter/m3$e;->I(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static synthetic C(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic D(ZLcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    iget-object p4, p0, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p4, v0}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    iget-object p4, p0, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p4, p2}, Lcom/join/android/app/common/utils/APKUtils;->c0(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/m3;->l(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 4
    invoke-static {p2}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/adapter/m3;->notifyDataSetChanged()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/m3;->l(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 7
    invoke-static {p2}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/adapter/m3;->notifyDataSetChanged()V

    .line 9
    :goto_0
    invoke-virtual {p3}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic E(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/view/View;)Z
    .locals 7

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/m3;->g:Lcom/join/mgps/adapter/m3$e;

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/join/mgps/adapter/m3$e;->K(Ljava/lang/String;)V

    return v0

    .line 3
    :cond_0
    new-instance p2, Lcom/join/mgps/customview/t;

    iget-object v1, p0, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    const v2, 0x7f120176

    invoke-direct {p2, v1, v2}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0c011f

    .line 4
    invoke-virtual {p2, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x7f09036b

    .line 5
    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f09100a

    .line 6
    invoke-virtual {p2, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f09036e

    .line 7
    invoke-virtual {p2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "\u5220\u9664\u6e38\u620f"

    .line 8
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    .line 9
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u5220\u9664"

    if-eqz v4, :cond_2

    .line 10
    sget-object v6, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 11
    iget-object v2, p0, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v2

    iget-object v4, p0, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "\u4f60\u786e\u5b9a\u8981\u5378\u8f7d\u8be5\u6e38\u620f\uff1f"

    .line 12
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "\u5378\u8f7d"

    .line 13
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string v2, "\u4f60\u786e\u5b9a\u8981\u5220\u9664\u8be5\u6e38\u620f\uff1f"

    .line 14
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const-string v4, "\u4f60\u786e\u5b9a\u8981\u5220\u9664\u8be5\u6e38\u620f\u53ca\u6587\u4ef6\uff1f"

    .line 16
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const v3, 0x7f090365

    .line 18
    invoke-virtual {p2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 19
    new-instance v4, Lcom/join/mgps/adapter/c3;

    invoke-direct {v4, p2}, Lcom/join/mgps/adapter/c3;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    new-instance v3, Lcom/join/mgps/adapter/i3;

    invoke-direct {v3, p0, v2, p1, p2}, Lcom/join/mgps/adapter/i3;-><init>(Lcom/join/mgps/adapter/m3;ZLcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/app/Dialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    return v0
.end method

.method private static synthetic F(Landroid/view/animation/AlphaAnimation;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/animation/AlphaAnimation;->start()V

    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/adapter/m3;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/m3;->A(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/join/mgps/adapter/m3;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/m3;->B(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/join/mgps/adapter/m3;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/m3;->x(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/join/mgps/adapter/m3;Lcom/join/mgps/adapter/m3$i;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/m3;->y(Lcom/join/mgps/adapter/m3$i;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/join/mgps/adapter/m3;->C(Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Landroid/view/animation/AlphaAnimation;)V
    .locals 0

    invoke-static {p0}, Lcom/join/mgps/adapter/m3;->F(Landroid/view/animation/AlphaAnimation;)V

    return-void
.end method

.method public static synthetic g(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/join/mgps/adapter/m3;->z(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcom/join/mgps/adapter/m3;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/m3;->w(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/join/mgps/adapter/m3;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/m3;->E(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lcom/join/mgps/adapter/m3;ZLcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/join/mgps/adapter/m3;->D(ZLcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method

.method private p(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/m3$g;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p2, Lcom/join/mgps/adapter/m3$g;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/m3$g;-><init>(Lcom/join/mgps/adapter/m3;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0218

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f090304

    .line 4
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/m3$g;->a:Landroid/widget/TextView;

    .line 5
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    .line 6
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/m3;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 7
    iget-object p3, p3, Lcom/join/mgps/adapter/m3$g;->a:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5171"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\u6b3e\u6e38\u620f"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method private q(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/m3$h;

    goto/16 :goto_0

    .line 2
    :cond_0
    new-instance p2, Lcom/join/mgps/adapter/m3$h;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/m3$h;-><init>(Lcom/join/mgps/adapter/m3;)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0219

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v1, 0x7f090687

    .line 4
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v1, p2, Lcom/join/mgps/adapter/m3$h;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v1, 0x7f090b2b

    .line 5
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p2, Lcom/join/mgps/adapter/m3$h;->k:Landroid/view/View;

    const v1, 0x7f090c59

    .line 6
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p2, Lcom/join/mgps/adapter/m3$h;->b:Landroid/widget/ProgressBar;

    const v1, 0x7f090340

    .line 7
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/join/mgps/adapter/m3$h;->c:Landroid/widget/TextView;

    const v1, 0x7f090ea5

    .line 8
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/join/mgps/adapter/m3$h;->d:Landroid/widget/TextView;

    const v1, 0x7f0900a3

    .line 9
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/join/mgps/adapter/m3$h;->e:Landroid/widget/TextView;

    const v1, 0x7f09076f

    .line 10
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/join/mgps/adapter/m3$h;->f:Landroid/widget/TextView;

    const v1, 0x7f090acd

    .line 11
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/join/mgps/adapter/m3$h;->g:Landroid/widget/TextView;

    const v1, 0x7f090304

    .line 12
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/join/mgps/adapter/m3$h;->h:Landroid/widget/TextView;

    const v1, 0x7f090a7b

    .line 13
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p2, Lcom/join/mgps/adapter/m3$h;->i:Landroid/view/View;

    const v1, 0x7f0904e4

    .line 14
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p2, Lcom/join/mgps/adapter/m3$h;->j:Landroid/view/View;

    .line 15
    iput-object p3, p2, Lcom/join/mgps/adapter/m3$h;->l:Landroid/view/View;

    .line 16
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v7, p3

    move-object p3, p2

    move-object p2, v7

    .line 17
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/m3;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v1, :cond_1

    return-object p2

    .line 18
    :cond_1
    iget-object v2, p3, Lcom/join/mgps/adapter/m3$h;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 19
    iget-object v2, p3, Lcom/join/mgps/adapter/m3$h;->g:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    .line 21
    iget-object v4, p3, Lcom/join/mgps/adapter/m3$h;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v5

    long-to-int v6, v5

    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_1

    .line 22
    :cond_2
    iget-object v4, p3, Lcom/join/mgps/adapter/m3$h;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_1
    const/4 v4, 0x5

    if-ne v2, v4, :cond_4

    .line 23
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isOpen()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p3, Lcom/join/mgps/adapter/m3$h;->k:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 24
    :cond_3
    iget-object v2, p3, Lcom/join/mgps/adapter/m3$h;->k:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 25
    :cond_4
    iget-object v2, p3, Lcom/join/mgps/adapter/m3$h;->k:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 26
    :goto_2
    iget-boolean v2, p0, Lcom/join/mgps/adapter/m3;->c:Z

    if-eqz v2, :cond_6

    .line 27
    iget-object v2, p0, Lcom/join/mgps/adapter/m3;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/join/mgps/adapter/m3;->b:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 28
    iput p1, p0, Lcom/join/mgps/adapter/m3;->e:I

    .line 29
    iget-object v2, p3, Lcom/join/mgps/adapter/m3$h;->j:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/join/mgps/adapter/m3;->Q(Landroid/view/View;)V

    .line 30
    iput-boolean v0, p0, Lcom/join/mgps/adapter/m3;->c:Z

    goto :goto_3

    .line 31
    :cond_5
    iget-object v2, p3, Lcom/join/mgps/adapter/m3$h;->j:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 32
    iget-object v2, p3, Lcom/join/mgps/adapter/m3$h;->j:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    goto :goto_3

    .line 33
    :cond_6
    iget v2, p0, Lcom/join/mgps/adapter/m3;->e:I

    if-ne v2, p1, :cond_7

    goto :goto_3

    .line 34
    :cond_7
    iget-object v2, p3, Lcom/join/mgps/adapter/m3$h;->j:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 35
    iget-object v2, p3, Lcom/join/mgps/adapter/m3$h;->j:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 36
    :goto_3
    invoke-virtual {p0, p3, v1}, Lcom/join/mgps/adapter/m3;->L(Lcom/join/mgps/adapter/m3$h;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 37
    iget-object v2, p0, Lcom/join/mgps/adapter/m3;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_8

    iget-object v2, p0, Lcom/join/mgps/adapter/m3;->f:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/m3$f;

    iget-boolean p1, p1, Lcom/join/mgps/adapter/m3$f;->c:Z

    if-eqz p1, :cond_8

    .line 38
    iget-object p1, p3, Lcom/join/mgps/adapter/m3$h;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 39
    iget-object p1, p3, Lcom/join/mgps/adapter/m3$h;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 40
    iget-object p1, p3, Lcom/join/mgps/adapter/m3$h;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 41
    iget-object p1, p3, Lcom/join/mgps/adapter/m3$h;->e:Landroid/widget/TextView;

    const-string v0, "\u6dfb\u52a0\u684c\u9762"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object p1, p3, Lcom/join/mgps/adapter/m3$h;->e:Landroid/widget/TextView;

    const v0, 0x7f080a6a

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 43
    iget-object p1, p3, Lcom/join/mgps/adapter/m3$h;->e:Landroid/widget/TextView;

    const v0, -0x767677

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44
    iget-object p1, p3, Lcom/join/mgps/adapter/m3$h;->e:Landroid/widget/TextView;

    new-instance p3, Lcom/join/mgps/adapter/g3;

    invoke-direct {p3, p0, v1}, Lcom/join/mgps/adapter/g3;-><init>(Lcom/join/mgps/adapter/m3;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 45
    :cond_8
    invoke-virtual {p0, v1}, Lcom/join/mgps/adapter/m3;->k(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 46
    iget-object p1, p3, Lcom/join/mgps/adapter/m3$h;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    iget-object p1, p3, Lcom/join/mgps/adapter/m3$h;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 48
    iget-object p1, p0, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/join/mgps/Util/UtilsMy;->X0(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_9

    .line 49
    iget-object v2, p3, Lcom/join/mgps/adapter/m3$h;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50
    iget-object v0, p3, Lcom/join/mgps/adapter/m3$h;->h:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 51
    :cond_9
    iget-object p1, p3, Lcom/join/mgps/adapter/m3$h;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    :goto_4
    iget-object p1, p3, Lcom/join/mgps/adapter/m3$h;->d:Landroid/widget/TextView;

    new-instance p3, Lcom/join/mgps/adapter/m3$a;

    invoke-direct {p3, p0, v1}, Lcom/join/mgps/adapter/m3$a;-><init>(Lcom/join/mgps/adapter/m3;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 53
    :cond_a
    iget-object p1, p3, Lcom/join/mgps/adapter/m3$h;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 54
    iget-object p1, p3, Lcom/join/mgps/adapter/m3$h;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    iget-object p1, p3, Lcom/join/mgps/adapter/m3$h;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_5
    return-object p2
.end method

.method private r(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/m3$i;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p2, Lcom/join/mgps/adapter/m3$i;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/m3$i;-><init>(Lcom/join/mgps/adapter/m3;)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c021a

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v1, 0x7f090688

    .line 4
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v1, p2, Lcom/join/mgps/adapter/m3$i;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v1, 0x7f090689

    .line 5
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v1, p2, Lcom/join/mgps/adapter/m3$i;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v1, 0x7f09068a

    .line 6
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v1, p2, Lcom/join/mgps/adapter/m3$i;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v1, 0x7f090304

    .line 7
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/join/mgps/adapter/m3$i;->d:Landroid/widget/TextView;

    .line 8
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v7, p3

    move-object p3, p2

    move-object p2, v7

    .line 9
    :goto_0
    new-instance v1, Lcom/join/mgps/adapter/d3;

    invoke-direct {v1, p0}, Lcom/join/mgps/adapter/d3;-><init>(Lcom/join/mgps/adapter/m3;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/m3;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    return-object p2

    .line 11
    :cond_1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/m3;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/mygame/data/DataGameListBean;

    .line 12
    new-instance v1, Lcom/join/mgps/adapter/h3;

    invoke-direct {v1, p0, p3}, Lcom/join/mgps/adapter/h3;-><init>(Lcom/join/mgps/adapter/m3;Lcom/join/mgps/adapter/m3$i;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/activity/mygame/data/DataGameListBean;->getGameList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x3

    new-array v3, v2, [Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 14
    iget-object v4, p3, Lcom/join/mgps/adapter/m3$i;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    aput-object v4, v3, v0

    iget-object v4, p3, Lcom/join/mgps/adapter/m3$i;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    iget-object v5, p3, Lcom/join/mgps/adapter/m3$i;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    :goto_1
    const/16 v5, 0x8

    if-ge v4, v2, :cond_3

    .line 15
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lt v4, v6, :cond_2

    .line 16
    aget-object v6, v3, v4

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 17
    :cond_2
    aget-object v5, v3, v4

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 18
    aget-object v5, v3, v4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/activity/mygame/data/DataGameListBean;->getGameCount()I

    move-result p1

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    :goto_3
    if-le p1, v2, :cond_5

    .line 20
    iget-boolean p1, p0, Lcom/join/mgps/adapter/m3;->d:Z

    if-eqz p1, :cond_5

    .line 21
    iget-object p1, p3, Lcom/join/mgps/adapter/m3$i;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 22
    :cond_5
    iget-object p1, p3, Lcom/join/mgps/adapter/m3$i;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    return-object p2
.end method

.method private s(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/m3$h;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p2, Lcom/join/mgps/adapter/m3$h;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/m3$h;-><init>(Lcom/join/mgps/adapter/m3;)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c021b

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v1, 0x7f090687

    .line 4
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v1, p2, Lcom/join/mgps/adapter/m3$h;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v1, 0x7f090c59

    .line 5
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p2, Lcom/join/mgps/adapter/m3$h;->b:Landroid/widget/ProgressBar;

    const v1, 0x7f090340

    .line 6
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/join/mgps/adapter/m3$h;->c:Landroid/widget/TextView;

    const v1, 0x7f090ea5

    .line 7
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/join/mgps/adapter/m3$h;->d:Landroid/widget/TextView;

    const v1, 0x7f09076f

    .line 8
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/join/mgps/adapter/m3$h;->f:Landroid/widget/TextView;

    const v1, 0x7f090acd

    .line 9
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/join/mgps/adapter/m3$h;->g:Landroid/widget/TextView;

    const v1, 0x7f090a7b

    .line 10
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p2, Lcom/join/mgps/adapter/m3$h;->i:Landroid/view/View;

    .line 11
    iput-object p3, p2, Lcom/join/mgps/adapter/m3$h;->l:Landroid/view/View;

    .line 12
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    .line 13
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/m3;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez p1, :cond_1

    return-object p2

    .line 14
    :cond_1
    iget-object v1, p3, Lcom/join/mgps/adapter/m3$h;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 15
    iget-object v1, p3, Lcom/join/mgps/adapter/m3$h;->g:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 17
    iget-object v0, p3, Lcom/join/mgps/adapter/m3$h;->b:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_1

    .line 18
    :cond_2
    iget-object v1, p3, Lcom/join/mgps/adapter/m3$h;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 19
    :goto_1
    invoke-virtual {p0, p3, p1}, Lcom/join/mgps/adapter/m3;->L(Lcom/join/mgps/adapter/m3$h;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-object p2
.end method

.method private t(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/m3$j;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p2, Lcom/join/mgps/adapter/m3$j;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/m3$j;-><init>(Lcom/join/mgps/adapter/m3;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c021c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f090304

    .line 4
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/m3$j;->a:Landroid/widget/TextView;

    .line 5
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    .line 6
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/m3;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 7
    iget-object p3, p3, Lcom/join/mgps/adapter/m3$j;->a:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\u6b3e\u6e38\u620f\u9700\u66f4\u65b0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    sget-object p1, Lcom/join/mgps/adapter/j3;->a:Lcom/join/mgps/adapter/j3;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method private synthetic w(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/m3;->g:Lcom/join/mgps/adapter/m3$e;

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2, p1}, Lcom/join/mgps/adapter/m3$e;->s0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    :cond_0
    return-void
.end method

.method private synthetic x(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity_$IntentBuilder_;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 2
    iget-object p1, p0, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    instance-of v0, p1, Lcom/join/mgps/activity/MGMainActivity;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object v0, Lcom/papa/sim/statistic/Event;->onclickTabGuessuLike:Lcom/papa/sim/statistic/Event;

    new-instance v1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    instance-of v0, p1, Lcom/join/mgps/activity/MyGameManagerActivity;

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object v0, Lcom/papa/sim/statistic/Event;->onclickCentreGuessuLike:Lcom/papa/sim/statistic/Event;

    new-instance v1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    :cond_1
    return-void
.end method

.method private synthetic y(Lcom/join/mgps/adapter/m3$i;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity_$IntentBuilder_;

    move-result-object p2

    invoke-virtual {p2}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 2
    iget-object p2, p0, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    instance-of v0, p2, Lcom/join/mgps/activity/MGMainActivity;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p2}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p2

    sget-object v0, Lcom/papa/sim/statistic/Event;->onclickTabGuessuLike:Lcom/papa/sim/statistic/Event;

    new-instance v1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {p2, v0, v1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    instance-of v0, p2, Lcom/join/mgps/activity/MyGameManagerActivity;

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p2}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p2

    sget-object v0, Lcom/papa/sim/statistic/Event;->onclickCentreGuessuLike:Lcom/papa/sim/statistic/Event;

    new-instance v1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {p2, v0, v1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    :cond_1
    const/4 p2, 0x0

    .line 6
    iput-boolean p2, p0, Lcom/join/mgps/adapter/m3;->d:Z

    .line 7
    iget-object p1, p1, Lcom/join/mgps/adapter/m3$i;->d:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private static synthetic z(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/join/mgps/activity/MyGameUpdateManagerActivity_;->k1(Landroid/content/Context;)Lcom/join/mgps/activity/MyGameUpdateManagerActivity_$k;

    move-result-object p0

    invoke-virtual {p0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method


# virtual methods
.method G()V
    .locals 10

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lg1/f;->T(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_3

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-wide v4, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    cmp-long v7, v4, v2

    if-eqz v7, :cond_1

    .line 4
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFinishTime()J

    move-result-wide v7

    cmp-long v9, v4, v7

    if-gez v9, :cond_0

    .line 5
    :cond_1
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFinishTime()J

    move-result-wide v4

    move-object v1, v6

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_a

    .line 6
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/adapter/m3;->b:Ljava/lang/String;

    goto :goto_3

    .line 7
    :cond_3
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->d()Ljava/util/List;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 9
    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 10
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 11
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-gt v5, v6, :cond_4

    .line 12
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 13
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-wide v4, v2

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 14
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_6

    cmp-long v7, v4, v2

    if-eqz v7, :cond_7

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getOpenTime()J

    move-result-wide v7

    cmp-long v9, v4, v7

    if-gez v9, :cond_6

    .line 15
    :cond_7
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getOpenTime()J

    move-result-wide v4

    move-object v1, v6

    goto :goto_2

    :cond_8
    if-eqz v1, :cond_9

    .line 16
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/adapter/m3;->b:Ljava/lang/String;

    goto :goto_3

    :cond_9
    const-string v0, ""

    .line 17
    iput-object v0, p0, Lcom/join/mgps/adapter/m3;->b:Ljava/lang/String;

    :cond_a
    :goto_3
    return-void
.end method

.method H(Landroid/widget/TextView;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 10

    if-eqz p2, :cond_8

    .line 1
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->e0(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 3
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    move-result v1

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->l0(ILjava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    const v1, 0x7f080a67

    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v0

    .line 5
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v0

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 6
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string v0, "\u66f4\u65b0"

    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, -0x8d57ef

    .line 8
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    :cond_2
    const v0, 0x7f080a6e

    .line 9
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1100d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, -0xa81da

    .line 11
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 12
    :cond_3
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 13
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_status()I

    move-result v0

    const/4 v1, 0x1

    .line 14
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    const v3, -0xc35b03

    .line 15
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 16
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    move-result v4

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->l0(ILjava/lang/String;)I

    move-result v4

    if-lez v4, :cond_4

    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x3

    const v6, 0x7f080a62

    const/4 v7, 0x2

    if-ne v0, v5, :cond_5

    if-nez v4, :cond_5

    .line 17
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1100d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x41400000    # 12.0f

    .line 18
    invoke-virtual {p1, v7, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 19
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_2

    :cond_5
    if-ne v0, v7, :cond_6

    if-nez v4, :cond_6

    const-string v0, "\u5373\u5c06\u5f00\u653e"

    .line 21
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071125

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    const v0, -0x767677

    .line 23
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 24
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    const v0, 0x7f080a6a

    .line 25
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    .line 26
    :cond_6
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    move-result v0

    if-lez v0, :cond_7

    .line 27
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f110261

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    move-result v8

    int-to-double v8, v8

    invoke-static {v8, v9}, Lcom/join/mgps/Util/d2;->l(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-virtual {v0, v4, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 28
    :cond_7
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1100d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const/high16 v0, 0x41500000    # 13.0f

    .line 29
    invoke-virtual {p1, v7, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 30
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 32
    :goto_2
    new-instance v0, Lcom/join/mgps/adapter/m3$d;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/m3$d;-><init>(Lcom/join/mgps/adapter/m3;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public I(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/adapter/m3;->c:Z

    return-void
.end method

.method public J(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/adapter/m3;->d:Z

    return-void
.end method

.method K(Landroid/widget/TextView;I)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ge p2, v0, :cond_1

    const/16 p2, 0x8

    .line 1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/16 v4, 0xa

    const v5, 0x7f071194

    const/4 v6, 0x0

    if-ge p2, v4, :cond_2

    .line 5
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 6
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 7
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    invoke-virtual {p1, v6, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v2, 0x7f080888

    .line 9
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 10
    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    :cond_2
    const/4 v4, -0x2

    .line 11
    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 12
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/16 v4, 0x11

    .line 13
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 14
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    invoke-virtual {p1, v6, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v3, 0x7f0807ce

    .line 16
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const v3, 0x7f070f87

    .line 17
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 18
    invoke-virtual {p1, v2, v1, v2, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 19
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method L(Lcom/join/mgps/adapter/m3$h;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    move-result v1

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->l0(ILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    const/16 v0, 0x2b

    :cond_1
    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    const/16 v1, 0xc

    if-eq v0, v1, :cond_4

    const/16 v1, 0xd

    if-eq v0, v1, :cond_3

    .line 3
    invoke-static {p2}, Lcom/join/mgps/Util/UtilsMy;->q1(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_2
    iget-object v1, p1, Lcom/join/mgps/adapter/m3$h;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->c:Landroid/widget/TextView;

    const-string v1, "#FFA8A8A8"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 8
    :cond_3
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->c:Landroid/widget/TextView;

    const-string v1, "\u89e3\u538b\u5931\u8d25"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->c:Landroid/widget/TextView;

    const-string v1, "#FFFF4D4D"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 10
    :cond_4
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->c:Landroid/widget/TextView;

    const-string v1, "\u89e3\u538b\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 11
    :cond_5
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "% \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    :goto_1
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->l:Landroid/view/View;

    new-instance v1, Lcom/join/mgps/adapter/e3;

    invoke-direct {v1, p0, p2}, Lcom/join/mgps/adapter/e3;-><init>(Lcom/join/mgps/adapter/m3;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->i:Landroid/view/View;

    new-instance v1, Lcom/join/mgps/adapter/f3;

    invoke-direct {v1, p0, p2}, Lcom/join/mgps/adapter/f3;-><init>(Lcom/join/mgps/adapter/m3;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->l:Landroid/view/View;

    new-instance v1, Lcom/join/mgps/adapter/k3;

    invoke-direct {v1, p0, p2}, Lcom/join/mgps/adapter/k3;-><init>(Lcom/join/mgps/adapter/m3;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/m3;->N(Lcom/join/mgps/adapter/m3$h;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method M(Landroid/widget/TextView;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f080a62

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string v0, "\u5f00\u59cb"

    .line 3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    new-instance v0, Lcom/join/mgps/adapter/m3$d;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/m3$d;-><init>(Lcom/join/mgps/adapter/m3;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method N(Lcom/join/mgps/adapter/m3$h;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 13

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v4}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 3
    :goto_1
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 4
    :cond_3
    iget-object v4, p1, Lcom/join/mgps/adapter/m3$h;->f:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object v4, p1, Lcom/join/mgps/adapter/m3$h;->f:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz v0, :cond_4

    .line 6
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->f:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p2}, Lcom/join/mgps/adapter/m3;->M(Landroid/widget/TextView;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_6

    .line 7
    :cond_4
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    .line 8
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    mul-double v4, v4, v6

    mul-double v4, v4, v6

    double-to-long v4, v4

    .line 9
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    move-result v1

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/join/mgps/Util/UtilsMy;->l0(ILjava/lang/String;)I

    move-result v1

    const/16 v6, 0x2b

    if-lez v1, :cond_5

    const/16 v0, 0x2b

    :cond_5
    const v1, 0x7f06002a

    const v7, 0x7f080a62

    if-eqz v0, :cond_d

    const/16 v8, 0x1b

    const-string v9, "\u6682\u505c\u4e2d"

    if-eq v0, v8, :cond_c

    const/16 v8, 0x30

    if-eq v0, v8, :cond_b

    const/4 v8, 0x2

    const-wide/16 v10, 0x0

    const-string v12, "/"

    if-eq v0, v8, :cond_9

    const/4 v8, 0x3

    if-eq v0, v8, :cond_7

    const/4 v8, 0x5

    if-eq v0, v8, :cond_6

    const/4 v8, 0x6

    if-eq v0, v8, :cond_7

    const/4 v8, 0x7

    if-eq v0, v8, :cond_d

    const/16 v8, 0x2a

    if-eq v0, v8, :cond_6

    if-eq v0, v6, :cond_d

    const v2, 0x7f060030

    const v3, 0x7f080a67

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    .line 10
    :pswitch_0
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->c:Landroid/widget/TextView;

    const-string v1, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->b:Landroid/widget/ProgressBar;

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 12
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->f:Landroid/widget/TextView;

    const v1, 0x7f080a7b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 13
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->f:Landroid/widget/TextView;

    const-string v1, "\u89e3\u538b"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_6

    .line 15
    :pswitch_1
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->c:Landroid/widget/TextView;

    const-string v1, "\u89e3\u538b\u4e2d.."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->b:Landroid/widget/ProgressBar;

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 17
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->f:Landroid/widget/TextView;

    const v1, 0x7f0803ca

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 18
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->f:Landroid/widget/TextView;

    const-string v1, "\u89e3\u538b\u4e2d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->f:Landroid/widget/TextView;

    const v1, -0x4a4a4b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_6

    .line 20
    :pswitch_2
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 21
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->f:Landroid/widget/TextView;

    const-string v1, "\u5b89\u88c5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_6

    .line 23
    :pswitch_3
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 24
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->f:Landroid/widget/TextView;

    const-string v2, "\u7b49\u5f85"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 26
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    :try_start_0
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->b:Landroid/widget/ProgressBar;

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 29
    :goto_2
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->c:Landroid/widget/TextView;

    const-string v1, "\u7b49\u5f85\u4e2d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 30
    :pswitch_4
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 31
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->f:Landroid/widget/TextView;

    const-string v1, "\u66f4\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_6

    .line 33
    :cond_6
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->f:Landroid/widget/TextView;

    const v1, 0x7f080a6e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 34
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f1100d2

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f060033

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v3, :cond_e

    .line 36
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 37
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->f:Landroid/widget/TextView;

    const-string v1, "\u5df2\u5b89\u88c5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->f:Landroid/widget/TextView;

    const v1, 0x7f080a6a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 39
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 40
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->f:Landroid/widget/TextView;

    const-string v1, "#A1A1A1"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_6

    .line 41
    :cond_7
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 42
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->f:Landroid/widget/TextView;

    const-string v2, "\u7ee7\u7eed"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44
    :try_start_1
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v0

    cmp-long v2, v0, v10

    if-nez v2, :cond_8

    .line 45
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 46
    :cond_8
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    :goto_3
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->b:Landroid/widget/ProgressBar;

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 49
    :goto_4
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 50
    :cond_9
    invoke-static {p2}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 51
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 52
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->f:Landroid/widget/TextView;

    const-string v2, "\u6682\u505c"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v0

    cmp-long v2, v0, v10

    if-nez v2, :cond_a

    .line 55
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 56
    :cond_a
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :goto_5
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->b:Landroid/widget/ProgressBar;

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_6

    .line 58
    :cond_b
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 59
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->f:Landroid/widget/TextView;

    const-string v2, "\u5b89\u88c5\u4e2d"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6

    .line 61
    :cond_c
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 62
    :cond_d
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 63
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    move-result v0

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/join/mgps/Util/UtilsMy;->l0(ILjava/lang/String;)I

    .line 64
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->f:Landroid/widget/TextView;

    invoke-static {v0, v0, p2}, Lcom/join/mgps/Util/UtilsMy;->l2(Landroid/widget/TextView;Landroid/view/View;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 65
    iget-object v0, p1, Lcom/join/mgps/adapter/m3$h;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    :cond_e
    :goto_6
    iget-object p1, p1, Lcom/join/mgps/adapter/m3$h;->f:Landroid/widget/TextView;

    new-instance v0, Lcom/join/mgps/adapter/m3$d;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/m3$d;-><init>(Lcom/join/mgps/adapter/m3;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public O(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/m3$f;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/m3;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/m3;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method

.method public P(Lcom/join/mgps/adapter/m3$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/m3;->g:Lcom/join/mgps/adapter/m3$e;

    return-void
.end method

.method public Q(Landroid/view/View;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x7d0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 3
    new-instance v1, Lcom/join/mgps/adapter/m3$b;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/adapter/m3$b;-><init>(Lcom/join/mgps/adapter/m3;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 5
    new-instance v1, Lcom/join/mgps/adapter/l3;

    invoke-direct {v1, v0}, Lcom/join/mgps/adapter/l3;-><init>(Landroid/view/animation/AlphaAnimation;)V

    const-wide/16 v2, 0x96

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/m3;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/m3;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/adapter/m3;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/m3$f;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/m3$f;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/m3;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/adapter/m3;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/m3$f;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/m3$f;->b()I

    move-result p1

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/m3;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/m3;->t(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/m3;->r(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/m3;->q(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/m3;->s(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/m3;->p(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method k(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    return v0

    .line 2
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/join/mgps/Util/UtilsMy;->D1(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Lcom/join/mgps/pref/PrefDef_;

    iget-object v2, p0, Lcom/join/mgps/adapter/m3;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpGameSize()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getActual_size()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gtz v5, :cond_4

    .line 4
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method public l(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/php25/PDownload/d;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/join/mgps/enums/Dtype;->androidobb:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/join/mgps/enums/Dtype;->androiddata:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/join/mgps/enums/Dtype;->androidobbdata:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    :cond_1
    new-instance v0, Lcom/join/mgps/adapter/m3$c;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/m3$c;-><init>(Lcom/join/mgps/adapter/m3;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/m3;->m(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method public m(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/adapter/m3;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/adapter/m3$f;

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/adapter/m3$f;->b()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {v1}, Lcom/join/mgps/adapter/m3$f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/adapter/m3;->notifyDataSetChanged()V

    return-void
.end method

.method public n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/m3$f;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/m3;->f:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/m3;->f:Ljava/util/List;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/m3;->f:Ljava/util/List;

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/adapter/m3;->G()V

    .line 2
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public o()Lcom/join/mgps/adapter/m3$e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/m3;->g:Lcom/join/mgps/adapter/m3$e;

    return-object v0
.end method

.method public u()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/adapter/m3;->c:Z

    return v0
.end method

.method public v()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/adapter/m3;->d:Z

    return v0
.end method

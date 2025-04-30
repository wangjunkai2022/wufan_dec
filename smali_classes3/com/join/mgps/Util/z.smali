.class public Lcom/join/mgps/Util/z;
.super Ljava/lang/Object;
.source "DialogUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/Util/z$o0;,
        Lcom/join/mgps/Util/z$n0;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EBean;
    scope = .enum Lorg/androidannotations/annotations/EBean$Scope;->Singleton:Lorg/androidannotations/annotations/EBean$Scope;
.end annotation


# static fields
.field private static final k:Ljava/lang/String; = "customer_alert"


# instance fields
.field a:Landroid/app/Dialog;

.field b:Landroidx/appcompat/app/AlertDialog$Builder;

.field c:Lcom/join/mgps/dialog/b1;

.field d:Lcom/join/mgps/dialog/g1;

.field e:Lcom/join/mgps/dialog/k1;

.field f:Lcom/join/mgps/dialog/j1;

.field g:Lcom/join/mgps/dialog/e;

.field h:Lcom/join/mgps/activity/q0;

.field private i:Lcom/join/mgps/dialog/o1;

.field private j:Lcom/join/android/app/common/dialog/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/Util/z;->b:Landroidx/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method private synthetic H(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/Util/z;->R(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/Util/z;Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/Util/z;->H(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method static synthetic b(Lcom/join/mgps/Util/z;Lcom/join/mgps/dialog/o1;)Lcom/join/mgps/dialog/o1;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/z;->i:Lcom/join/mgps/dialog/o1;

    return-object p1
.end method

.method static synthetic c(Lcom/join/mgps/Util/z;)Lcom/join/android/app/common/dialog/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/Util/z;->j:Lcom/join/android/app/common/dialog/c;

    return-object p0
.end method


# virtual methods
.method public A(Landroid/content/Context;Z)Lcom/join/mgps/dialog/x0;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/x0;

    const v1, 0x7f120178

    invoke-direct {v0, p1, v1, p2}, Lcom/join/mgps/dialog/x0;-><init>(Landroid/content/Context;IZ)V

    return-object v0
.end method

.method public B(Landroid/content/Context;Lcom/join/mgps/Util/z$o0;)V
    .locals 7

    .line 1
    new-instance v0, Lcom/join/mgps/customview/t;

    const v1, 0x7f120176

    invoke-direct {v0, p1, v1}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    const p1, 0x7f0c0556

    .line 2
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(I)V

    const p1, 0x7f09100a

    .line 3
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v1, 0x7f09036e

    .line 4
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f09036b

    .line 5
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f090365

    .line 6
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 7
    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x14

    const/4 v6, 0x0

    .line 8
    invoke-virtual {v4, v5, v6, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 9
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "\u63d0\u793a"

    .line 10
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x11

    .line 11
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setGravity(I)V

    const-string p1, "\u4e3a\u4fdd\u8bc1\u70b9\u8bc4\u771f\u5b9e\u6027\uff0c\n\u8bf7\u5b89\u88c5\u6e38\u620f\u540e\u518d\u521b\u5efa\u70b9\u8bc4\u3002"

    .line 12
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x8

    .line 13
    invoke-virtual {v3, p1}, Landroid/widget/Button;->setVisibility(I)V

    const-string p1, "\u6211\u77e5\u9053\u4e86"

    .line 14
    invoke-virtual {v2, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 15
    new-instance p1, Lcom/join/mgps/Util/z$j;

    invoke-direct {p1, p0, v0, p2}, Lcom/join/mgps/Util/z$j;-><init>(Lcom/join/mgps/Util/z;Lcom/join/mgps/customview/t;Lcom/join/mgps/Util/z$o0;)V

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 17
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public C(Landroid/content/Context;)Lcom/join/mgps/dialog/n1;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/n1;

    const v1, 0x7f120176

    invoke-direct {v0, p1, v1}, Lcom/join/mgps/dialog/n1;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public D(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/b;

    const v1, 0x7f12014a

    invoke-direct {v0, p1, v1}, Lcom/join/mgps/dialog/b;-><init>(Landroid/content/Context;I)V

    const-string v1, "\u53d6\u6d88"

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->d(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    move-result-object v0

    const-string v1, "\u786e\u5b9a\u8981\u9000\u51fa\u7f16\u8f91\u5417\uff1f"

    .line 3
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->j(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    move-result-object v0

    const-string v1, "\u63d0\u793a"

    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->k(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/Util/z$h;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/Util/z$h;-><init>(Lcom/join/mgps/Util/z;Landroid/content/Context;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->i(Lcom/join/mgps/dialog/b$c;)Lcom/join/mgps/dialog/b;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public E(Landroid/content/Context;I)V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/b;

    const v1, 0x7f12014a

    invoke-direct {v0, p1, v1}, Lcom/join/mgps/dialog/b;-><init>(Landroid/content/Context;I)V

    const-string v1, "\u7a0d\u540e"

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->d(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    move-result-object v0

    const/16 v1, 0x8

    .line 3
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->e(I)Lcom/join/mgps/dialog/b;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    mul-int/lit8 v2, p2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const p2, 0x7f110275

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/dialog/b;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    move-result-object p1

    const-string p2, "\u77e5\u9053\u4e86"

    .line 5
    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/b;->j(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    move-result-object p1

    const-string p2, "\u63d0\u793a"

    .line 6
    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/b;->k(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    move-result-object p1

    new-instance p2, Lcom/join/mgps/Util/z$g;

    invoke-direct {p2, p0}, Lcom/join/mgps/Util/z$g;-><init>(Lcom/join/mgps/Util/z;)V

    .line 7
    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/b;->i(Lcom/join/mgps/dialog/b$c;)Lcom/join/mgps/dialog/b;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public F(Landroid/content/Context;)Lcom/join/mgps/dialog/y0;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/y0;

    const v1, 0x7f120178

    invoke-direct {v0, p1, v1}, Lcom/join/mgps/dialog/y0;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public G()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/z;->g:Lcom/join/mgps/dialog/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public I(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-virtual {v0}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/Util/z;->g:Lcom/join/mgps/dialog/e;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/join/mgps/Util/z$c0;

    sget-object v1, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-virtual {v1}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/Util/z$c0;-><init>(Lcom/join/mgps/Util/z;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/Util/z;->g:Lcom/join/mgps/dialog/e;

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dialog/e;->show()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/Util/z;->g:Lcom/join/mgps/dialog/e;

    invoke-virtual {v0, p1}, Lcom/join/mgps/dialog/e;->b(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public J(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;ZLjava/lang/String;)V
    .locals 9

    .line 1
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-virtual {v0}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    move-object v2, p1

    goto :goto_1

    :cond_2
    move-object v2, v0

    .line 3
    :goto_1
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v0, p1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isNoShowAddShortcut()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    invoke-static {v1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_3

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 6
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 7
    invoke-virtual {p2, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setNotCheckAddShortcut(Z)V

    .line 8
    invoke-static {v2, p2, v5, p4}, Lcom/join/mgps/Util/UtilsMy;->e3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;ILjava/lang/String;)V

    .line 9
    invoke-virtual {p2, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setNotCheckAddShortcut(Z)V

    return-void

    :cond_4
    if-eqz v3, :cond_5

    if-eqz p3, :cond_5

    .line 10
    invoke-virtual {p2, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setNotCheckAddShortcut(Z)V

    .line 11
    invoke-static {v2, p2, v5, p4}, Lcom/join/mgps/Util/UtilsMy;->e3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;ILjava/lang/String;)V

    .line 12
    invoke-virtual {p2, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setNotCheckAddShortcut(Z)V

    return-void

    .line 13
    :cond_5
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isOpen()Z

    move-result p3

    if-nez p3, :cond_6

    return-void

    .line 14
    :cond_6
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    move-result-object v5

    .line 15
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object p3

    .line 16
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v7

    .line 17
    invoke-static {v5}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    return-void

    .line 18
    :cond_7
    iget-object v1, p0, Lcom/join/mgps/Util/z;->j:Lcom/join/android/app/common/dialog/c;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 19
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/Util/z;->j:Lcom/join/android/app/common/dialog/c;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :catch_0
    :cond_8
    new-instance v8, Lcom/join/android/app/common/dialog/c;

    move-object v1, v8

    move-object v3, v7

    move-object v4, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/join/android/app/common/dialog/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    iput-object v8, p0, Lcom/join/mgps/Util/z;->j:Lcom/join/android/app/common/dialog/c;

    .line 21
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 22
    iget-object v1, p0, Lcom/join/mgps/Util/z;->j:Lcom/join/android/app/common/dialog/c;

    new-instance v2, Lcom/join/mgps/Util/z$e0;

    invoke-direct {v2, p0, p1, p3, v7}, Lcom/join/mgps/Util/z$e0;-><init>(Lcom/join/mgps/Util/z;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/join/android/app/common/dialog/c;->h(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object p3, p0, Lcom/join/mgps/Util/z;->j:Lcom/join/android/app/common/dialog/c;

    new-instance v1, Lcom/join/mgps/Util/z$f0;

    move-object v3, v1

    move-object v4, p0

    move-object v5, v0

    move-object v7, p1

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/join/mgps/Util/z$f0;-><init>(Lcom/join/mgps/Util/z;Lcom/join/mgps/pref/PrefDef_;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Lcom/join/android/app/common/dialog/c;->g(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public K(Landroid/content/Context;Lcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 6

    .line 1
    new-instance v0, Lcom/join/mgps/customview/t;

    const v1, 0x7f120176

    invoke-direct {v0, p1, v1}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0c05ca

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x7f090364

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f09036b

    .line 4
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f09100a

    .line 5
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f09036e

    .line 6
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, "\u66f4\u65b0\u63d0\u793a"

    .line 7
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u3010"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\u3011\u53ef\u66f4\u65b0\u7248\u672c"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "\u7acb\u5373\u66f4\u65b0"

    .line 9
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "\u76f4\u63a5\u542f\u52a8"

    .line 10
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    new-instance v3, Lcom/join/mgps/Util/z$c;

    invoke-direct {v3, p0, p1, p2, v0}, Lcom/join/mgps/Util/z$c;-><init>(Lcom/join/mgps/Util/z;Landroid/content/Context;Lcom/join/mgps/dto/CommonGameInfoBean;Lcom/join/mgps/customview/t;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    new-instance v2, Lcom/join/mgps/Util/z$d;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/join/mgps/Util/z$d;-><init>(Lcom/join/mgps/Util/z;Landroid/content/Context;Lcom/join/mgps/dto/CommonGameInfoBean;Lcom/join/mgps/customview/t;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public L(Landroid/content/Context;)Lcom/join/mgps/customview/t;
    .locals 7

    .line 1
    new-instance v0, Lcom/join/mgps/customview/t;

    const v1, 0x7f120176

    invoke-direct {v0, p1, v1}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0c009a

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x7f090364

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f09036b

    .line 4
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f09100a

    .line 5
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f09036e

    .line 6
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090370

    .line 7
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v6, "\u5b8c\u5584\u8d44\u6599"

    .line 8
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f1103b5

    .line 9
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x8

    .line 10
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setVisibility(I)V

    const-string p1, "\u53bb\u5b8c\u5584"

    .line 11
    invoke-virtual {v2, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "\u4e0b\u6b21\u518d\u8bf4"

    .line 12
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 13
    new-instance p1, Lcom/join/mgps/Util/z$l;

    invoke-direct {p1, p0, v0}, Lcom/join/mgps/Util/z$l;-><init>(Lcom/join/mgps/Util/z;Lcom/join/mgps/customview/t;)V

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    new-instance p1, Lcom/join/mgps/Util/z$m;

    invoke-direct {p1, p0, v0}, Lcom/join/mgps/Util/z$m;-><init>(Lcom/join/mgps/Util/z;Lcom/join/mgps/customview/t;)V

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public M(Landroid/content/Context;)Lcom/join/mgps/customview/t;
    .locals 7

    .line 1
    new-instance v0, Lcom/join/mgps/customview/t;

    const v1, 0x7f120176

    invoke-direct {v0, p1, v1}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0c009a

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x7f090364

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f09036b

    .line 4
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f09100a

    .line 5
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f09036e

    .line 6
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090370

    .line 7
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v6, "\u63d0\u793a"

    .line 8
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "\u94dc\u677f\u4e0d\u8db3\uff0c\u6210\u4e3a\u609f\u996d\u4f1a\u5458\u6bcf\u5929\u5373\u53ef\u9886\u53d6300\u94dc\u677f\u54e6~"

    .line 9
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x8

    .line 10
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v3, "\u6211\u8981VIP\u7279\u6743"

    .line 11
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0602aa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    const-string v3, "\u53d6\u6d88"

    .line 13
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 14
    new-instance v3, Lcom/join/mgps/Util/z$n;

    invoke-direct {v3, p0, p1, v0}, Lcom/join/mgps/Util/z$n;-><init>(Lcom/join/mgps/Util/z;Landroid/content/Context;Lcom/join/mgps/customview/t;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    new-instance p1, Lcom/join/mgps/Util/z$o;

    invoke-direct {p1, p0, v0}, Lcom/join/mgps/Util/z$o;-><init>(Lcom/join/mgps/Util/z;Lcom/join/mgps/customview/t;)V

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public N(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "customer_alert"

    .line 2
    invoke-virtual {p1, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 4
    :cond_0
    invoke-static {p2, p3, p4, p5}, Lcom/join/mgps/dialog/CustomerAlertDialog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dialog/CustomerAlertDialog;

    move-result-object p2

    .line 5
    invoke-virtual {p2, p1, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    return-void
.end method

.method public O(Landroid/content/Context;ILl1/a;)Lcom/join/mgps/customview/t;
    .locals 11

    .line 1
    new-instance v0, Lcom/join/mgps/customview/t;

    const v1, 0x7f120176

    invoke-direct {v0, p1, v1}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    const p1, 0x7f0c009a

    .line 2
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(I)V

    const p1, 0x7f090364

    .line 3
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const v1, 0x7f09036b

    .line 4
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f09100a

    .line 5
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f09036e

    .line 6
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090370

    .line 7
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090b2e

    .line 8
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const/4 v6, 0x1

    const-string v7, "\u6211\u77e5\u9053\u4e86"

    const-string v8, "\u6e38\u620f\u65b0\u52a8\u6001\u63d0\u9192\u7559\u610f\u901a\u77e5\u680f\u548c\u6d88\u606f\u4e2d\u5fc3"

    const/4 v9, 0x0

    const/16 v10, 0x8

    if-eq p2, v6, :cond_2

    const/4 v6, 0x2

    if-eq p2, v6, :cond_1

    const/4 v5, 0x3

    if-eq p2, v5, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "\u53d6\u6d88\u5173\u6ce8"

    .line 9
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p2, "\u53d6\u6d88\u540e\u4f60\u5c06\u65e0\u6cd5\u53ca\u65f6\u6536\u5230\u793c\u5305\u3001\u5f00\u6d4b\u7b49\u52a8\u6001\u7684\u63d0\u9192\u54e6~\u786e\u5b9a\u8981\u53d6\u6d88\u5417\uff1f"

    .line 10
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    const-string p2, "\u786e\u5b9a"

    .line 12
    invoke-virtual {v1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string p2, "\u5173\u95ed"

    .line 13
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string p2, "\u6536\u85cf\u6210\u529f"

    .line 14
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p2, "\u6e38\u620f\u65b0\u52a8\u6001\u5305\u62ec\uff1a\u6e38\u620f\u5f00\u653e\u4e0b\u8f7d\u3001\u5f00\u6d4b\u3001\u793c\u5305\u3001\u6d3b\u52a8\u7b49"

    .line 17
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 19
    invoke-virtual {p1, v10}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 20
    :cond_2
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string p2, "\u9884\u7ea6\u6210\u529f"

    .line 21
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p2, "\u6e38\u620f\u4e0a\u7ebf\u540e\u5c06\u4e3a\u4f60\u53d1\u653e\u793c\u5305\u7b49\u798f\u5229"

    .line 23
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 25
    invoke-virtual {p1, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 26
    :goto_0
    new-instance p2, Lcom/join/mgps/Util/z$t;

    invoke-direct {p2, p0, p3, v0}, Lcom/join/mgps/Util/z$t;-><init>(Lcom/join/mgps/Util/z;Ll1/a;Lcom/join/mgps/customview/t;)V

    invoke-virtual {v1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    new-instance p2, Lcom/join/mgps/Util/z$u;

    invoke-direct {p2, p0, p3, v0}, Lcom/join/mgps/Util/z$u;-><init>(Lcom/join/mgps/Util/z;Ll1/a;Lcom/join/mgps/customview/t;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public P(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dialog/h0$c;)Landroid/app/Dialog;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/h0;

    const v1, 0x7f12014a

    invoke-direct {v0, p1, v1}, Lcom/join/mgps/dialog/h0;-><init>(Landroid/content/Context;I)V

    .line 2
    invoke-virtual {v0, p3}, Lcom/join/mgps/dialog/h0;->d(Ljava/lang/String;)Lcom/join/mgps/dialog/h0;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/h0;->e(Ljava/lang/String;)Lcom/join/mgps/dialog/h0;

    move-result-object p1

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/h0;->b(Z)Lcom/join/mgps/dialog/h0;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p4}, Lcom/join/mgps/dialog/h0;->c(Lcom/join/mgps/dialog/h0$c;)Lcom/join/mgps/dialog/h0;

    move-result-object p1

    return-object p1
.end method

.method public Q(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/Util/z;->h:Lcom/join/mgps/activity/q0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/Util/z;->h:Lcom/join/mgps/activity/q0;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4
    :cond_0
    new-instance v0, Lcom/join/mgps/activity/q0;

    invoke-direct {v0, p1, p2, p3}, Lcom/join/mgps/activity/q0;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 5
    iput-object v0, p0, Lcom/join/mgps/Util/z;->h:Lcom/join/mgps/activity/q0;

    .line 6
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/join/mgps/Util/z;->h:Lcom/join/mgps/activity/q0;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/Util/z;->h:Lcom/join/mgps/activity/q0;

    invoke-virtual {p1}, Lcom/join/mgps/activity/q0;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public R(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 1
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/Util/z;->d:Lcom/join/mgps/dialog/g1;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/Util/z;->d:Lcom/join/mgps/dialog/g1;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4
    :cond_1
    new-instance v0, Lcom/join/mgps/dialog/g1;

    invoke-direct {v0, p1}, Lcom/join/mgps/dialog/g1;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/Util/z;->d:Lcom/join/mgps/dialog/g1;

    .line 5
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/join/mgps/Util/z;->d:Lcom/join/mgps/dialog/g1;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/Util/z;->d:Lcom/join/mgps/dialog/g1;

    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/g1;->i(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "WF"

    aput-object v1, p1, v0

    const/4 v0, 0x1

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mod questionnaire "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    invoke-static {p1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public S(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/ModFeedbackBean;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 1
    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/Util/z;->f:Lcom/join/mgps/dialog/j1;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/Util/z;->f:Lcom/join/mgps/dialog/j1;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4
    :cond_1
    new-instance v0, Lcom/join/mgps/dialog/j1;

    invoke-direct {v0, p1}, Lcom/join/mgps/dialog/j1;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/Util/z;->f:Lcom/join/mgps/dialog/j1;

    .line 5
    invoke-virtual {v0, p2, p3, p4}, Lcom/join/mgps/dialog/j1;->f(Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/ModFeedbackBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public T(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 1
    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/Util/z;->e:Lcom/join/mgps/dialog/k1;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/Util/z;->e:Lcom/join/mgps/dialog/k1;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4
    :cond_1
    new-instance v0, Lcom/join/mgps/dialog/k1;

    invoke-direct {v0, p1}, Lcom/join/mgps/dialog/k1;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/Util/z;->e:Lcom/join/mgps/dialog/k1;

    .line 5
    invoke-virtual {v0, p2, p3}, Lcom/join/mgps/dialog/k1;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public U(Landroid/content/Context;Lcom/join/mgps/dto/OnlineCouponConfigBean;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/join/mgps/Util/z;->V(Landroid/content/Context;Lcom/join/mgps/dto/OnlineCouponConfigBean;ILcom/join/mgps/Util/z$n0;)V

    return-void
.end method

.method public V(Landroid/content/Context;Lcom/join/mgps/dto/OnlineCouponConfigBean;ILcom/join/mgps/Util/z$n0;)V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/join/mgps/dialog/o1;

    invoke-direct {v0, p1, p2, p3}, Lcom/join/mgps/dialog/o1;-><init>(Landroid/content/Context;Lcom/join/mgps/dto/OnlineCouponConfigBean;I)V

    iput-object v0, p0, Lcom/join/mgps/Util/z;->i:Lcom/join/mgps/dialog/o1;

    .line 2
    new-instance p2, Lcom/join/mgps/Util/z$d0;

    invoke-direct {p2, p0, p4}, Lcom/join/mgps/Util/z$d0;-><init>(Lcom/join/mgps/Util/z;Lcom/join/mgps/Util/z$n0;)V

    invoke-virtual {v0, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/Util/z;->i:Lcom/join/mgps/dialog/o1;

    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    .line 4
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 p4, 0x3

    if-ne p3, p4, :cond_1

    .line 5
    invoke-virtual {p2}, Lcom/join/mgps/dto/AccountBean;->getAccount_type()I

    move-result p2

    .line 6
    new-instance p3, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {p3, p1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 7
    invoke-virtual {p3}, Lcom/join/mgps/pref/PrefDef_;->lastQuitShowOnlineCouponTime()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p3}, Lcom/join/mgps/pref/PrefDef_;->lastQuitShowOnlineCouponTimeGuset()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public W(Landroid/content/Context;Lcom/tbruyelle/rxpermissions2/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/z;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/Util/z;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/join/mgps/Util/z;->a:Landroid/app/Dialog;

    .line 5
    :cond_1
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f12000c

    invoke-direct {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/join/mgps/Util/z;->b:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 6
    iget-object v0, p2, Lcom/tbruyelle/rxpermissions2/b;->a:Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/Util/z;->b:Landroidx/appcompat/app/AlertDialog$Builder;

    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 8
    iget-object v0, p2, Lcom/tbruyelle/rxpermissions2/b;->a:Ljava/lang/String;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p2, Lcom/tbruyelle/rxpermissions2/b;->a:Ljava/lang/String;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/Util/z;->b:Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bf7\u53bb\u8bbe\u7f6e\u4e2d\u5f00\u542f\u6743\u9650"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/tbruyelle/rxpermissions2/b;->a:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_1

    .line 10
    :cond_4
    :goto_0
    iget-object p2, p0, Lcom/join/mgps/Util/z;->b:Landroidx/appcompat/app/AlertDialog$Builder;

    const-string v0, "\u9700\u8981\u6253\u5f00\u8bfb\u5199\u5b58\u50a8\u6743\u9650\uff0c\u8bf7\u53bb\u8bbe\u7f6e\u4e2d\u5f00\u542f\u6743\u9650"

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 11
    :goto_1
    iget-object p2, p0, Lcom/join/mgps/Util/z;->b:Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v0, Lcom/join/mgps/Util/z$k;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/Util/z$k;-><init>(Lcom/join/mgps/Util/z;Landroid/content/Context;)V

    const-string p1, "\u53bb\u6253\u5f00"

    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 12
    iget-object p1, p0, Lcom/join/mgps/Util/z;->b:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/Util/z;->a:Landroid/app/Dialog;

    return-void
.end method

.method public X(Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/db/tables/EMUApkTable;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/join/mgps/dialog/PlugUpdateDialog_;->F0(Landroid/content/Context;)Lcom/join/mgps/dialog/PlugUpdateDialog_$a;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/join/mgps/dialog/PlugUpdateDialog_$a;->a(Ljava/lang/String;)Lcom/join/mgps/dialog/PlugUpdateDialog_$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/PlugUpdateDialog_$a;->b(Ljava/lang/String;)Lcom/join/mgps/dialog/PlugUpdateDialog_$a;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/join/mgps/dialog/PlugUpdateDialog_$a;->c(Lcom/join/mgps/db/tables/EMUApkTable;)Lcom/join/mgps/dialog/PlugUpdateDialog_$a;

    move-result-object p1

    const/high16 p2, 0x20000000

    invoke-virtual {p1, p2}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dialog/PlugUpdateDialog_$a;

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method public Y(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v6, Lcom/join/mgps/customview/t;

    const v0, 0x7f120176

    invoke-direct {v6, p1, v0}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f0c0551

    .line 2
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->setContentView(I)V

    const v0, 0x7f09028f

    .line 3
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f090707

    .line 4
    invoke-virtual {v6, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    const v2, 0x7f080168

    .line 5
    invoke-static {v1, v2, p3}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    const p3, 0x7f09036b

    .line 6
    invoke-virtual {v6, p3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 7
    new-instance v1, Lcom/join/mgps/Util/z$y;

    invoke-direct {v1, p0, v6}, Lcom/join/mgps/Util/z$y;-><init>(Lcom/join/mgps/Util/z;Lcom/join/mgps/customview/t;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    new-instance v7, Lcom/join/mgps/Util/z$z;

    move-object v0, v7

    move-object v1, p0

    move-object v2, v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/Util/z$z;-><init>(Lcom/join/mgps/Util/z;Lcom/join/mgps/customview/t;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 9
    invoke-virtual {v6, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 10
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public Z(Landroid/content/Context;)Lcom/join/mgps/customview/t;
    .locals 7

    .line 1
    new-instance v0, Lcom/join/mgps/customview/t;

    const v1, 0x7f120176

    invoke-direct {v0, p1, v1}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0c009a

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x7f090364

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f09036b

    .line 4
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f09100a

    .line 5
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f09036e

    .line 6
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090370

    .line 7
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v6, "\u63d0\u793a"

    .line 8
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f110204

    .line 9
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x8

    .line 10
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setVisibility(I)V

    const-string p1, "\u4e86\u89e3SVIP"

    .line 11
    invoke-virtual {v2, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "\u4e0b\u6b21\u518d\u8bf4"

    .line 12
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 13
    new-instance p1, Lcom/join/mgps/Util/z$p;

    invoke-direct {p1, p0, v0}, Lcom/join/mgps/Util/z$p;-><init>(Lcom/join/mgps/Util/z;Lcom/join/mgps/customview/t;)V

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    new-instance p1, Lcom/join/mgps/Util/z$q;

    invoke-direct {p1, p0, v0}, Lcom/join/mgps/Util/z$q;-><init>(Lcom/join/mgps/Util/z;Lcom/join/mgps/customview/t;)V

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public a0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 6

    .line 1
    new-instance v0, Lcom/join/mgps/customview/t;

    const v1, 0x7f120176

    invoke-direct {v0, p1, v1}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0c05ca

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x7f090364

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f09036b

    .line 4
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f09100a

    .line 5
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f09036e

    .line 6
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, "\u66f4\u65b0\u63d0\u793a"

    .line 7
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u3010"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\u3011\u53ef\u66f4\u65b0\u7248\u672c"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "\u7acb\u5373\u66f4\u65b0"

    .line 9
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "\u76f4\u63a5\u542f\u52a8"

    .line 10
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    new-instance v3, Lcom/join/mgps/Util/z$e;

    invoke-direct {v3, p0, p1, p2, v0}, Lcom/join/mgps/Util/z$e;-><init>(Lcom/join/mgps/Util/z;Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/customview/t;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    new-instance v2, Lcom/join/mgps/Util/z$f;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/join/mgps/Util/z$f;-><init>(Lcom/join/mgps/Util/z;Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/customview/t;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public b0(Landroid/content/Context;)Lcom/join/mgps/customview/t;
    .locals 7

    .line 1
    new-instance v0, Lcom/join/mgps/customview/t;

    const v1, 0x7f120176

    invoke-direct {v0, p1, v1}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0c009a

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x7f090364

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f09036b

    .line 4
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f09100a

    .line 5
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f09036e

    .line 6
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090370

    .line 7
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v6, "\u63d0\u793a"

    .line 8
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f110205

    .line 9
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x8

    .line 10
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setVisibility(I)V

    const-string p1, "\u6211\u8981\u6210\u4e3aVIP"

    .line 11
    invoke-virtual {v2, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "\u4e0b\u6b21\u518d\u8bf4"

    .line 12
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 13
    new-instance p1, Lcom/join/mgps/Util/z$r;

    invoke-direct {p1, p0, v0}, Lcom/join/mgps/Util/z$r;-><init>(Lcom/join/mgps/Util/z;Lcom/join/mgps/customview/t;)V

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    new-instance p1, Lcom/join/mgps/Util/z$s;

    invoke-direct {p1, p0, v0}, Lcom/join/mgps/Util/z$s;-><init>(Lcom/join/mgps/Util/z;Lcom/join/mgps/customview/t;)V

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ll1/b;)Landroid/app/Dialog;
    .locals 4

    .line 1
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f120176

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const p1, 0x7f0c015a

    .line 2
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(I)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    const p1, 0x7f090365

    .line 5
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const v1, 0x7f09036b

    .line 6
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f09036e

    .line 7
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f09100a

    .line 8
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 9
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p1, p4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {v1, p5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 13
    new-instance p2, Lcom/join/mgps/Util/z$w;

    invoke-direct {p2, p0, p6, v0}, Lcom/join/mgps/Util/z$w;-><init>(Lcom/join/mgps/Util/z;Ll1/b;Landroid/app/Dialog;)V

    invoke-virtual {v1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    new-instance p2, Lcom/join/mgps/Util/z$x;

    invoke-direct {p2, p0, p6, v0}, Lcom/join/mgps/Util/z$x;-><init>(Lcom/join/mgps/Util/z;Ll1/b;Landroid/app/Dialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public e(Landroid/content/Context;)Z
    .locals 5

    .line 1
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v0, p1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastLaunchModGameId()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastLaunchModGameId()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0}, Lcom/join/android/app/common/utils/APKUtils;->I(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGame_run_state()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGame_run_state()I

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/join/android/app/common/utils/APKUtils;->E(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGame_run_state()I

    move-result v1

    if-nez v1, :cond_2

    .line 6
    :cond_1
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/join/mgps/Util/y;

    invoke-direct {v2, p0, p1, v0}, Lcom/join/mgps/Util/y;-><init>(Lcom/join/mgps/Util/z;Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public f(Landroid/content/Context;Ljava/util/List;Lo1/c;IZ)Landroid/app/Dialog;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CouponsData;",
            ">;",
            "Lo1/c;",
            "IZ)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/dialog/c0;

    const v2, 0x7f12013f

    move-object v0, v7

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dialog/c0;-><init>(Landroid/content/Context;ILjava/util/List;Lo1/c;IZ)V

    .line 2
    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p3, p3, p3}, Landroid/view/View;->setPadding(IIII)V

    .line 4
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    const/4 p3, -0x1

    .line 5
    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 6
    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-object v7
.end method

.method public g(Landroid/content/Context;Lcom/join/mgps/Util/z$n0;)Landroid/app/Dialog;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/b;

    const v1, 0x7f12014a

    invoke-direct {v0, p1, v1}, Lcom/join/mgps/dialog/b;-><init>(Landroid/content/Context;I)V

    const-string v1, "\u73b0\u5728\u4e0d"

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->d(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    move-result-object v0

    const-string v1, "\u767b\u9646\u540e\uff0c\u5f00\u59cb\u609f\u996d\u6e38\u620f\u7684\u7cbe\u5f69\u65c5\u6e38"

    .line 3
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    move-result-object v0

    const-string v1, "\u767b\u5f55"

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->j(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    move-result-object v0

    const-string v1, "\u63d0\u793a"

    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->k(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/Util/z$v;

    invoke-direct {v1, p0, p1, p2}, Lcom/join/mgps/Util/z$v;-><init>(Lcom/join/mgps/Util/z;Landroid/content/Context;Lcom/join/mgps/Util/z$n0;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->i(Lcom/join/mgps/dialog/b$c;)Lcom/join/mgps/dialog/b;

    move-result-object p1

    .line 7
    new-instance v0, Lcom/join/mgps/Util/z$g0;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/Util/z$g0;-><init>(Lcom/join/mgps/Util/z;Lcom/join/mgps/Util/z$n0;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 8
    new-instance v0, Lcom/join/mgps/Util/z$h0;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/Util/z$h0;-><init>(Lcom/join/mgps/Util/z;Lcom/join/mgps/Util/z$n0;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 9
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-object p1
.end method

.method public h(Landroid/content/Context;)Lcom/join/mgps/dialog/b;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/b;

    const v1, 0x7f12014a

    invoke-direct {v0, p1, v1}, Lcom/join/mgps/dialog/b;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public i(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/b;

    const v1, 0x7f12014a

    invoke-direct {v0, p1, v1}, Lcom/join/mgps/dialog/b;-><init>(Landroid/content/Context;I)V

    const-string v1, "\u73b0\u5728\u4e0d"

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->d(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    move-result-object v0

    const-string v1, "\u767b\u9646\u540e\uff0c\u609f\u996d\u53ef\u4ee5\u4e3a\u4f60\u6c38\u4e45\u514d\u8d39\u8bb0\u5f55\u6210\u5c31"

    .line 3
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    move-result-object v0

    const-string v1, "\u767b\u5f55"

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->j(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    move-result-object v0

    const-string v1, "\u63d0\u793a"

    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->k(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/Util/z$b;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/Util/z$b;-><init>(Lcom/join/mgps/Util/z;Landroid/content/Context;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->i(Lcom/join/mgps/dialog/b$c;)Lcom/join/mgps/dialog/b;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public j(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentUtil;->goLoginBattle(Landroid/content/Context;)Z

    return-void
.end method

.method public k(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/Util/z;->g(Landroid/content/Context;Lcom/join/mgps/Util/z$n0;)Landroid/app/Dialog;

    return-void
.end method

.method public l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/Util/z$o0;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/b;

    const v1, 0x7f12014a

    invoke-direct {v0, p1, v1}, Lcom/join/mgps/dialog/b;-><init>(Landroid/content/Context;I)V

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p2, "\u8bf7\u767b\u5f55\u540e\u4f7f\u7528\u8be5\u529f\u80fd"

    :cond_0
    invoke-virtual {v0, p2}, Lcom/join/mgps/dialog/b;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    move-result-object p2

    .line 3
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p3, "\u767b\u5f55"

    :cond_1
    invoke-virtual {p2, p3}, Lcom/join/mgps/dialog/b;->j(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    move-result-object p2

    .line 4
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p4, "\u53d6\u6d88"

    :cond_2
    invoke-virtual {p2, p4}, Lcom/join/mgps/dialog/b;->d(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    move-result-object p2

    const-string p3, "\u63d0\u793a"

    .line 5
    invoke-virtual {p2, p3}, Lcom/join/mgps/dialog/b;->k(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    move-result-object p2

    new-instance p3, Lcom/join/mgps/Util/z$i;

    invoke-direct {p3, p0, p1, p5}, Lcom/join/mgps/Util/z$i;-><init>(Lcom/join/mgps/Util/z;Landroid/content/Context;Lcom/join/mgps/Util/z$o0;)V

    .line 6
    invoke-virtual {p2, p3}, Lcom/join/mgps/dialog/b;->i(Lcom/join/mgps/dialog/b$c;)Lcom/join/mgps/dialog/b;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public m(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    return-void
.end method

.method public n(Landroid/content/Context;Ljava/lang/String;ILcom/join/mgps/Util/z$n0;)Landroid/app/Dialog;
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/b;

    const v1, 0x7f12014a

    invoke-direct {v0, p1, v1}, Lcom/join/mgps/dialog/b;-><init>(Landroid/content/Context;I)V

    const-string v1, "\u53d6\u6d88"

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->d(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 3
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v1, p3

    const-string p2, "\u628a\u201c%s\u201d\u8e22\u51fa\u623f\u95f4\n\u9700\u8981\u6d88\u8017%d\u94dc\u677f\n\u60a8\u786e\u5b9a\u8981\u8e22\u51fa\uff1f"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/join/mgps/dialog/b;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    move-result-object p2

    const-string p3, "\u786e\u5b9a"

    .line 4
    invoke-virtual {p2, p3}, Lcom/join/mgps/dialog/b;->j(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    move-result-object p2

    const-string p3, "\u63d0\u793a"

    .line 5
    invoke-virtual {p2, p3}, Lcom/join/mgps/dialog/b;->k(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    move-result-object p2

    new-instance p3, Lcom/join/mgps/Util/z$i0;

    invoke-direct {p3, p0, p1, p4}, Lcom/join/mgps/Util/z$i0;-><init>(Lcom/join/mgps/Util/z;Landroid/content/Context;Lcom/join/mgps/Util/z$n0;)V

    .line 6
    invoke-virtual {p2, p3}, Lcom/join/mgps/dialog/b;->i(Lcom/join/mgps/dialog/b$c;)Lcom/join/mgps/dialog/b;

    move-result-object p1

    .line 7
    new-instance p2, Lcom/join/mgps/Util/z$j0;

    invoke-direct {p2, p0, p4}, Lcom/join/mgps/Util/z$j0;-><init>(Lcom/join/mgps/Util/z;Lcom/join/mgps/Util/z$n0;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 8
    new-instance p2, Lcom/join/mgps/Util/z$k0;

    invoke-direct {p2, p0, p4}, Lcom/join/mgps/Util/z$k0;-><init>(Lcom/join/mgps/Util/z;Lcom/join/mgps/Util/z$n0;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 9
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-object p1
.end method

.method public o(Landroid/content/Context;Lcom/join/mgps/Util/z$n0;)Landroid/app/Dialog;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/b;

    const v1, 0x7f12014a

    invoke-direct {v0, p1, v1}, Lcom/join/mgps/dialog/b;-><init>(Landroid/content/Context;I)V

    const-string v1, "\u53d6\u6d88"

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->d(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    move-result-object v0

    const-string v1, "\u4f60\u5df2\u88ab\u8e22\u51fa\u6e38\u620f\n\u5f00\u901aVIP\u4f1a\u5458\uff0c\u7acb\u5373\u4eab\u53d7\u9632\u8e22\u7279\u6743"

    .line 3
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    move-result-object v0

    const-string v1, "\u5f00\u901a\u4f1a\u5458"

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->j(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    move-result-object v0

    const-string v1, "\u63d0\u793a"

    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->k(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/Util/z$l0;

    invoke-direct {v1, p0, p1, p2}, Lcom/join/mgps/Util/z$l0;-><init>(Lcom/join/mgps/Util/z;Landroid/content/Context;Lcom/join/mgps/Util/z$n0;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->i(Lcom/join/mgps/dialog/b$c;)Lcom/join/mgps/dialog/b;

    move-result-object p1

    .line 7
    new-instance v0, Lcom/join/mgps/Util/z$m0;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/Util/z$m0;-><init>(Lcom/join/mgps/Util/z;Lcom/join/mgps/Util/z$n0;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 8
    new-instance v0, Lcom/join/mgps/Util/z$a;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/Util/z$a;-><init>(Lcom/join/mgps/Util/z;Lcom/join/mgps/Util/z$n0;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 9
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-object p1
.end method

.method public p(Landroid/content/Context;I)Lcom/join/mgps/dialog/p;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/p;

    const v1, 0x7f12014a

    invoke-direct {v0, p1, v1, p2}, Lcom/join/mgps/dialog/p;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method public q(Landroid/content/Context;)Lcom/join/mgps/dialog/r;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/r;

    const v1, 0x7f12014a

    invoke-direct {v0, p1, v1}, Lcom/join/mgps/dialog/r;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public r(Landroid/content/Context;)Lcom/join/mgps/dialog/s;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/s;

    const v1, 0x7f12014a

    invoke-direct {v0, p1, v1}, Lcom/join/mgps/dialog/s;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public s(Landroid/content/Context;)Lcom/join/mgps/dialog/t;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/t;

    const v1, 0x7f12014a

    invoke-direct {v0, p1, v1}, Lcom/join/mgps/dialog/t;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public t(Landroid/content/Context;)Lcom/join/mgps/dialog/g0;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/g0;

    const v1, 0x7f12014a

    invoke-direct {v0, p1, v1}, Lcom/join/mgps/dialog/g0;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public u(Landroid/content/Context;)Lcom/join/mgps/dialog/l0;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/l0;

    const v1, 0x7f12014a

    invoke-direct {v0, p1, v1}, Lcom/join/mgps/dialog/l0;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public v(Landroid/content/Context;)Lcom/join/mgps/dialog/s0;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/s0;

    const v1, 0x7f12014a

    invoke-direct {v0, p1, v1}, Lcom/join/mgps/dialog/s0;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public w(Landroid/content/Context;)Lcom/join/mgps/dialog/t0;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/t0;

    const v1, 0x7f12014a

    invoke-direct {v0, p1, v1}, Lcom/join/mgps/dialog/t0;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public x(Landroid/content/Context;)Lcom/join/mgps/dialog/x0;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/x0;

    const v1, 0x7f120178

    invoke-direct {v0, p1, v1}, Lcom/join/mgps/dialog/x0;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public y(Landroid/content/Context;Ljava/lang/String;)Lcom/join/mgps/dialog/x0;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/x0;

    const v1, 0x7f120178

    invoke-direct {v0, p1, v1, p2}, Lcom/join/mgps/dialog/x0;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    return-object v0
.end method

.method public z(Landroid/content/Context;Ljava/lang/String;Z)Lcom/join/mgps/dialog/x0;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/x0;

    const v1, 0x7f120178

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/join/mgps/dialog/x0;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1c

    if-lt p1, p2, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 p2, 0x1

    .line 4
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-object v0
.end method

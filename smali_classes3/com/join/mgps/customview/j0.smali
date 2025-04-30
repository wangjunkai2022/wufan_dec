.class public Lcom/join/mgps/customview/j0;
.super Ljava/lang/Object;
.source "RewardToast.java"


# static fields
.field private static c:Lcom/join/mgps/customview/j0;

.field private static d:Landroid/widget/Toast;

.field private static e:Landroid/widget/TextView;

.field private static f:Landroid/widget/LinearLayout;

.field private static g:Landroid/widget/ImageView;

.field private static h:Landroid/content/Context;

.field private static i:J


# instance fields
.field private a:J

.field b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/join/mgps/customview/j0$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/j0$a;-><init>(Lcom/join/mgps/customview/j0;)V

    iput-object v0, p0, Lcom/join/mgps/customview/j0;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/customview/j0;->h:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b()Landroid/widget/LinearLayout;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/customview/j0;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic c()Landroid/widget/ImageView;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/customview/j0;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lcom/join/mgps/customview/j0;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/customview/j0;->a:J

    return-wide v0
.end method

.method static synthetic e(Lcom/join/mgps/customview/j0;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/customview/j0;->a:J

    return-wide p1
.end method

.method static synthetic f()Landroid/widget/Toast;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/customview/j0;->d:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic g(J)J
    .locals 0

    .line 1
    sput-wide p0, Lcom/join/mgps/customview/j0;->i:J

    return-wide p0
.end method

.method private h(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    return-object p1
.end method

.method public static i(Landroid/content/Context;)Lcom/join/mgps/customview/j0;
    .locals 4

    .line 1
    sput-object p0, Lcom/join/mgps/customview/j0;->h:Landroid/content/Context;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/customview/j0;->h:Landroid/content/Context;

    .line 3
    sget-object v0, Lcom/join/mgps/customview/j0;->c:Lcom/join/mgps/customview/j0;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/join/mgps/customview/j0;

    invoke-direct {v0}, Lcom/join/mgps/customview/j0;-><init>()V

    sput-object v0, Lcom/join/mgps/customview/j0;->c:Lcom/join/mgps/customview/j0;

    .line 5
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c055b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0911ac

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/join/mgps/customview/j0;->e:Landroid/widget/TextView;

    const v1, 0x7f090d2e

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    sput-object v1, Lcom/join/mgps/customview/j0;->f:Landroid/widget/LinearLayout;

    const v1, 0x7f090a6e

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sput-object v1, Lcom/join/mgps/customview/j0;->g:Landroid/widget/ImageView;

    .line 9
    new-instance v1, Landroid/widget/Toast;

    invoke-direct {v1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/join/mgps/customview/j0;->d:Landroid/widget/Toast;

    const/16 p0, 0x51

    const/4 v2, 0x0

    const/16 v3, 0xc8

    .line 10
    invoke-virtual {v1, p0, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 11
    sget-object p0, Lcom/join/mgps/customview/j0;->d:Landroid/widget/Toast;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 12
    sget-object p0, Lcom/join/mgps/customview/j0;->d:Landroid/widget/Toast;

    invoke-virtual {p0, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 13
    :cond_0
    sget-object p0, Lcom/join/mgps/customview/j0;->c:Lcom/join/mgps/customview/j0;

    return-object p0
.end method


# virtual methods
.method public j(Lcom/join/mgps/customview/RewardType;II)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "method show() called.type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/customview/RewardType;->getVal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    sget-object v0, Lcom/join/mgps/customview/j0;->h:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/j0;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/join/mgps/customview/j0;->d:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    return-void

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/customview/RewardType;->getVal()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  \u5956\u52b1: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "<font color=\'0xf47500\' >+"

    if-lez p2, :cond_2

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "</font>\u94dc\u677f"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez p3, :cond_2

    const-string p2, "&nbsp;&nbsp;"

    .line 7
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-lez p3, :cond_3

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "</font>\u7ecf\u9a8c"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_3
    sget-object p1, Lcom/join/mgps/customview/j0;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "gap="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sget-wide v0, Lcom/join/mgps/customview/j0;->i:J

    sub-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sget-wide v0, Lcom/join/mgps/customview/j0;->i:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x3a98

    const/4 p3, 0x5

    cmp-long v2, p1, v0

    if-gez v2, :cond_5

    .line 12
    sget-object p1, Lcom/join/mgps/customview/j0;->h:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/android/app/common/utils/j;->F(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 13
    iget-object p1, p0, Lcom/join/mgps/customview/j0;->b:Landroid/os/Handler;

    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 14
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/customview/j0;->b:Landroid/os/Handler;

    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 15
    :cond_5
    sget-object p1, Lcom/join/mgps/customview/j0;->h:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/android/app/common/utils/j;->F(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 16
    iget-object p1, p0, Lcom/join/mgps/customview/j0;->b:Landroid/os/Handler;

    const-wide/16 v0, 0x2710

    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 17
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/customview/j0;->b:Landroid/os/Handler;

    invoke-virtual {p1, p3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method k(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/j0;->h(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

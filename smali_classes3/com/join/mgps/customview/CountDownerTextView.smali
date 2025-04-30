.class public Lcom/join/mgps/customview/CountDownerTextView;
.super Landroid/widget/TextView;
.source "CountDownerTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/CountDownerTextView$a;
    }
.end annotation


# static fields
.field private static final b:I = 0x3e8

.field private static final c:I = 0x1

.field private static final d:I = 0x64


# instance fields
.field private a:Lcom/join/mgps/customview/CountDownerTextView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/customview/CountDownerTextView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/customview/CountDownerTextView;->b()V

    return-void
.end method

.method private a(JI)I
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x3e8

    div-long/2addr v0, p1

    int-to-long p1, p3

    add-long/2addr v0, p1

    const-wide/16 p1, 0x1

    sub-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method


# virtual methods
.method b()V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/customview/CountDownerTextView$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/CountDownerTextView$a;-><init>(Lcom/join/mgps/customview/CountDownerTextView;)V

    iput-object v0, p0, Lcom/join/mgps/customview/CountDownerTextView;->a:Lcom/join/mgps/customview/CountDownerTextView$a;

    return-void
.end method

.method public c(IIJILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-direct {p0, p3, p4, p5}, Lcom/join/mgps/customview/CountDownerTextView;->a(JI)I

    move-result v1

    .line 2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/join/mgps/Util/x;->f(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p3, p0, Lcom/join/mgps/customview/CountDownerTextView;->a:Lcom/join/mgps/customview/CountDownerTextView$a;

    if-nez p3, :cond_0

    .line 4
    new-instance p3, Lcom/join/mgps/customview/CountDownerTextView$a;

    invoke-direct {p3, p0}, Lcom/join/mgps/customview/CountDownerTextView$a;-><init>(Lcom/join/mgps/customview/CountDownerTextView;)V

    iput-object p3, p0, Lcom/join/mgps/customview/CountDownerTextView;->a:Lcom/join/mgps/customview/CountDownerTextView$a;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/CountDownerTextView;->a:Lcom/join/mgps/customview/CountDownerTextView$a;

    int-to-long v3, p1

    move v2, p2

    move-object v5, p6

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/join/mgps/customview/CountDownerTextView$a;->a(IIJLjava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/customview/CountDownerTextView;->a:Lcom/join/mgps/customview/CountDownerTextView$a;

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/customview/CountDownerTextView;->a:Lcom/join/mgps/customview/CountDownerTextView$a;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public d(JILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 1
    invoke-virtual/range {v0 .. v7}, Lcom/join/mgps/customview/CountDownerTextView;->c(IIJILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CountDownerTextView;->a:Lcom/join/mgps/customview/CountDownerTextView$a;

    if-eqz v0, :cond_0

    const/16 v1, 0x64

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/join/mgps/customview/CountDownerTextView;->a:Lcom/join/mgps/customview/CountDownerTextView$a;

    :cond_0
    return-void
.end method

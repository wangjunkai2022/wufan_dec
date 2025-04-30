.class Lcom/join/mgps/customview/CountDownerTextView$a;
.super Landroid/os/Handler;
.source "CountDownerTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/CountDownerTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/join/mgps/customview/CountDownerTextView;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/join/mgps/customview/CountDownerTextView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/join/mgps/customview/CountDownerTextView$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(IIJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/CountDownerTextView$a;->b:I

    .line 2
    iput p2, p0, Lcom/join/mgps/customview/CountDownerTextView$a;->c:I

    .line 3
    iput-wide p3, p0, Lcom/join/mgps/customview/CountDownerTextView$a;->d:J

    .line 4
    iput-object p5, p0, Lcom/join/mgps/customview/CountDownerTextView$a;->e:Ljava/lang/String;

    .line 5
    iput-object p6, p0, Lcom/join/mgps/customview/CountDownerTextView$a;->f:Ljava/lang/String;

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/CountDownerTextView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/customview/CountDownerTextView;

    if-eqz p1, :cond_0

    .line 4
    iget v1, p0, Lcom/join/mgps/customview/CountDownerTextView$a;->b:I

    iget v2, p0, Lcom/join/mgps/customview/CountDownerTextView$a;->c:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/join/mgps/customview/CountDownerTextView$a;->b:I

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/customview/CountDownerTextView$a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/customview/CountDownerTextView$a;->b:I

    invoke-static {v2}, Lcom/join/mgps/Util/x;->f(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/customview/CountDownerTextView$a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-wide v1, p0, Lcom/join/mgps/customview/CountDownerTextView$a;->d:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

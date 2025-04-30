.class public Lcom/heepay/plugin/d/a/e;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Z

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/heepay/plugin/d/a/e;->b:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/heepay/plugin/d/a/e;->c:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/heepay/plugin/d/a/e;->d:Ljava/lang/String;

    iput p3, p0, Lcom/heepay/plugin/d/a/e;->a:I

    return-void
.end method

.class public final Lcom/php25/PDownload/b;
.super Lcom/php25/PDownload/a;
.source "DownloadFileDao_.java"


# static fields
.field private static d:Lcom/php25/PDownload/b;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/php25/PDownload/a;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/php25/PDownload/b;->b:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/php25/PDownload/a;-><init>(Landroid/content/Context;)V

    .line 4
    iput-object p1, p0, Lcom/php25/PDownload/b;->b:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/php25/PDownload/b;->c:Ljava/lang/Object;

    return-void
.end method

.method public static i(Landroid/content/Context;)Lcom/php25/PDownload/b;
    .locals 2

    .line 1
    sget-object v0, Lcom/php25/PDownload/b;->d:Lcom/php25/PDownload/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/php25/PDownload/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/php25/PDownload/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/php25/PDownload/b;->d:Lcom/php25/PDownload/b;

    .line 4
    invoke-direct {v1}, Lcom/php25/PDownload/b;->j()V

    .line 5
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    .line 6
    :cond_0
    sget-object p0, Lcom/php25/PDownload/b;->d:Lcom/php25/PDownload/b;

    return-object p0
.end method

.method private j()V
    .locals 0

    return-void
.end method

.class public final Lcom/ss/android/download/api/model/b$a;
.super Ljava/lang/Object;
.source "DownloadAlertDialogInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/download/api/model/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:I

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Lcom/ss/android/download/api/model/b$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ss/android/download/api/model/b$a;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/ss/android/download/api/model/b$a;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/download/api/model/b$a;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/ss/android/download/api/model/b$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/download/api/model/b$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/ss/android/download/api/model/b$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/download/api/model/b$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/ss/android/download/api/model/b$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/download/api/model/b$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/ss/android/download/api/model/b$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/download/api/model/b$a;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/ss/android/download/api/model/b$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ss/android/download/api/model/b$a;->h:Z

    return p0
.end method

.method static synthetic g(Lcom/ss/android/download/api/model/b$a;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/download/api/model/b$a;->i:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic h(Lcom/ss/android/download/api/model/b$a;)Lcom/ss/android/download/api/model/b$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/download/api/model/b$a;->j:Lcom/ss/android/download/api/model/b$b;

    return-object p0
.end method


# virtual methods
.method public a(I)Lcom/ss/android/download/api/model/b$a;
    .locals 0

    .line 6
    iput p1, p0, Lcom/ss/android/download/api/model/b$a;->b:I

    return-object p0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Lcom/ss/android/download/api/model/b$a;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/ss/android/download/api/model/b$a;->i:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public a(Lcom/ss/android/download/api/model/b$b;)Lcom/ss/android/download/api/model/b$a;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/ss/android/download/api/model/b$a;->j:Lcom/ss/android/download/api/model/b$b;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/ss/android/download/api/model/b$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ss/android/download/api/model/b$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/ss/android/download/api/model/b$a;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/ss/android/download/api/model/b$a;->h:Z

    return-object p0
.end method

.method public a()Lcom/ss/android/download/api/model/b;
    .locals 2

    .line 7
    new-instance v0, Lcom/ss/android/download/api/model/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ss/android/download/api/model/b;-><init>(Lcom/ss/android/download/api/model/b$a;Lcom/ss/android/download/api/model/b$1;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/ss/android/download/api/model/b$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ss/android/download/api/model/b$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/ss/android/download/api/model/b$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ss/android/download/api/model/b$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/ss/android/download/api/model/b$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ss/android/download/api/model/b$a;->g:Ljava/lang/String;

    return-object p0
.end method

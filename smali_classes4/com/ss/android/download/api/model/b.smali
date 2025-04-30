.class public Lcom/ss/android/download/api/model/b;
.super Ljava/lang/Object;
.source "DownloadAlertDialogInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/download/api/model/b$b;,
        Lcom/ss/android/download/api/model/b$a;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Landroid/graphics/drawable/Drawable;

.field public h:Lcom/ss/android/download/api/model/b$b;

.field public i:Landroid/view/View;

.field public j:I


# direct methods
.method private constructor <init>(Lcom/ss/android/download/api/model/b$a;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/ss/android/download/api/model/b;->f:Z

    .line 4
    invoke-static {p1}, Lcom/ss/android/download/api/model/b$a;->a(Lcom/ss/android/download/api/model/b$a;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/model/b;->a:Landroid/content/Context;

    .line 5
    invoke-static {p1}, Lcom/ss/android/download/api/model/b$a;->b(Lcom/ss/android/download/api/model/b$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/model/b;->b:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/ss/android/download/api/model/b$a;->c(Lcom/ss/android/download/api/model/b$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/model/b;->c:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcom/ss/android/download/api/model/b$a;->d(Lcom/ss/android/download/api/model/b$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/model/b;->d:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lcom/ss/android/download/api/model/b$a;->e(Lcom/ss/android/download/api/model/b$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/model/b;->e:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lcom/ss/android/download/api/model/b$a;->f(Lcom/ss/android/download/api/model/b$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/download/api/model/b;->f:Z

    .line 10
    invoke-static {p1}, Lcom/ss/android/download/api/model/b$a;->g(Lcom/ss/android/download/api/model/b$a;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/model/b;->g:Landroid/graphics/drawable/Drawable;

    .line 11
    invoke-static {p1}, Lcom/ss/android/download/api/model/b$a;->h(Lcom/ss/android/download/api/model/b$a;)Lcom/ss/android/download/api/model/b$b;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/model/b;->h:Lcom/ss/android/download/api/model/b$b;

    .line 12
    iget-object v0, p1, Lcom/ss/android/download/api/model/b$a;->a:Landroid/view/View;

    iput-object v0, p0, Lcom/ss/android/download/api/model/b;->i:Landroid/view/View;

    .line 13
    iget p1, p1, Lcom/ss/android/download/api/model/b$a;->b:I

    iput p1, p0, Lcom/ss/android/download/api/model/b;->j:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/download/api/model/b$a;Lcom/ss/android/download/api/model/b$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/android/download/api/model/b;-><init>(Lcom/ss/android/download/api/model/b$a;)V

    return-void
.end method

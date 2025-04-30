.class public Lorg/ppsspp/ppsspp/h;
.super Ljava/lang/Object;
.source "SimpleFileChooser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ppsspp/ppsspp/h$c;
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/String; = ".."


# instance fields
.field private a:Lorg/ppsspp/ppsspp/h$c;

.field private final b:Landroid/app/Activity;

.field private c:[Ljava/lang/String;

.field private d:Ljava/io/File;

.field private e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/io/File;Lorg/ppsspp/ppsspp/h$c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/ppsspp/ppsspp/h$a;

    invoke-direct {v0, p0}, Lorg/ppsspp/ppsspp/h$a;-><init>(Lorg/ppsspp/ppsspp/h;)V

    iput-object v0, p0, Lorg/ppsspp/ppsspp/h;->e:Ljava/util/Comparator;

    .line 3
    new-instance v0, Lorg/ppsspp/ppsspp/h$b;

    invoke-direct {v0, p0}, Lorg/ppsspp/ppsspp/h$b;-><init>(Lorg/ppsspp/ppsspp/h;)V

    iput-object v0, p0, Lorg/ppsspp/ppsspp/h;->f:Landroid/content/DialogInterface$OnClickListener;

    .line 4
    iput-object p1, p0, Lorg/ppsspp/ppsspp/h;->b:Landroid/app/Activity;

    .line 5
    iput-object p3, p0, Lorg/ppsspp/ppsspp/h;->a:Lorg/ppsspp/ppsspp/h$c;

    .line 6
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_0

    .line 7
    new-instance p2, Ljava/io/File;

    invoke-static {p1}, Lcom/papa91/arc/util/SDCardUtil;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    :cond_0
    invoke-direct {p0, p2}, Lorg/ppsspp/ppsspp/h;->f(Ljava/io/File;)V

    return-void
.end method

.method static synthetic a(Lorg/ppsspp/ppsspp/h;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/ppsspp/ppsspp/h;->c:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lorg/ppsspp/ppsspp/h;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/ppsspp/ppsspp/h;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lorg/ppsspp/ppsspp/h;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/ppsspp/ppsspp/h;->f(Ljava/io/File;)V

    return-void
.end method

.method static synthetic d(Lorg/ppsspp/ppsspp/h;)Lorg/ppsspp/ppsspp/h$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/ppsspp/ppsspp/h;->a:Lorg/ppsspp/ppsspp/h$c;

    return-object p0
.end method

.method private e(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    const-string v0, ".."

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lorg/ppsspp/ppsspp/h;->d:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/ppsspp/ppsspp/h;->d:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private f(Ljava/io/File;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lorg/ppsspp/ppsspp/h;->d:Ljava/io/File;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, ".."

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 6
    iget-object v2, p0, Lorg/ppsspp/ppsspp/h;->e:Ljava/util/Comparator;

    invoke-static {p1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 7
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    .line 8
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-array p1, v1, [Ljava/lang/String;

    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/ppsspp/ppsspp/h;->c:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public g()V
    .locals 3

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/ppsspp/ppsspp/h;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object v1, p0, Lorg/ppsspp/ppsspp/h;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3
    iget-object v1, p0, Lorg/ppsspp/ppsspp/h;->c:[Ljava/lang/String;

    iget-object v2, p0, Lorg/ppsspp/ppsspp/h;->f:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

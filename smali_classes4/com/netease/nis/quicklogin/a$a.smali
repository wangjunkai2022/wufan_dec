.class Lcom/netease/nis/quicklogin/a$a;
.super Ljava/lang/Object;
.source "QuickLoginHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/nis/quicklogin/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/a$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/netease/nis/quicklogin/a$a;->e:Z

    return p0
.end method

.method static synthetic b(Lcom/netease/nis/quicklogin/a$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/a$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/netease/nis/quicklogin/a$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/a$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/netease/nis/quicklogin/a$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/a$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/netease/nis/quicklogin/a$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/a$a;->d:I

    return p0
.end method


# virtual methods
.method public a(I)Lcom/netease/nis/quicklogin/a$a;
    .locals 0

    .line 3
    iput p1, p0, Lcom/netease/nis/quicklogin/a$a;->d:I

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/netease/nis/quicklogin/a$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/nis/quicklogin/a$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/netease/nis/quicklogin/a$a;
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/netease/nis/quicklogin/a$a;->e:Z

    return-object p0
.end method

.method public a(Landroid/content/Context;)Lcom/netease/nis/quicklogin/a;
    .locals 1

    .line 5
    new-instance v0, Lcom/netease/nis/quicklogin/a;

    invoke-direct {v0, p1, p0}, Lcom/netease/nis/quicklogin/a;-><init>(Landroid/content/Context;Lcom/netease/nis/quicklogin/a$a;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/netease/nis/quicklogin/a$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/nis/quicklogin/a$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/netease/nis/quicklogin/a$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/nis/quicklogin/a$a;->c:Ljava/lang/String;

    return-object p0
.end method

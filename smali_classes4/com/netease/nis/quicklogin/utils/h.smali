.class public Lcom/netease/nis/quicklogin/utils/h;
.super Ljava/lang/Object;
.source "ViewIdHelper.java"


# static fields
.field private static volatile c:Lcom/netease/nis/quicklogin/utils/h;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/netease/nis/quicklogin/utils/h;->a:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/utils/h;->a:Landroid/content/Context;

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/utils/h;->b:Landroid/content/res/Resources;

    .line 5
    :cond_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/netease/nis/quicklogin/utils/h;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/nis/quicklogin/utils/h;->c:Lcom/netease/nis/quicklogin/utils/h;

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Lcom/netease/nis/quicklogin/utils/h;

    invoke-direct {v0, p0}, Lcom/netease/nis/quicklogin/utils/h;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/netease/nis/quicklogin/utils/h;->c:Lcom/netease/nis/quicklogin/utils/h;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 4
    :cond_0
    :goto_0
    sget-object p0, Lcom/netease/nis/quicklogin/utils/h;->c:Lcom/netease/nis/quicklogin/utils/h;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/h;->b:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "anim"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/h;->b:Landroid/content/res/Resources;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2
    iget-object v2, p0, Lcom/netease/nis/quicklogin/utils/h;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "drawable"

    invoke-virtual {v0, p1, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/h;->b:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public c(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/h;->b:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public d(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/h;->b:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "layout"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

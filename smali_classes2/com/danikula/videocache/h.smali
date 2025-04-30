.class public Lcom/danikula/videocache/h;
.super Ljava/lang/Object;
.source "HttpProxyCacheDebuger.java"


# static fields
.field static final a:Ljava/lang/String; = "HttpProxyCacheDebuger"

.field static b:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/danikula/videocache/h;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public static b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lcom/danikula/videocache/h;->b:Z

    return-void
.end method

.method public static c()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lcom/danikula/videocache/h;->b:Z

    return-void
.end method

.method public static d()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/danikula/videocache/h;->b:Z

    return v0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/danikula/videocache/h;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    :cond_0
    return-void
.end method

.method public static f(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/danikula/videocache/h;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-boolean p0, Lcom/danikula/videocache/h;->b:Z

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    :cond_0
    return-void
.end method

.method public static h(Ljava/lang/String;)V
    .locals 1

    const-string v0, "HttpProxyCacheDebuger"

    .line 1
    invoke-static {v0, p0}, Lcom/danikula/videocache/h;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-boolean p0, Lcom/danikula/videocache/h;->b:Z

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    :cond_0
    return-void
.end method

.method public static j(Ljava/lang/String;)V
    .locals 1

    const-string v0, "HttpProxyCacheDebuger"

    .line 1
    invoke-static {v0, p0}, Lcom/danikula/videocache/h;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-boolean p0, Lcom/danikula/videocache/h;->b:Z

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    :cond_0
    return-void
.end method

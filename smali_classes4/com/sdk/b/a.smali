.class public Lcom/sdk/b/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/lang/String; = "a"

.field public static b:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/sdk/f/g;->b:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sdk/b/a;->b:Ljava/lang/Boolean;

    return-void
.end method

.method public static a(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/sdk/m/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sdk/o/b;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accessCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-boolean v1, Lcom/sdk/Unicorn/base/module/manager/SDKManager;->useCache:Z

    if-nez v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-static {p1, p2}, Lcom/sdk/b/a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sdk/o/b;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0, p2}, Lcom/sdk/j/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sdk/o/b;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {p0}, Lcom/sdk/b/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0}, Lcom/sdk/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sdk/u/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sdk/u/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/sdk/b/a;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "can use cache"

    :try_start_1
    sget-object v3, Lcom/sdk/b/a;->b:Ljava/lang/Boolean;

    invoke-static {v1, v2, v3}, Lcom/sdk/o/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_1

    const-string p0, "fakeMobile"

    :try_start_2
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string p1, "-"

    :try_start_3
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object p0, Lcom/sdk/b/a;->a:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string p1, "OutDate cache invalid"

    :try_start_4
    sget-object p2, Lcom/sdk/b/a;->b:Ljava/lang/Boolean;

    invoke-static {p0, p1, p2}, Lcom/sdk/o/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_3
    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/sdk/b/a;->a:Ljava/lang/String;

    sget-object v1, Lcom/sdk/b/a;->b:Ljava/lang/Boolean;

    const-string v2, "cache clear"

    invoke-static {v0, v2, v1}, Lcom/sdk/o/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    const-string v0, "accessCode"

    invoke-static {p0, v0}, Lcom/sdk/j/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    sget-boolean v0, Lcom/sdk/Unicorn/base/module/manager/SDKManager;->useCache:Z

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {p2}, Lcom/sdk/o/b;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p3}, Lcom/sdk/b/a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sdk/o/b;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {p0, p1, p2}, Lcom/sdk/j/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    return-object p0
.end method

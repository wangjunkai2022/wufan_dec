.class public Lcn/com/chinatelecom/account/api/e/h;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcn/com/chinatelecom/account/api/e/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/com/chinatelecom/account/api/e/k;

    invoke-direct {v0}, Lcn/com/chinatelecom/account/api/e/k;-><init>()V

    sput-object v0, Lcn/com/chinatelecom/account/api/e/h;->a:Lcn/com/chinatelecom/account/api/e/i;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcn/com/chinatelecom/account/api/e/h;->a:Lcn/com/chinatelecom/account/api/e/i;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcn/com/chinatelecom/account/api/e/i;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/com/chinatelecom/account/api/e/h;->a:Lcn/com/chinatelecom/account/api/e/i;

    invoke-interface {v0, p0, p1, p2, p3}, Lcn/com/chinatelecom/account/api/e/i;->a(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .locals 9

    sget-object v0, Lcn/com/chinatelecom/account/api/e/h;->a:Lcn/com/chinatelecom/account/api/e/i;

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-object v8, p6

    invoke-interface/range {v0 .. v8}, Lcn/com/chinatelecom/account/api/e/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/com/chinatelecom/account/api/e/h;->a:Lcn/com/chinatelecom/account/api/e/i;

    invoke-interface {v0, p0, p1}, Lcn/com/chinatelecom/account/api/e/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcn/com/chinatelecom/account/api/e/h;->a:Lcn/com/chinatelecom/account/api/e/i;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/com/chinatelecom/account/api/e/i;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .locals 9

    sget-object v0, Lcn/com/chinatelecom/account/api/e/h;->a:Lcn/com/chinatelecom/account/api/e/i;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-object v8, p6

    invoke-interface/range {v0 .. v8}, Lcn/com/chinatelecom/account/api/e/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

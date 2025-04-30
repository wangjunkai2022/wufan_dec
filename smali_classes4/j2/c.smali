.class public Lj2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p2}, Lcom/ta/utdid2/aid/a;->b(Landroid/content/Context;)Lcom/ta/utdid2/aid/a;

    move-result-object v0

    invoke-static {p2}, Lj2/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p1, p2}, Lcom/ta/utdid2/aid/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lj2/a;)V
    .locals 1

    .line 1
    invoke-static {p2}, Lcom/ta/utdid2/aid/a;->b(Landroid/content/Context;)Lcom/ta/utdid2/aid/a;

    move-result-object v0

    invoke-static {p2}, Lj2/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/ta/utdid2/aid/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lj2/a;)V

    return-void
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ta/utdid2/device/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

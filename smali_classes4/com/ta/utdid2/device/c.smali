.class public Lcom/ta/utdid2/device/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/ta/utdid2/device/b;->b(Landroid/content/Context;)Lcom/ta/utdid2/device/a;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/ta/utdid2/device/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/ta/utdid2/device/a;->f()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "ffffffffffffffffffffffff"

    return-object p0
.end method

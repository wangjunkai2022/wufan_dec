.class public abstract Lorg/androidannotations/api/builder/g;
.super Lorg/androidannotations/api/builder/e;
.source "ServiceIntentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lorg/androidannotations/api/builder/g<",
        "TI;>;>",
        "Lorg/androidannotations/api/builder/e<",
        "TI;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/androidannotations/api/builder/e;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/androidannotations/api/builder/e;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/ComponentName;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/builder/e;->context:Landroid/content/Context;

    iget-object v1, p0, Lorg/androidannotations/api/builder/e;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/builder/e;->context:Landroid/content/Context;

    iget-object v1, p0, Lorg/androidannotations/api/builder/e;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

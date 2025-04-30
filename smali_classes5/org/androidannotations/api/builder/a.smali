.class public abstract Lorg/androidannotations/api/builder/a;
.super Lorg/androidannotations/api/builder/e;
.source "ActivityIntentBuilder.java"

# interfaces
.implements Lorg/androidannotations/api/builder/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lorg/androidannotations/api/builder/a<",
        "TI;>;>",
        "Lorg/androidannotations/api/builder/e<",
        "TI;>;",
        "Lorg/androidannotations/api/builder/b;"
    }
.end annotation


# instance fields
.field protected lastOptions:Landroid/os/Bundle;


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
.method public final start()Lorg/androidannotations/api/builder/f;
    .locals 2

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/builder/a;->startForResult(I)Lorg/androidannotations/api/builder/f;

    .line 2
    new-instance v0, Lorg/androidannotations/api/builder/f;

    iget-object v1, p0, Lorg/androidannotations/api/builder/e;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/androidannotations/api/builder/f;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public abstract startForResult(I)Lorg/androidannotations/api/builder/f;
.end method

.method public withOptions(Landroid/os/Bundle;)Lorg/androidannotations/api/builder/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/androidannotations/api/builder/a;->lastOptions:Landroid/os/Bundle;

    return-object p0
.end method

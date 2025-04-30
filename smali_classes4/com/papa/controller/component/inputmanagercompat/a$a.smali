.class public Lcom/papa/controller/component/inputmanagercompat/a$a;
.super Ljava/lang/Object;
.source "InputManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa/controller/component/inputmanagercompat/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/papa/controller/component/inputmanagercompat/a;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/papa/controller/component/inputmanagercompat/b;

    invoke-direct {v0, p0}, Lcom/papa/controller/component/inputmanagercompat/b;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 3
    :cond_0
    new-instance p0, Lcom/papa/controller/component/inputmanagercompat/c;

    invoke-direct {p0}, Lcom/papa/controller/component/inputmanagercompat/c;-><init>()V

    return-object p0
.end method

.class public Lcom/xinzhu/overmind/client/hook/fixer/ContextFixer;
.super Ljava/lang/Object;
.source "ContextFixer.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ContextFixer"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fix(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :cond_0
    :try_start_0
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 2
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    return-void

    .line 3
    :cond_1
    new-instance v0, Lcom/xinzhu/haunted/android/app/k;

    invoke-direct {v0, p0}, Lcom/xinzhu/haunted/android/app/k;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/xinzhu/haunted/android/app/k;->t(Landroid/content/pm/PackageManager;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 6
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7
    :goto_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xinzhu/haunted/android/app/k;->q(Ljava/lang/String;)Z

    .line 8
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xinzhu/haunted/android/app/k;->r(Ljava/lang/String;)Z

    .line 9
    new-instance v1, Lcom/xinzhu/haunted/android/content/h;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/xinzhu/haunted/android/content/h;-><init>(Ljava/lang/Object;)V

    .line 10
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPkg()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/xinzhu/haunted/android/content/h;->l0(Ljava/lang/String;)Z

    .line 11
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->h()Z

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz p0, :cond_2

    .line 12
    :try_start_3
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/app/k;->e()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 13
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/app/k;->i()Ljava/lang/Object;

    move-result-object p0

    .line 14
    invoke-static {p0}, Lcom/xinzhu/overmind/client/hook/fixer/ContextFixer;->fixAttributionSource(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 15
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    :cond_2
    :goto_1
    invoke-static {}, Lcom/xinzhu/overmind/client/hook/d;->c()Lcom/xinzhu/overmind/client/hook/d;

    move-result-object p0

    const-class v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b;

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/d;->b(Ljava/lang/Class;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public static fixAttributionSource(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    :goto_0
    if-eqz p0, :cond_1

    .line 1
    :try_start_0
    new-instance v0, Lcom/xinzhu/haunted/android/content/a;

    invoke-direct {v0, p0}, Lcom/xinzhu/haunted/android/content/a;-><init>(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/content/a;->d()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    new-instance v1, Lcom/xinzhu/haunted/android/content/b;

    invoke-direct {v1, p0}, Lcom/xinzhu/haunted/android/content/b;-><init>(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPkg()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/xinzhu/haunted/android/content/b;->e(Ljava/lang/String;)Z

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostUid()I

    move-result p0

    if-lez p0, :cond_0

    .line 6
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostUid()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/xinzhu/haunted/android/content/b;->f(Ljava/lang/Integer;)Z

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/content/a;->c()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-void
.end method

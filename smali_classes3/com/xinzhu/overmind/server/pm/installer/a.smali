.class public Lcom/xinzhu/overmind/server/pm/installer/a;
.super Ljava/lang/Object;
.source "CopyExecutor.java"

# interfaces
.implements Lcom/xinzhu/overmind/server/pm/installer/d;


# static fields
.field private static final b:Ljava/lang/String; = "a"


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

.method private b(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;Ljava/io/File;Ljava/io/File;Lcom/xinzhu/overmind/entity/pm/InstallOption;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ps",
            "originApk",
            "targetApk",
            "option"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x2

    .line 1
    invoke-virtual {p4, p1}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->c(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    .line 2
    invoke-virtual {p4, p1}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p2, p3}, Lcom/xinzhu/overmind/utils/j;->r(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    invoke-static {p2, p3}, Lcom/xinzhu/overmind/utils/j;->b(Ljava/io/File;Ljava/io/File;)J

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p2, p3}, Lcom/xinzhu/overmind/utils/j;->b(Ljava/io/File;Ljava/io/File;)J

    :cond_1
    :goto_0
    return-void
.end method

.method private c(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ps",
            "apk"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/io/File;

    iget-object p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    iget-object p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    invoke-static {p1}, Lcom/xinzhu/overmind/a;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    sget-object v2, Lcom/xinzhu/overmind/a;->i:Ljava/lang/String;

    .line 3
    invoke-static {v2}, Lcom/xinzhu/overmind/a;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    invoke-static {p2, v0, v1}, Lcom/xinzhu/overmind/utils/p;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 5
    sget-object p1, Lcom/xinzhu/overmind/server/pm/installer/a;->b:Ljava/lang/String;

    const-string p2, "apk emptyAbi detected, copy native libs."

    invoke-static {p1, p2}, Lcom/xinzhu/overmind/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Ljava/io/File;

    iget-object v2, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    iget-object v2, v2, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    invoke-static {v2}, Lcom/xinzhu/overmind/a;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    sget-object v3, Lcom/xinzhu/overmind/a;->i:Ljava/lang/String;

    invoke-static {v3}, Lcom/xinzhu/overmind/a;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    invoke-static {p2, v0, v1}, Lcom/xinzhu/overmind/utils/p;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 9
    sget-object v0, Lcom/xinzhu/overmind/server/pm/installer/a;->b:Ljava/lang/String;

    const-string v1, "apk 32bit detected, copy native libs."

    invoke-static {v0, v1}, Lcom/xinzhu/overmind/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    new-instance v0, Ljava/io/File;

    iget-object p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    iget-object p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    invoke-static {p1}, Lcom/xinzhu/overmind/a;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    sget-object v1, Lcom/xinzhu/overmind/a;->k:Ljava/lang/String;

    invoke-static {v1}, Lcom/xinzhu/overmind/a;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 12
    invoke-static {p2, v0, p1}, Lcom/xinzhu/overmind/utils/p;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 13
    sget-object p1, Lcom/xinzhu/overmind/server/pm/installer/a;->b:Ljava/lang/String;

    const-string p2, "apk 64bit detected, copy native libs."

    invoke-static {p1, p2}, Lcom/xinzhu/overmind/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;Lcom/xinzhu/overmind/entity/pm/InstallOption;I)I
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ps",
            "option",
            "userId"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p3, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    iget-object p3, p3, Lcom/xinzhu/overmind/server/pm/MindPackage;->v:Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v1, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    iget-object v1, v1, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    invoke-static {v1}, Lcom/xinzhu/overmind/a;->j(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/server/pm/installer/a;->c(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;Ljava/io/File;)V

    .line 5
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/xinzhu/overmind/server/pm/installer/a;->b(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;Ljava/io/File;Ljava/io/File;Lcom/xinzhu/overmind/entity/pm/InstallOption;)V

    const/4 v0, 0x2

    .line 6
    invoke-virtual {p2, v0}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xinzhu/overmind/server/pm/MindPackage;->v:Ljava/lang/String;

    .line 8
    :cond_0
    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    iget-object v0, v0, Lcom/xinzhu/overmind/server/pm/MindPackage;->u:[Ljava/lang/String;

    invoke-static {v0}, Lcom/xinzhu/overmind/utils/d;->o([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 9
    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    iget-object v0, v0, Lcom/xinzhu/overmind/server/pm/MindPackage;->u:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 10
    invoke-static {p3, v4}, Lcom/xinzhu/overmind/a;->I(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 11
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 12
    invoke-static {p3, v4}, Lcom/xinzhu/overmind/a;->U(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 13
    :cond_1
    iget-object v6, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    iget-object v6, v6, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    invoke-static {v6, v4}, Lcom/xinzhu/overmind/a;->K(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 14
    invoke-direct {p0, p1, v5}, Lcom/xinzhu/overmind/server/pm/installer/a;->c(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;Ljava/io/File;)V

    .line 15
    invoke-direct {p0, p1, v5, v4, p2}, Lcom/xinzhu/overmind/server/pm/installer/a;->b(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;Ljava/io/File;Ljava/io/File;Lcom/xinzhu/overmind/entity/pm/InstallOption;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1

    :catchall_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.class public Lcom/xinzhu/overmind/a;
.super Ljava/lang/Object;
.source "MindEnvironment.java"


# static fields
.field private static final a:Ljava/lang/String; = "a"

.field private static b:Ljava/io/File;

.field private static c:Ljava/io/File;

.field private static d:Ljava/io/File;

.field private static e:Ljava/io/File;

.field private static f:Ljava/io/File;

.field private static g:Ljava/io/File;

.field public static h:Ljava/io/File;

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "virtual"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/xinzhu/overmind/a;->g:Ljava/io/File;

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/xinzhu/overmind/a;->l()Ljava/io/File;

    move-result-object v2

    const-string v3, "junit.jar"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/xinzhu/overmind/a;->h:Ljava/io/File;

    const-string v0, "armeabi-v7a"

    .line 3
    sput-object v0, Lcom/xinzhu/overmind/a;->i:Ljava/lang/String;

    const-string v0, "armeabi"

    .line 4
    sput-object v0, Lcom/xinzhu/overmind/a;->j:Ljava/lang/String;

    const-string v0, "arm64-v8a"

    .line 5
    sput-object v0, Lcom/xinzhu/overmind/a;->k:Ljava/lang/String;

    .line 6
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/xinzhu/overmind/a;->l:Landroid/util/ArrayMap;

    .line 7
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/xinzhu/overmind/a;->b:Ljava/io/File;

    .line 8
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/xinzhu/overmind/a;->b:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :catchall_0
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/xinzhu/overmind/a;->b:Ljava/io/File;

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMainPkg()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/xinzhu/overmind/a;->c:Ljava/io/File;

    .line 10
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/xinzhu/overmind/a;->c:Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/xinzhu/overmind/a;->d:Ljava/io/File;

    .line 11
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/xinzhu/overmind/a;->b:Ljava/io/File;

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getPluginPkg()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/xinzhu/overmind/a;->e:Ljava/io/File;

    .line 12
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/xinzhu/overmind/a;->e:Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/xinzhu/overmind/a;->f:Ljava/io/File;

    .line 13
    sget-object v0, Lcom/xinzhu/overmind/a;->l:Landroid/util/ArrayMap;

    sget-object v1, Lcom/xinzhu/overmind/a;->i:Ljava/lang/String;

    const-string v2, "arm"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lcom/xinzhu/overmind/a;->l:Landroid/util/ArrayMap;

    sget-object v1, Lcom/xinzhu/overmind/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lcom/xinzhu/overmind/a;->l:Landroid/util/ArrayMap;

    sget-object v1, Lcom/xinzhu/overmind/a;->k:Ljava/lang/String;

    const-string v2, "arm64"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Ljava/lang/String;I)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "userId"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Lcom/xinzhu/overmind/a;->B(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    const-string p1, "cache"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static B(Ljava/lang/String;I)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "userId"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/xinzhu/overmind/a;->E(I)Ljava/io/File;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string p0, "Android/data/%s"

    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static C(Ljava/lang/String;I)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "userId"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Lcom/xinzhu/overmind/a;->B(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    const-string p1, "files"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static D()Ljava/io/File;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/a;->g:Ljava/io/File;

    return-object v0
.end method

.method public static E(I)Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/xinzhu/overmind/a;->g:Ljava/io/File;

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const-string p0, "%d/"

    invoke-static {v2, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static F()Ljava/io/File;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/a;->g:Ljava/io/File;

    return-object v0
.end method

.method public static G(Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->v()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v3, 0x10

    new-array v3, v3, [B

    .line 3
    invoke-virtual {v0, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 4
    new-instance v0, Ljava/io/File;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v1

    const/16 p0, 0xa

    invoke-static {v3, p0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v2

    const-string p0, "/data/app/%s-%s/base.apk"

    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/io/File;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    const-string p0, "/data/app/%s-1/base.apk"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static H(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "abi"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/a;->l:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid abi "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static I(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseCodePath",
            "splitName"
        }
    .end annotation

    const/16 v0, 0x2f

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".apk"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static J(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/xinzhu/overmind/a;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const-string v1, "package.conf"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static K(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "splitName"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/xinzhu/overmind/a;->d:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data/app/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/split_"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".apk"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static L(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "splitName"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/xinzhu/overmind/a;->f:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data/app/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/split_"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".apk"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static M()Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/xinzhu/overmind/a;->d:Ljava/io/File;

    const-string v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static N()Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/xinzhu/overmind/a;->f:Ljava/io/File;

    const-string v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static O()Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/xinzhu/overmind/a;->M()Ljava/io/File;

    move-result-object v1

    const-string v2, "uid.conf"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static P(I)Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/xinzhu/overmind/a;->d:Ljava/io/File;

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const-string p0, "data/user/%d"

    invoke-static {v2, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static Q(I)Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/xinzhu/overmind/a;->f:Ljava/io/File;

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const-string p0, "data/user/%d"

    invoke-static {v2, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static R()Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/xinzhu/overmind/a;->M()Ljava/io/File;

    move-result-object v1

    const-string v2, "user.conf"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static S()Ljava/io/File;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/a;->d:Ljava/io/File;

    return-object v0
.end method

.method public static T()Ljava/io/File;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/a;->f:Ljava/io/File;

    return-object v0
.end method

.method public static U(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseCodePath",
            "splitName"
        }
    .end annotation

    const/16 v0, 0x2f

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/split_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".apk"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static V()Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/xinzhu/overmind/a;->M()Ljava/io/File;

    move-result-object v1

    const-string v2, "xposed-module.conf"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static W()V
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/a;->d:Ljava/io/File;

    invoke-static {v0}, Lcom/xinzhu/overmind/utils/j;->p(Ljava/io/File;)Z

    .line 2
    sget-object v0, Lcom/xinzhu/overmind/a;->g:Ljava/io/File;

    invoke-static {v0}, Lcom/xinzhu/overmind/utils/j;->p(Ljava/io/File;)Z

    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/a;->M()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/xinzhu/overmind/utils/j;->p(Ljava/io/File;)Z

    .line 4
    invoke-static {}, Lcom/xinzhu/overmind/a;->l()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/xinzhu/overmind/utils/j;->p(Ljava/io/File;)Z

    return-void
.end method

.method public static varargs a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "base",
            "segments"
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-nez p0, :cond_0

    .line 2
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 3
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p0, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static b(I)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/xinzhu/overmind/a;->P(I)Ljava/io/File;

    move-result-object p0

    const-string v1, "accounts"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static c(I)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/xinzhu/overmind/a;->Q(I)Ljava/io/File;

    move-result-object p0

    const-string v1, "accounts"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/xinzhu/overmind/a;->d:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data/app/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static e(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/xinzhu/overmind/a;->f:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data/app/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static f(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/xinzhu/overmind/a;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const-string v1, "lib"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static g(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/xinzhu/overmind/a;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const-string v1, "lib"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static h()Ljava/io/File;
    .locals 1

    const-string v0, ""

    .line 1
    invoke-static {v0}, Lcom/xinzhu/overmind/a;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static i()Ljava/io/File;
    .locals 1

    const-string v0, ""

    .line 1
    invoke-static {v0}, Lcom/xinzhu/overmind/a;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static j(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/xinzhu/overmind/a;->d:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data/app/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/base.apk"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static k(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/xinzhu/overmind/a;->f:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data/app/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/base.apk"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static l()Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/xinzhu/overmind/a;->d:Ljava/io/File;

    const-string v2, "cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static m()Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/xinzhu/overmind/a;->f:Ljava/io/File;

    const-string v2, "cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static n(Ljava/lang/String;I)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "userId"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Lcom/xinzhu/overmind/a;->r(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    const-string p1, "cache"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static o(Ljava/lang/String;I)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "userId"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Lcom/xinzhu/overmind/a;->s(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    const-string p1, "cache"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static p(Ljava/lang/String;I)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "userId"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Lcom/xinzhu/overmind/a;->r(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    const-string p1, "databases"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static q(Ljava/lang/String;I)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "userId"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Lcom/xinzhu/overmind/a;->s(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    const-string p1, "databases"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static r(Ljava/lang/String;I)Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "userId"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/xinzhu/overmind/a;->d:Ljava/io/File;

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object p0, v3, p1

    const-string p0, "data/user/%d/%s"

    invoke-static {v2, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static s(Ljava/lang/String;I)Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "userId"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/xinzhu/overmind/a;->f:Ljava/io/File;

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object p0, v3, p1

    const-string p0, "data/user/%d/%s"

    invoke-static {v2, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static t(Ljava/lang/String;I)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "userId"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Lcom/xinzhu/overmind/a;->r(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    const-string p1, "files"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static u(Ljava/lang/String;I)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "userId"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Lcom/xinzhu/overmind/a;->s(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    const-string p1, "files"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static v(Ljava/lang/String;I)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "userId"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Lcom/xinzhu/overmind/a;->r(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    const-string p1, "lib"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static w(Ljava/lang/String;I)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "userId"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Lcom/xinzhu/overmind/a;->s(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    const-string p1, "lib"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static x(Ljava/lang/String;I)Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "userId"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/xinzhu/overmind/a;->d:Ljava/io/File;

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object p0, v3, p1

    const-string p0, "data/user_de/%d/%s"

    invoke-static {v2, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static y(Ljava/lang/String;I)Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "userId"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/xinzhu/overmind/a;->f:Ljava/io/File;

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object p0, v3, p1

    const-string p0, "data/user_de/%d/%s"

    invoke-static {v2, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static z()Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/xinzhu/overmind/a;->M()Ljava/io/File;

    move-result-object v1

    const-string v2, "enabled-component.conf"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

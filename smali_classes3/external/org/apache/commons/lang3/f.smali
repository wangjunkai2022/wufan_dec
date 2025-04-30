.class public Lexternal/org/apache/commons/lang3/f;
.super Ljava/lang/Object;
.source "SystemUtils.java"


# static fields
.field public static final A:Ljava/lang/String;

.field public static final A0:Z

.field public static final B:Ljava/lang/String;

.field public static final C:Ljava/lang/String;

.field public static final D:Ljava/lang/String;

.field public static final E:Ljava/lang/String;

.field public static final F:Ljava/lang/String;

.field public static final G:Ljava/lang/String;

.field public static final H:Ljava/lang/String;

.field public static final I:Ljava/lang/String;

.field public static final J:Ljava/lang/String;

.field public static final K:Ljava/lang/String;

.field public static final L:Ljava/lang/String;

.field public static final M:Ljava/lang/String;

.field public static final N:Ljava/lang/String;

.field public static final O:Ljava/lang/String;

.field public static final P:Ljava/lang/String;

.field public static final Q:Ljava/lang/String;

.field public static final R:Ljava/lang/String;

.field public static final S:Ljava/lang/String;

.field public static final T:Ljava/lang/String;

.field public static final U:Ljava/lang/String;

.field public static final V:Ljava/lang/String;

.field public static final W:Z

.field public static final X:Z

.field public static final Y:Z

.field public static final Z:Z

.field private static final a:Ljava/lang/String; = "Windows"

.field public static final a0:Z

.field private static final b:Ljava/lang/String; = "user.home"

.field public static final b0:Z

.field private static final c:Ljava/lang/String; = "user.dir"

.field public static final c0:Z

.field private static final d:Ljava/lang/String; = "java.io.tmpdir"

.field public static final d0:Z

.field private static final e:Ljava/lang/String; = "java.home"

.field public static final e0:Z

.field public static final f:Ljava/lang/String;

.field public static final f0:Z

.field public static final g:Ljava/lang/String;

.field public static final g0:Z

.field public static final h:Ljava/lang/String;

.field public static final h0:Z

.field public static final i:Ljava/lang/String;

.field public static final i0:Z

.field public static final j:Ljava/lang/String;

.field public static final j0:Z

.field public static final k:Ljava/lang/String;

.field public static final k0:Z

.field public static final l:Ljava/lang/String;

.field public static final l0:Z

.field public static final m:Ljava/lang/String;

.field public static final m0:Z

.field public static final n:Ljava/lang/String;

.field public static final n0:Z

.field public static final o:Ljava/lang/String;

.field public static final o0:Z

.field public static final p:Ljava/lang/String;

.field public static final p0:Z

.field public static final q:Ljava/lang/String;

.field public static final q0:Z

.field public static final r:Ljava/lang/String;

.field public static final r0:Z

.field public static final s:Ljava/lang/String;

.field public static final s0:Z

.field public static final t:Ljava/lang/String;

.field public static final t0:Z

.field public static final u:Ljava/lang/String;

.field public static final u0:Z

.field public static final v:Ljava/lang/String;

.field public static final v0:Z

.field public static final w:Ljava/lang/String;

.field public static final w0:Z

.field public static final x:Ljava/lang/String;

.field public static final x0:Z

.field public static final y:Ljava/lang/String;

.field public static final y0:Z

.field private static final z:Lexternal/org/apache/commons/lang3/JavaVersion;

.field public static final z0:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "awt.toolkit"

    .line 1
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/f;->f:Ljava/lang/String;

    const-string v0, "file.encoding"

    .line 2
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/f;->g:Ljava/lang/String;

    const-string v0, "file.separator"

    .line 3
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/f;->h:Ljava/lang/String;

    const-string v0, "java.awt.fonts"

    .line 4
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/f;->i:Ljava/lang/String;

    const-string v0, "java.awt.graphicsenv"

    .line 5
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/f;->j:Ljava/lang/String;

    const-string v0, "java.awt.headless"

    .line 6
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/f;->k:Ljava/lang/String;

    const-string v0, "java.awt.printerjob"

    .line 7
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/f;->l:Ljava/lang/String;

    const-string v0, "java.class.path"

    .line 8
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/f;->m:Ljava/lang/String;

    const-string v0, "java.class.version"

    .line 9
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/f;->n:Ljava/lang/String;

    const-string v0, "java.compiler"

    .line 10
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/f;->o:Ljava/lang/String;

    const-string v0, "java.endorsed.dirs"

    .line 11
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/f;->p:Ljava/lang/String;

    const-string v0, "java.ext.dirs"

    .line 12
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/f;->q:Ljava/lang/String;

    const-string v0, "java.home"

    .line 13
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/f;->r:Ljava/lang/String;

    const-string v0, "java.io.tmpdir"

    .line 14
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/f;->s:Ljava/lang/String;

    const-string v0, "java.library.path"

    .line 15
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/f;->t:Ljava/lang/String;

    const-string v0, "java.runtime.name"

    .line 16
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/f;->u:Ljava/lang/String;

    const-string v0, "java.runtime.version"

    .line 17
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/f;->v:Ljava/lang/String;

    const-string v0, "java.specification.name"

    .line 18
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/f;->w:Ljava/lang/String;

    const-string v0, "java.specification.vendor"

    .line 19
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/f;->x:Ljava/lang/String;

    const-string v0, "java.specification.version"

    .line 20
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/f;->y:Ljava/lang/String;

    .line 21
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/JavaVersion;->get(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/JavaVersion;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/f;->z:Lexternal/org/apache/commons/lang3/JavaVersion;

    const-string v0, "java.util.prefs.PreferencesFactory"

    .line 22
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/f;->A:Ljava/lang/String;

    const-string v0, "java.vendor"

    .line 23
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/f;->B:Ljava/lang/String;

    const-string v0, "java.vendor.url"

    .line 24
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/f;->C:Ljava/lang/String;

    const-string v0, "java.version"

    .line 25
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/f;->D:Ljava/lang/String;

    const-string v0, "java.vm.info"

    .line 26
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/f;->E:Ljava/lang/String;

    const-string v0, "java.vm.name"

    .line 27
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/f;->F:Ljava/lang/String;

    const-string v0, "java.vm.specification.name"

    .line 28
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/f;->G:Ljava/lang/String;

    const-string v0, "java.vm.specification.vendor"

    .line 29
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/f;->H:Ljava/lang/String;

    const-string v0, "java.vm.specification.version"

    .line 30
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/f;->I:Ljava/lang/String;

    const-string v0, "java.vm.vendor"

    .line 31
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/f;->J:Ljava/lang/String;

    const-string v0, "java.vm.version"

    .line 32
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/f;->K:Ljava/lang/String;

    const-string v0, "line.separator"

    .line 33
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/f;->L:Ljava/lang/String;

    const-string v0, "os.arch"

    .line 34
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/f;->M:Ljava/lang/String;

    const-string v0, "os.name"

    .line 35
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/f;->N:Ljava/lang/String;

    const-string v0, "os.version"

    .line 36
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/f;->O:Ljava/lang/String;

    const-string v0, "path.separator"

    .line 37
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/f;->P:Ljava/lang/String;

    const-string v0, "user.country"

    .line 38
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "user.region"

    .line 39
    :cond_0
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/f;->Q:Ljava/lang/String;

    const-string v0, "user.dir"

    .line 40
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/f;->R:Ljava/lang/String;

    const-string v0, "user.home"

    .line 41
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/f;->S:Ljava/lang/String;

    const-string v0, "user.language"

    .line 42
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/f;->T:Ljava/lang/String;

    const-string v0, "user.name"

    .line 43
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/f;->U:Ljava/lang/String;

    const-string v0, "user.timezone"

    .line 44
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/f;->V:Ljava/lang/String;

    const-string v0, "1.1"

    .line 45
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->c(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lexternal/org/apache/commons/lang3/f;->W:Z

    const-string v0, "1.2"

    .line 46
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->c(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lexternal/org/apache/commons/lang3/f;->X:Z

    const-string v0, "1.3"

    .line 47
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->c(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lexternal/org/apache/commons/lang3/f;->Y:Z

    const-string v0, "1.4"

    .line 48
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->c(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lexternal/org/apache/commons/lang3/f;->Z:Z

    const-string v0, "1.5"

    .line 49
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->c(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lexternal/org/apache/commons/lang3/f;->a0:Z

    const-string v0, "1.6"

    .line 50
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->c(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lexternal/org/apache/commons/lang3/f;->b0:Z

    const-string v0, "1.7"

    .line 51
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->c(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lexternal/org/apache/commons/lang3/f;->c0:Z

    const-string v0, "AIX"

    .line 52
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->e(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lexternal/org/apache/commons/lang3/f;->d0:Z

    const-string v1, "HP-UX"

    .line 53
    invoke-static {v1}, Lexternal/org/apache/commons/lang3/f;->e(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lexternal/org/apache/commons/lang3/f;->e0:Z

    const-string v2, "Irix"

    .line 54
    invoke-static {v2}, Lexternal/org/apache/commons/lang3/f;->e(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lexternal/org/apache/commons/lang3/f;->f0:Z

    const-string v3, "Linux"

    .line 55
    invoke-static {v3}, Lexternal/org/apache/commons/lang3/f;->e(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_2

    const-string v3, "LINUX"

    invoke-static {v3}, Lexternal/org/apache/commons/lang3/f;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    :goto_1
    sput-boolean v3, Lexternal/org/apache/commons/lang3/f;->g0:Z

    const-string v6, "Mac"

    .line 56
    invoke-static {v6}, Lexternal/org/apache/commons/lang3/f;->e(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lexternal/org/apache/commons/lang3/f;->h0:Z

    const-string v6, "Mac OS X"

    .line 57
    invoke-static {v6}, Lexternal/org/apache/commons/lang3/f;->e(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lexternal/org/apache/commons/lang3/f;->i0:Z

    const-string v7, "FreeBSD"

    .line 58
    invoke-static {v7}, Lexternal/org/apache/commons/lang3/f;->e(Ljava/lang/String;)Z

    move-result v7

    sput-boolean v7, Lexternal/org/apache/commons/lang3/f;->j0:Z

    const-string v8, "OpenBSD"

    .line 59
    invoke-static {v8}, Lexternal/org/apache/commons/lang3/f;->e(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lexternal/org/apache/commons/lang3/f;->k0:Z

    const-string v9, "NetBSD"

    .line 60
    invoke-static {v9}, Lexternal/org/apache/commons/lang3/f;->e(Ljava/lang/String;)Z

    move-result v9

    sput-boolean v9, Lexternal/org/apache/commons/lang3/f;->l0:Z

    const-string v10, "OS/2"

    .line 61
    invoke-static {v10}, Lexternal/org/apache/commons/lang3/f;->e(Ljava/lang/String;)Z

    move-result v10

    sput-boolean v10, Lexternal/org/apache/commons/lang3/f;->m0:Z

    const-string v10, "Solaris"

    .line 62
    invoke-static {v10}, Lexternal/org/apache/commons/lang3/f;->e(Ljava/lang/String;)Z

    move-result v10

    sput-boolean v10, Lexternal/org/apache/commons/lang3/f;->n0:Z

    const-string v11, "SunOS"

    .line 63
    invoke-static {v11}, Lexternal/org/apache/commons/lang3/f;->e(Ljava/lang/String;)Z

    move-result v11

    sput-boolean v11, Lexternal/org/apache/commons/lang3/f;->o0:Z

    if-nez v0, :cond_3

    if-nez v1, :cond_3

    if-nez v2, :cond_3

    if-nez v3, :cond_3

    if-nez v6, :cond_3

    if-nez v10, :cond_3

    if-nez v11, :cond_3

    if-nez v7, :cond_3

    if-nez v8, :cond_3

    if-eqz v9, :cond_4

    :cond_3
    const/4 v4, 0x1

    .line 64
    :cond_4
    sput-boolean v4, Lexternal/org/apache/commons/lang3/f;->p0:Z

    const-string v0, "Windows"

    .line 65
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/f;->e(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lexternal/org/apache/commons/lang3/f;->q0:Z

    const-string v1, "5.0"

    .line 66
    invoke-static {v0, v1}, Lexternal/org/apache/commons/lang3/f;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lexternal/org/apache/commons/lang3/f;->r0:Z

    const-string v1, "5.2"

    .line 67
    invoke-static {v0, v1}, Lexternal/org/apache/commons/lang3/f;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lexternal/org/apache/commons/lang3/f;->s0:Z

    const-string v1, "Windows Server 2008"

    const-string v2, "6.1"

    .line 68
    invoke-static {v1, v2}, Lexternal/org/apache/commons/lang3/f;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lexternal/org/apache/commons/lang3/f;->t0:Z

    const-string v1, "Windows 9"

    const-string v3, "4.0"

    .line 69
    invoke-static {v1, v3}, Lexternal/org/apache/commons/lang3/f;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lexternal/org/apache/commons/lang3/f;->u0:Z

    const-string v3, "4.1"

    .line 70
    invoke-static {v1, v3}, Lexternal/org/apache/commons/lang3/f;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lexternal/org/apache/commons/lang3/f;->v0:Z

    const-string v1, "4.9"

    .line 71
    invoke-static {v0, v1}, Lexternal/org/apache/commons/lang3/f;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lexternal/org/apache/commons/lang3/f;->w0:Z

    const-string v1, "Windows NT"

    .line 72
    invoke-static {v1}, Lexternal/org/apache/commons/lang3/f;->e(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lexternal/org/apache/commons/lang3/f;->x0:Z

    const-string v1, "5.1"

    .line 73
    invoke-static {v0, v1}, Lexternal/org/apache/commons/lang3/f;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lexternal/org/apache/commons/lang3/f;->y0:Z

    const-string v1, "6.0"

    .line 74
    invoke-static {v0, v1}, Lexternal/org/apache/commons/lang3/f;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lexternal/org/apache/commons/lang3/f;->z0:Z

    .line 75
    invoke-static {v0, v2}, Lexternal/org/apache/commons/lang3/f;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lexternal/org/apache/commons/lang3/f;->A0:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/io/File;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "java.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static b()Ljava/io/File;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "java.io.tmpdir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "versionPrefix"
        }
    .end annotation

    .line 1
    sget-object v0, Lexternal/org/apache/commons/lang3/f;->y:Ljava/lang/String;

    invoke-static {v0, p0}, Lexternal/org/apache/commons/lang3/f;->k(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "osNamePrefix",
            "osVersionPrefix"
        }
    .end annotation

    .line 1
    sget-object v0, Lexternal/org/apache/commons/lang3/f;->N:Ljava/lang/String;

    sget-object v1, Lexternal/org/apache/commons/lang3/f;->O:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lexternal/org/apache/commons/lang3/f;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static e(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "osNamePrefix"
        }
    .end annotation

    .line 1
    sget-object v0, Lexternal/org/apache/commons/lang3/f;->N:Ljava/lang/String;

    invoke-static {v0, p0}, Lexternal/org/apache/commons/lang3/f;->m(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "property"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 2
    :catch_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caught a SecurityException reading the system property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'; the SystemUtils property value will default to null."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static g()Ljava/io/File;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "user.dir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static h()Ljava/io/File;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "user.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static i()Z
    .locals 2

    .line 1
    sget-object v0, Lexternal/org/apache/commons/lang3/f;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static j(Lexternal/org/apache/commons/lang3/JavaVersion;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requiredVersion"
        }
    .end annotation

    .line 1
    sget-object v0, Lexternal/org/apache/commons/lang3/f;->z:Lexternal/org/apache/commons/lang3/JavaVersion;

    invoke-virtual {v0, p0}, Lexternal/org/apache/commons/lang3/JavaVersion;->atLeast(Lexternal/org/apache/commons/lang3/JavaVersion;)Z

    move-result p0

    return p0
.end method

.method static k(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "version",
            "versionPrefix"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "osName",
            "osVersion",
            "osNamePrefix",
            "osVersionPrefix"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method static m(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "osName",
            "osNamePrefix"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

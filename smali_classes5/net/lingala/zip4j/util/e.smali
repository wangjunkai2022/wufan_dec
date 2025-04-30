.class public interface abstract Lnet/lingala/zip4j/util/e;
.super Ljava/lang/Object;
.source "InternalZipConstants.java"


# static fields
.field public static final A:I = 0xc

.field public static final A0:Ljava/lang/String; = "UTF8"

.field public static final B:I = 0x4

.field public static final B0:Ljava/lang/String; = "Cp850"

.field public static final C:I = 0x6

.field public static final C0:Ljava/lang/String; = "windows-1254"

.field public static final D:I = 0x8

.field public static final D0:Ljava/lang/String;

.field public static final E:I = 0xa

.field public static final E0:Ljava/lang/String;

.field public static final F:I = 0xc

.field public static final F0:Ljava/lang/String; = "/"

.field public static final G:I = 0x10

.field public static final G0:Ljava/lang/String; = "Zip4j"

.field public static final H:I = 0x14

.field public static final H0:I = 0xffff

.field public static final I:I = 0x18

.field public static final J:I = 0x1c

.field public static final K:I = 0x1e

.field public static final L:I = 0x20

.field public static final M:I = 0x22

.field public static final N:I = 0x24

.field public static final O:I = 0x26

.field public static final P:I = 0x2a

.field public static final Q:I = 0x8

.field public static final R:I = 0xa

.field public static final S:I = 0xc

.field public static final T:I = 0x10

.field public static final U:I = 0x14

.field public static final V:I = 0xc

.field public static final W:I = 0xa

.field public static final X:I = 0x10

.field public static final Y:I = 0x10000

.field public static final Z:J = 0xffffffffL

.field public static final a:J = 0x4034b50L

.field public static final a0:Ljava/lang/String; = "offsetCentralDir"

.field public static final b:J = 0x8074b50L

.field public static final b0:Ljava/lang/String; = "1.3.2"

.field public static final c:J = 0x2014b50L

.field public static final c0:I = 0x1

.field public static final d:J = 0x6054b50L

.field public static final d0:I = 0x2

.field public static final e:J = 0x5054b50L

.field public static final e0:Ljava/lang/String; = "rw"

.field public static final f:J = 0x8064b50L

.field public static final f0:Ljava/lang/String; = "r"

.field public static final g:J = 0x8074b50L

.field public static final g0:I = 0x1000

.field public static final h:J = 0x7064b50L

.field public static final h0:I = 0x0

.field public static final i:J = 0x6064b50L

.field public static final i0:I = 0x1

.field public static final j:I = 0x1

.field public static final j0:I = 0x2

.field public static final k:I = 0x9901

.field public static final k0:I = 0x20

.field public static final l:I = 0x1e

.field public static final l0:I = 0x3

.field public static final m:I = 0x10

.field public static final m0:I = 0x21

.field public static final n:I = 0x2e

.field public static final n0:I = 0x22

.field public static final o:I = 0x16

.field public static final o0:I = 0x23

.field public static final p:I = 0x4

.field public static final p0:I = 0x26

.field public static final q:I = 0x6

.field public static final q0:I = 0x10

.field public static final r:I = 0x8

.field public static final r0:I = 0x12

.field public static final s:I = 0xa

.field public static final s0:I = 0x30

.field public static final t:I = 0xe

.field public static final t0:I = 0x32

.field public static final u:I = 0x12

.field public static final u0:I = 0xe

.field public static final v:I = 0x16

.field public static final v0:I = 0x12

.field public static final w:I = 0x1a

.field public static final w0:I = 0x16

.field public static final x:I = 0x1c

.field public static final x0:I = 0x1

.field public static final y:I = 0x4

.field public static final y0:I = 0x2

.field public static final z:I = 0x8

.field public static final z0:I = 0x800


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "file.encoding"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/lingala/zip4j/util/e;->D0:Ljava/lang/String;

    const-string v0, "file.separator"

    .line 2
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/lingala/zip4j/util/e;->E0:Ljava/lang/String;

    return-void
.end method
